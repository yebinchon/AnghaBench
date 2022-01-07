; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_prepare_dir_for_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_prepare_dir_for_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_dir_lookup_result = type { %struct.buffer_head*, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [50 x i8] c"getting ready to insert namelen %d into dir %llu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_prepare_dir_for_insert(%struct.ocfs2_super* %0, %struct.inode* %1, %struct.buffer_head* %2, i8* %3, i32 %4, %struct.ocfs2_dir_lookup_result* %5) #0 {
  %7 = alloca %struct.ocfs2_super*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_dir_lookup_result*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.buffer_head*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.ocfs2_dir_lookup_result* %5, %struct.ocfs2_dir_lookup_result** %12, align 8
  store i32 1, i32* %14, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  %16 = load i32, i32* %11, align 4
  %17 = load %struct.inode*, %struct.inode** %8, align 8
  %18 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %16, i64 %20)
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = call i32 @mlog_errno(i32 %27)
  br label %123

29:                                               ; preds = %6
  %30 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %31 = call i64 @ocfs2_supports_indexed_dirs(%struct.ocfs2_super* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load %struct.inode*, %struct.inode** %8, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %12, align 8
  %38 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %37, i32 0, i32 1
  %39 = call i32 @ocfs2_dx_dir_name_hash(%struct.inode* %34, i8* %35, i32 %36, i32* %38)
  br label %40

40:                                               ; preds = %33, %29
  %41 = load %struct.inode*, %struct.inode** %8, align 8
  %42 = call i64 @ocfs2_dir_indexed(%struct.inode* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = load %struct.inode*, %struct.inode** %8, align 8
  %46 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %12, align 8
  %50 = call i32 @ocfs2_prepare_dx_dir_for_insert(%struct.inode* %45, %struct.buffer_head* %46, i8* %47, i32 %48, %struct.ocfs2_dir_lookup_result* %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @mlog_errno(i32 %54)
  br label %56

56:                                               ; preds = %53, %44
  br label %123

57:                                               ; preds = %40
  %58 = load %struct.inode*, %struct.inode** %8, align 8
  %59 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %58)
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %57
  %66 = load %struct.inode*, %struct.inode** %8, align 8
  %67 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @ocfs2_find_dir_space_id(%struct.inode* %66, %struct.buffer_head* %67, i8* %68, i32 %69, %struct.buffer_head** %15, i32* %14)
  store i32 %70, i32* %13, align 4
  br label %76

71:                                               ; preds = %57
  %72 = load %struct.inode*, %struct.inode** %8, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @ocfs2_find_dir_space_el(%struct.inode* %72, i8* %73, i32 %74, %struct.buffer_head** %15)
  store i32 %75, i32* %13, align 4
  br label %76

76:                                               ; preds = %71, %65
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %76
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @ENOSPC, align 4
  %82 = sub nsw i32 0, %81
  %83 = icmp ne i32 %80, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @mlog_errno(i32 %85)
  br label %123

87:                                               ; preds = %79, %76
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* @ENOSPC, align 4
  %90 = sub nsw i32 0, %89
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %92, label %119

92:                                               ; preds = %87
  %93 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %94 = ptrtoint %struct.buffer_head* %93 to i32
  %95 = call i32 @BUG_ON(i32 %94)
  %96 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %97 = load %struct.inode*, %struct.inode** %8, align 8
  %98 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %99 = load i32, i32* %14, align 4
  %100 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %12, align 8
  %101 = call i32 @ocfs2_extend_dir(%struct.ocfs2_super* %96, %struct.inode* %97, %struct.buffer_head* %98, i32 %99, %struct.ocfs2_dir_lookup_result* %100, %struct.buffer_head** %15)
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %92
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* @ENOSPC, align 4
  %107 = sub nsw i32 0, %106
  %108 = icmp ne i32 %105, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @mlog_errno(i32 %110)
  br label %112

112:                                              ; preds = %109, %104
  br label %123

113:                                              ; preds = %92
  %114 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %115 = icmp ne %struct.buffer_head* %114, null
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = call i32 @BUG_ON(i32 %117)
  br label %119

119:                                              ; preds = %113, %87
  %120 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %121 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %12, align 8
  %122 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %121, i32 0, i32 0
  store %struct.buffer_head* %120, %struct.buffer_head** %122, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  br label %123

123:                                              ; preds = %119, %112, %84, %56, %24
  %124 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %125 = call i32 @brelse(%struct.buffer_head* %124)
  %126 = load i32, i32* %13, align 4
  ret i32 %126
}

declare dso_local i32 @mlog(i32, i8*, i32, i64) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @ocfs2_supports_indexed_dirs(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_dx_dir_name_hash(%struct.inode*, i8*, i32, i32*) #1

declare dso_local i64 @ocfs2_dir_indexed(%struct.inode*) #1

declare dso_local i32 @ocfs2_prepare_dx_dir_for_insert(%struct.inode*, %struct.buffer_head*, i8*, i32, %struct.ocfs2_dir_lookup_result*) #1

declare dso_local i32 @ocfs2_find_dir_space_id(%struct.inode*, %struct.buffer_head*, i8*, i32, %struct.buffer_head**, i32*) #1

declare dso_local i32 @ocfs2_find_dir_space_el(%struct.inode*, i8*, i32, %struct.buffer_head**) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_extend_dir(%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*, i32, %struct.ocfs2_dir_lookup_result*, %struct.buffer_head**) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
