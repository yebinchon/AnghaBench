; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_get_rec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_get_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec*, i32, i64 }
%struct.ocfs2_extent_rec = type { i32, i32, i32 }
%struct.buffer_head = type { i64, i64 }
%struct.ocfs2_extent_block = type { %struct.ocfs2_extent_list }

@.str = private unnamed_addr constant [60 x i8] c"Inode %lu has non zero tree depth in xattr tree block %llu\0A\00", align 1
@EROFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Inode %lu has bad extent record (%u, %u, 0) in xattr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i64*, i32*, i32*, %struct.ocfs2_extent_list*)* @ocfs2_xattr_get_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_get_rec(%struct.inode* %0, i32 %1, i64* %2, i32* %3, i32* %4, %struct.ocfs2_extent_list* %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ocfs2_extent_list*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca %struct.ocfs2_extent_block*, align 8
  %17 = alloca %struct.ocfs2_extent_rec*, align 8
  %18 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.ocfs2_extent_list* %5, %struct.ocfs2_extent_list** %12, align 8
  store i32 0, i32* %13, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  store %struct.ocfs2_extent_rec* null, %struct.ocfs2_extent_rec** %17, align 8
  store i64 0, i64* %18, align 8
  %19 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %12, align 8
  %20 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %59

23:                                               ; preds = %6
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = call i32 @INODE_CACHE(%struct.inode* %24)
  %26 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %12, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @ocfs2_find_leaf(i32 %25, %struct.ocfs2_extent_list* %26, i32 %27, %struct.buffer_head** %15)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @mlog_errno(i32 %32)
  br label %131

34:                                               ; preds = %23
  %35 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %36 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %38, %struct.ocfs2_extent_block** %16, align 8
  %39 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %16, align 8
  %40 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %39, i32 0, i32 0
  store %struct.ocfs2_extent_list* %40, %struct.ocfs2_extent_list** %12, align 8
  %41 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %12, align 8
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
  %52 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %53 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 (i32, i8*, i32, i64, ...) @ocfs2_error(i32 %48, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %51, i64 %54)
  %56 = load i32, i32* @EROFS, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %13, align 4
  br label %131

58:                                               ; preds = %34
  br label %59

59:                                               ; preds = %58, %6
  %60 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %12, align 8
  %61 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @le16_to_cpu(i32 %62)
  %64 = sub nsw i32 %63, 1
  store i32 %64, i32* %14, align 4
  br label %65

65:                                               ; preds = %87, %59
  %66 = load i32, i32* %14, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %90

68:                                               ; preds = %65
  %69 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %12, align 8
  %70 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %69, i32 0, i32 0
  %71 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %70, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %71, i64 %73
  store %struct.ocfs2_extent_rec* %74, %struct.ocfs2_extent_rec** %17, align 8
  %75 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %76 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @le32_to_cpu(i32 %77)
  %79 = load i32, i32* %8, align 4
  %80 = icmp sle i32 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %68
  %82 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %83 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @le64_to_cpu(i32 %84)
  store i64 %85, i64* %18, align 8
  br label %90

86:                                               ; preds = %68
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %14, align 4
  br label %65

90:                                               ; preds = %81, %65
  %91 = load i64, i64* %18, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %111, label %93

93:                                               ; preds = %90
  %94 = load %struct.inode*, %struct.inode** %7, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.inode*, %struct.inode** %7, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %101 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @le32_to_cpu(i32 %102)
  %104 = sext i32 %103 to i64
  %105 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %12, align 8
  %106 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %107 = call i32 @ocfs2_rec_clusters(%struct.ocfs2_extent_list* %105, %struct.ocfs2_extent_rec* %106)
  %108 = call i32 (i32, i8*, i32, i64, ...) @ocfs2_error(i32 %96, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %99, i64 %104, i32 %107)
  %109 = load i32, i32* @EROFS, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %13, align 4
  br label %131

111:                                              ; preds = %90
  %112 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %113 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @le64_to_cpu(i32 %114)
  %116 = load i64*, i64** %9, align 8
  store i64 %115, i64* %116, align 8
  %117 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %118 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @le16_to_cpu(i32 %119)
  %121 = load i32*, i32** %11, align 8
  store i32 %120, i32* %121, align 4
  %122 = load i32*, i32** %10, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %130

124:                                              ; preds = %111
  %125 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %126 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @le32_to_cpu(i32 %127)
  %129 = load i32*, i32** %10, align 8
  store i32 %128, i32* %129, align 4
  br label %130

130:                                              ; preds = %124, %111
  br label %131

131:                                              ; preds = %130, %93, %45, %31
  %132 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %133 = call i32 @brelse(%struct.buffer_head* %132)
  %134 = load i32, i32* %13, align 4
  ret i32 %134
}

declare dso_local i32 @ocfs2_find_leaf(i32, %struct.ocfs2_extent_list*, i32, %struct.buffer_head**) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_error(i32, i8*, i32, i64, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @ocfs2_rec_clusters(%struct.ocfs2_extent_list*, %struct.ocfs2_extent_rec*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
