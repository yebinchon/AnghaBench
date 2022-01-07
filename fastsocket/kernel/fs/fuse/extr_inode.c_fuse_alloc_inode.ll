; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_inode.c_fuse_alloc_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_inode.c_fuse_alloc_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.fuse_inode = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64 }

@fuse_inode_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*)* @fuse_alloc_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @fuse_alloc_inode(%struct.super_block* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.fuse_inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %6 = load i32, i32* @fuse_inode_cachep, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.inode* @kmem_cache_alloc(i32 %6, i32 %7)
  store %struct.inode* %8, %struct.inode** %4, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = icmp ne %struct.inode* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.inode* null, %struct.inode** %2, align 8
  br label %52

12:                                               ; preds = %1
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call %struct.fuse_inode* @get_fuse_inode(%struct.inode* %13)
  store %struct.fuse_inode* %14, %struct.fuse_inode** %5, align 8
  %15 = load %struct.fuse_inode*, %struct.fuse_inode** %5, align 8
  %16 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %15, i32 0, i32 10
  store i64 0, i64* %16, align 8
  %17 = load %struct.fuse_inode*, %struct.fuse_inode** %5, align 8
  %18 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %17, i32 0, i32 9
  store i64 0, i64* %18, align 8
  %19 = load %struct.fuse_inode*, %struct.fuse_inode** %5, align 8
  %20 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %19, i32 0, i32 8
  store i64 0, i64* %20, align 8
  %21 = load %struct.fuse_inode*, %struct.fuse_inode** %5, align 8
  %22 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %21, i32 0, i32 7
  store i64 0, i64* %22, align 8
  %23 = load %struct.fuse_inode*, %struct.fuse_inode** %5, align 8
  %24 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %23, i32 0, i32 6
  store i64 0, i64* %24, align 8
  %25 = load %struct.fuse_inode*, %struct.fuse_inode** %5, align 8
  %26 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %25, i32 0, i32 5
  store i64 0, i64* %26, align 8
  %27 = load %struct.fuse_inode*, %struct.fuse_inode** %5, align 8
  %28 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %27, i32 0, i32 4
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.fuse_inode*, %struct.fuse_inode** %5, align 8
  %31 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %30, i32 0, i32 3
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.fuse_inode*, %struct.fuse_inode** %5, align 8
  %34 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %33, i32 0, i32 2
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.fuse_inode*, %struct.fuse_inode** %5, align 8
  %37 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %36, i32 0, i32 1
  %38 = call i32 @init_waitqueue_head(i32* %37)
  %39 = call i32 @fuse_request_alloc(i32 0)
  %40 = load %struct.fuse_inode*, %struct.fuse_inode** %5, align 8
  %41 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.fuse_inode*, %struct.fuse_inode** %5, align 8
  %43 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %12
  %47 = load i32, i32* @fuse_inode_cachep, align 4
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  %49 = call i32 @kmem_cache_free(i32 %47, %struct.inode* %48)
  store %struct.inode* null, %struct.inode** %2, align 8
  br label %52

50:                                               ; preds = %12
  %51 = load %struct.inode*, %struct.inode** %4, align 8
  store %struct.inode* %51, %struct.inode** %2, align 8
  br label %52

52:                                               ; preds = %50, %46, %11
  %53 = load %struct.inode*, %struct.inode** %2, align 8
  ret %struct.inode* %53
}

declare dso_local %struct.inode* @kmem_cache_alloc(i32, i32) #1

declare dso_local %struct.fuse_inode* @get_fuse_inode(%struct.inode*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @fuse_request_alloc(i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
