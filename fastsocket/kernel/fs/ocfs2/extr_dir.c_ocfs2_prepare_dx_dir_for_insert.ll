; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_prepare_dx_dir_for_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_prepare_dx_dir_for_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dir_lookup_result = type { %struct.buffer_head*, i32*, %struct.buffer_head* }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_dinode = type { i32 }
%struct.ocfs2_dx_root_block = type { i32 }

@OCFS2_DX_ENTRIES_MAX = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, i8*, i32, %struct.ocfs2_dir_lookup_result*)* @ocfs2_prepare_dx_dir_for_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_prepare_dx_dir_for_insert(%struct.inode* %0, %struct.buffer_head* %1, i8* %2, i32 %3, %struct.ocfs2_dir_lookup_result* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ocfs2_dir_lookup_result*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ocfs2_super*, align 8
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca %struct.ocfs2_dinode*, align 8
  %17 = alloca %struct.ocfs2_dx_root_block*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.ocfs2_dir_lookup_result* %4, %struct.ocfs2_dir_lookup_result** %10, align 8
  store i32 1, i32* %12, align 4
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.ocfs2_super* @OCFS2_SB(i32 %20)
  store %struct.ocfs2_super* %21, %struct.ocfs2_super** %13, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %14, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  %22 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %23 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %25, %struct.ocfs2_dinode** %16, align 8
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %16, align 8
  %28 = call i32 @ocfs2_read_dx_root(%struct.inode* %26, %struct.ocfs2_dinode* %27, %struct.buffer_head** %14)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %5
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @mlog_errno(i32 %32)
  br label %127

34:                                               ; preds = %5
  %35 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %36 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.ocfs2_dx_root_block*
  store %struct.ocfs2_dx_root_block* %38, %struct.ocfs2_dx_root_block** %17, align 8
  %39 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %17, align 8
  %40 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @le32_to_cpu(i32 %41)
  %43 = load i64, i64* @OCFS2_DX_ENTRIES_MAX, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %34
  %46 = load i32, i32* @ENOSPC, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @mlog_errno(i32 %48)
  br label %127

50:                                               ; preds = %34
  %51 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %17, align 8
  %52 = call i64 @ocfs2_dx_root_inline(%struct.ocfs2_dx_root_block* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %50
  %55 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %56 = call i32 @ocfs2_inline_dx_has_space(%struct.buffer_head* %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %85

60:                                               ; preds = %54
  %61 = load %struct.inode*, %struct.inode** %6, align 8
  %62 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %63 = call i32 @ocfs2_expand_inline_dx_root(%struct.inode* %61, %struct.buffer_head* %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @mlog_errno(i32 %67)
  br label %127

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69, %50
  %71 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %74 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %10, align 8
  %78 = call i32 @ocfs2_find_dir_space_dx(%struct.ocfs2_super* %71, %struct.inode* %72, %struct.buffer_head* %73, %struct.buffer_head* %74, i8* %75, i32 %76, %struct.ocfs2_dir_lookup_result* %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %70
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @mlog_errno(i32 %82)
  br label %127

84:                                               ; preds = %70
  br label %85

85:                                               ; preds = %84, %59
  %86 = load %struct.inode*, %struct.inode** %6, align 8
  %87 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %10, align 8
  %90 = call i32 @ocfs2_search_dx_free_list(%struct.inode* %86, %struct.buffer_head* %87, i32 %88, %struct.ocfs2_dir_lookup_result* %89)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %85
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @ENOSPC, align 4
  %96 = sub nsw i32 0, %95
  %97 = icmp ne i32 %94, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @mlog_errno(i32 %99)
  br label %127

101:                                              ; preds = %93, %85
  %102 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %103 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %10, align 8
  %104 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %103, i32 0, i32 2
  store %struct.buffer_head* %102, %struct.buffer_head** %104, align 8
  store i32 0, i32* %12, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @ENOSPC, align 4
  %107 = sub nsw i32 0, %106
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %109, label %126

109:                                              ; preds = %101
  %110 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %111 = load %struct.inode*, %struct.inode** %6, align 8
  %112 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %113 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %10, align 8
  %114 = call i32 @ocfs2_extend_dir(%struct.ocfs2_super* %110, %struct.inode* %111, %struct.buffer_head* %112, i32 1, %struct.ocfs2_dir_lookup_result* %113, %struct.buffer_head** %15)
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %109
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @mlog_errno(i32 %118)
  br label %127

120:                                              ; preds = %109
  %121 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %10, align 8
  %122 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %121, i32 0, i32 1
  store i32* null, i32** %122, align 8
  %123 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %124 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %10, align 8
  %125 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %124, i32 0, i32 0
  store %struct.buffer_head* %123, %struct.buffer_head** %125, align 8
  br label %126

126:                                              ; preds = %120, %101
  br label %127

127:                                              ; preds = %126, %117, %98, %81, %66, %45, %31
  %128 = load i32, i32* %12, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %132 = call i32 @brelse(%struct.buffer_head* %131)
  br label %133

133:                                              ; preds = %130, %127
  %134 = load i32, i32* %11, align 4
  ret i32 %134
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_read_dx_root(%struct.inode*, %struct.ocfs2_dinode*, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @ocfs2_dx_root_inline(%struct.ocfs2_dx_root_block*) #1

declare dso_local i32 @ocfs2_inline_dx_has_space(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_expand_inline_dx_root(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_find_dir_space_dx(%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*, %struct.buffer_head*, i8*, i32, %struct.ocfs2_dir_lookup_result*) #1

declare dso_local i32 @ocfs2_search_dx_free_list(%struct.inode*, %struct.buffer_head*, i32, %struct.ocfs2_dir_lookup_result*) #1

declare dso_local i32 @ocfs2_extend_dir(%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*, i32, %struct.ocfs2_dir_lookup_result*, %struct.buffer_head**) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
