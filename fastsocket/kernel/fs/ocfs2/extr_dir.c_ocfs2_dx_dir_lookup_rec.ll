; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_dx_dir_lookup_rec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_dx_dir_lookup_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec*, i32, i64 }
%struct.ocfs2_extent_rec = type { i32, i32, i32 }
%struct.buffer_head = type { i64, i64 }
%struct.ocfs2_extent_block = type { %struct.ocfs2_extent_list }

@.str = private unnamed_addr constant [60 x i8] c"Inode %lu has non zero tree depth in btree tree block %llu\0A\00", align 1
@EROFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Inode %lu has bad extent record (%u, %u, 0) in btree\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_extent_list*, i32, i32*, i32*, i32*)* @ocfs2_dx_dir_lookup_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_dx_dir_lookup_rec(%struct.inode* %0, %struct.ocfs2_extent_list* %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ocfs2_extent_list*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.buffer_head*, align 8
  %17 = alloca %struct.ocfs2_extent_block*, align 8
  %18 = alloca %struct.ocfs2_extent_rec*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.ocfs2_extent_list* %1, %struct.ocfs2_extent_list** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %13, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %16, align 8
  store %struct.ocfs2_extent_rec* null, %struct.ocfs2_extent_rec** %18, align 8
  %19 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %8, align 8
  %20 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %59

23:                                               ; preds = %6
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = call i32 @INODE_CACHE(%struct.inode* %24)
  %26 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @ocfs2_find_leaf(i32 %25, %struct.ocfs2_extent_list* %26, i32 %27, %struct.buffer_head** %16)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @mlog_errno(i32 %32)
  br label %135

34:                                               ; preds = %23
  %35 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %36 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %38, %struct.ocfs2_extent_block** %17, align 8
  %39 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %17, align 8
  %40 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %39, i32 0, i32 0
  store %struct.ocfs2_extent_list* %40, %struct.ocfs2_extent_list** %8, align 8
  %41 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %8, align 8
  %42 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %34
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %53 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 (i32, i8*, i32, i64, ...) @ocfs2_error(i32 %48, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %51, i64 %54)
  %56 = load i32, i32* @EROFS, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %13, align 4
  br label %135

58:                                               ; preds = %34
  br label %59

59:                                               ; preds = %58, %6
  store i32 0, i32* %15, align 4
  %60 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %8, align 8
  %61 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @le16_to_cpu(i32 %62)
  %64 = sub nsw i32 %63, 1
  store i32 %64, i32* %14, align 4
  br label %65

65:                                               ; preds = %83, %59
  %66 = load i32, i32* %14, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %65
  %69 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %8, align 8
  %70 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %69, i32 0, i32 0
  %71 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %70, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %71, i64 %73
  store %struct.ocfs2_extent_rec* %74, %struct.ocfs2_extent_rec** %18, align 8
  %75 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %18, align 8
  %76 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @le32_to_cpu(i32 %77)
  %79 = load i32, i32* %9, align 4
  %80 = icmp sle i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %68
  store i32 1, i32* %15, align 4
  br label %86

82:                                               ; preds = %68
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %14, align 4
  br label %65

86:                                               ; preds = %81, %65
  %87 = load i32, i32* %15, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %107, label %89

89:                                               ; preds = %86
  %90 = load %struct.inode*, %struct.inode** %7, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.inode*, %struct.inode** %7, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %18, align 8
  %97 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @le32_to_cpu(i32 %98)
  %100 = sext i32 %99 to i64
  %101 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %8, align 8
  %102 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %18, align 8
  %103 = call i32 @ocfs2_rec_clusters(%struct.ocfs2_extent_list* %101, %struct.ocfs2_extent_rec* %102)
  %104 = call i32 (i32, i8*, i32, i64, ...) @ocfs2_error(i32 %92, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %95, i64 %100, i32 %103)
  %105 = load i32, i32* @EROFS, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %13, align 4
  br label %135

107:                                              ; preds = %86
  %108 = load i32*, i32** %11, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %18, align 8
  %112 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @le64_to_cpu(i32 %113)
  %115 = load i32*, i32** %11, align 8
  store i32 %114, i32* %115, align 4
  br label %116

116:                                              ; preds = %110, %107
  %117 = load i32*, i32** %10, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %18, align 8
  %121 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @le32_to_cpu(i32 %122)
  %124 = load i32*, i32** %10, align 8
  store i32 %123, i32* %124, align 4
  br label %125

125:                                              ; preds = %119, %116
  %126 = load i32*, i32** %12, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %18, align 8
  %130 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @le16_to_cpu(i32 %131)
  %133 = load i32*, i32** %12, align 8
  store i32 %132, i32* %133, align 4
  br label %134

134:                                              ; preds = %128, %125
  br label %135

135:                                              ; preds = %134, %89, %45, %31
  %136 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %137 = call i32 @brelse(%struct.buffer_head* %136)
  %138 = load i32, i32* %13, align 4
  ret i32 %138
}

declare dso_local i32 @ocfs2_find_leaf(i32, %struct.ocfs2_extent_list*, i32, %struct.buffer_head**) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_error(i32, i8*, i32, i64, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_rec_clusters(%struct.ocfs2_extent_list*, %struct.ocfs2_extent_rec*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
