; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_inode.c_fuse_change_attributes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_inode.c_fuse_change_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, %struct.timespec }
%struct.timespec = type { i32, i32 }
%struct.fuse_attr = type { i32, i32, i32 }
%struct.fuse_conn = type { i64, i32 }
%struct.fuse_inode = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fuse_change_attributes(%struct.inode* %0, %struct.fuse_attr* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.fuse_attr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.fuse_conn*, align 8
  %10 = alloca %struct.fuse_inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.timespec, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.timespec, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.fuse_attr* %1, %struct.fuse_attr** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %15)
  store %struct.fuse_conn* %16, %struct.fuse_conn** %9, align 8
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = call %struct.fuse_inode* @get_fuse_inode(%struct.inode* %17)
  store %struct.fuse_inode* %18, %struct.fuse_inode** %10, align 8
  %19 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %20 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %19, i32 0, i32 1
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load i64, i64* %8, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %4
  %25 = load %struct.fuse_inode*, %struct.fuse_inode** %10, align 8
  %26 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %32 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %31, i32 0, i32 1
  %33 = call i32 @spin_unlock(i32* %32)
  br label %100

34:                                               ; preds = %24, %4
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 3
  %37 = bitcast %struct.timespec* %12 to i8*
  %38 = bitcast %struct.timespec* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 8, i1 false)
  %39 = load %struct.inode*, %struct.inode** %5, align 8
  %40 = load %struct.fuse_attr*, %struct.fuse_attr** %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @fuse_change_attributes_common(%struct.inode* %39, %struct.fuse_attr* %40, i64 %41)
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %11, align 4
  %46 = load %struct.inode*, %struct.inode** %5, align 8
  %47 = load %struct.fuse_attr*, %struct.fuse_attr** %6, align 8
  %48 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @i_size_write(%struct.inode* %46, i32 %49)
  %51 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %52 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %51, i32 0, i32 1
  %53 = call i32 @spin_unlock(i32* %52)
  %54 = load %struct.inode*, %struct.inode** %5, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @S_ISREG(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %100

59:                                               ; preds = %34
  store i32 0, i32* %13, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.fuse_attr*, %struct.fuse_attr** %6, align 8
  %62 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %60, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load %struct.inode*, %struct.inode** %5, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.fuse_attr*, %struct.fuse_attr** %6, align 8
  %69 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @truncate_pagecache(%struct.inode* %66, i32 %67, i32 %70)
  store i32 1, i32* %13, align 4
  br label %91

72:                                               ; preds = %59
  %73 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %74 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i32 0, i32 0
  %79 = load %struct.fuse_attr*, %struct.fuse_attr** %6, align 8
  %80 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %78, align 4
  %82 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i32 0, i32 1
  %83 = load %struct.fuse_attr*, %struct.fuse_attr** %6, align 8
  %84 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %82, align 4
  %86 = call i32 @timespec_equal(%struct.timespec* %12, %struct.timespec* %14)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %77
  store i32 1, i32* %13, align 4
  br label %89

89:                                               ; preds = %88, %77
  br label %90

90:                                               ; preds = %89, %72
  br label %91

91:                                               ; preds = %90, %65
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load %struct.inode*, %struct.inode** %5, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @invalidate_inode_pages2(i32 %97)
  br label %99

99:                                               ; preds = %94, %91
  br label %100

100:                                              ; preds = %30, %99, %34
  ret void
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local %struct.fuse_inode* @get_fuse_inode(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fuse_change_attributes_common(%struct.inode*, %struct.fuse_attr*, i64) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @truncate_pagecache(%struct.inode*, i32, i32) #1

declare dso_local i32 @timespec_equal(%struct.timespec*, %struct.timespec*) #1

declare dso_local i32 @invalidate_inode_pages2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
