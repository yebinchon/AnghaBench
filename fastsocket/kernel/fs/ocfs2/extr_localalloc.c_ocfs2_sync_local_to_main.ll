; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_localalloc.c_ocfs2_sync_local_to_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_localalloc.c_ocfs2_sync_local_to_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_dinode = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_local_alloc = type { i8*, i32 }

@.str = private unnamed_addr constant [23 x i8] c"total = %u, used = %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"nothing to sync!\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"all bits were taken!\0A\00", align 1
@.str.3 = private unnamed_addr constant [84 x i8] c"freeing %u bits starting at local alloc bit %u (la_start_blk = %llu, blkno = %llu)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, i32*, %struct.ocfs2_dinode*, %struct.inode*, %struct.buffer_head*)* @ocfs2_sync_local_to_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_sync_local_to_main(%struct.ocfs2_super* %0, i32* %1, %struct.ocfs2_dinode* %2, %struct.inode* %3, %struct.buffer_head* %4) #0 {
  %6 = alloca %struct.ocfs2_super*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ocfs2_dinode*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.ocfs2_local_alloc*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.ocfs2_dinode* %2, %struct.ocfs2_dinode** %8, align 8
  store %struct.inode* %3, %struct.inode** %9, align 8
  store %struct.buffer_head* %4, %struct.buffer_head** %10, align 8
  store i32 0, i32* %11, align 4
  %20 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %21 = call %struct.ocfs2_local_alloc* @OCFS2_LOCAL_ALLOC(%struct.ocfs2_dinode* %20)
  store %struct.ocfs2_local_alloc* %21, %struct.ocfs2_local_alloc** %19, align 8
  %22 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %23 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le32_to_cpu(i32 %26)
  %28 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %29 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le32_to_cpu(i32 %32)
  %34 = call i32 @mlog_entry(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %33)
  %35 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %36 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %5
  %42 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %137

43:                                               ; preds = %5
  %44 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %45 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le32_to_cpu(i32 %48)
  %50 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %51 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le32_to_cpu(i32 %54)
  %56 = icmp eq i32 %49, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %43
  %58 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %137

59:                                               ; preds = %43
  %60 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %61 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ocfs2_local_alloc*, %struct.ocfs2_local_alloc** %19, align 8
  %64 = getelementptr inbounds %struct.ocfs2_local_alloc, %struct.ocfs2_local_alloc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @le32_to_cpu(i32 %65)
  %67 = call i64 @ocfs2_clusters_to_blocks(i32 %62, i32 %66)
  store i64 %67, i64* %16, align 8
  %68 = load %struct.ocfs2_local_alloc*, %struct.ocfs2_local_alloc** %19, align 8
  %69 = getelementptr inbounds %struct.ocfs2_local_alloc, %struct.ocfs2_local_alloc* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %18, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %71 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %72 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @le32_to_cpu(i32 %75)
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %133, %91, %59
  %78 = load i8*, i8** %18, align 8
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @ocfs2_find_next_zero_bit(i8* %78, i32 %79, i32 %80)
  store i32 %81, i32* %12, align 4
  %82 = icmp ne i32 %81, -1
  br i1 %82, label %83, label %136

83:                                               ; preds = %77
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %15, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %15, align 4
  br label %77

96:                                               ; preds = %87, %83
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %128

99:                                               ; preds = %96
  %100 = load i64, i64* %16, align 8
  %101 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %102 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %14, align 4
  %106 = sub nsw i32 %104, %105
  %107 = call i64 @ocfs2_clusters_to_blocks(i32 %103, i32 %106)
  %108 = add nsw i64 %100, %107
  store i64 %108, i64* %17, align 8
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %14, align 4
  %112 = sub nsw i32 %110, %111
  %113 = load i64, i64* %16, align 8
  %114 = load i64, i64* %17, align 8
  %115 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0), i32 %109, i32 %112, i64 %113, i64 %114)
  %116 = load i32*, i32** %7, align 8
  %117 = load %struct.inode*, %struct.inode** %9, align 8
  %118 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %119 = load i64, i64* %17, align 8
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @ocfs2_free_clusters(i32* %116, %struct.inode* %117, %struct.buffer_head* %118, i64 %119, i32 %120)
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %99
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @mlog_errno(i32 %125)
  br label %137

127:                                              ; preds = %99
  br label %128

128:                                              ; preds = %127, %96
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %13, align 4
  %131 = icmp sge i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  br label %136

133:                                              ; preds = %128
  store i32 1, i32* %14, align 4
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %15, align 4
  br label %77

136:                                              ; preds = %132, %77
  br label %137

137:                                              ; preds = %136, %124, %57, %41
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @mlog_exit(i32 %138)
  %140 = load i32, i32* %11, align 4
  ret i32 %140
}

declare dso_local %struct.ocfs2_local_alloc* @OCFS2_LOCAL_ALLOC(%struct.ocfs2_dinode*) #1

declare dso_local i32 @mlog_entry(i8*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i64 @ocfs2_clusters_to_blocks(i32, i32) #1

declare dso_local i32 @ocfs2_find_next_zero_bit(i8*, i32, i32) #1

declare dso_local i32 @ocfs2_free_clusters(i32*, %struct.inode*, %struct.buffer_head*, i64, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
