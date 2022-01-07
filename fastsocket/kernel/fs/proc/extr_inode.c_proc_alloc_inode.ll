; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_inode.c_proc_alloc_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_inode.c_proc_alloc_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.super_block = type { i32 }
%struct.proc_inode = type { %struct.inode, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_2__, i64, i32* }
%struct.TYPE_2__ = type { i32* }

@proc_inode_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*)* @proc_alloc_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @proc_alloc_inode(%struct.super_block* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.proc_inode*, align 8
  %5 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %6 = load i32, i32* @proc_inode_cachep, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i64 @kmem_cache_alloc(i32 %6, i32 %7)
  %9 = inttoptr i64 %8 to %struct.proc_inode*
  store %struct.proc_inode* %9, %struct.proc_inode** %4, align 8
  %10 = load %struct.proc_inode*, %struct.proc_inode** %4, align 8
  %11 = icmp ne %struct.proc_inode* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.inode* null, %struct.inode** %2, align 8
  br label %41

13:                                               ; preds = %1
  %14 = load %struct.proc_inode*, %struct.proc_inode** %4, align 8
  %15 = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %14, i32 0, i32 8
  store i32* null, i32** %15, align 8
  %16 = load %struct.proc_inode*, %struct.proc_inode** %4, align 8
  %17 = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %16, i32 0, i32 7
  store i64 0, i64* %17, align 8
  %18 = load %struct.proc_inode*, %struct.proc_inode** %4, align 8
  %19 = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  %21 = load %struct.proc_inode*, %struct.proc_inode** %4, align 8
  %22 = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %21, i32 0, i32 5
  store i32* null, i32** %22, align 8
  %23 = load %struct.proc_inode*, %struct.proc_inode** %4, align 8
  %24 = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %23, i32 0, i32 4
  store i32* null, i32** %24, align 8
  %25 = load %struct.proc_inode*, %struct.proc_inode** %4, align 8
  %26 = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %25, i32 0, i32 3
  store i32* null, i32** %26, align 8
  %27 = load %struct.proc_inode*, %struct.proc_inode** %4, align 8
  %28 = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %27, i32 0, i32 2
  store i32* null, i32** %28, align 8
  %29 = load %struct.proc_inode*, %struct.proc_inode** %4, align 8
  %30 = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %29, i32 0, i32 1
  store i32* null, i32** %30, align 8
  %31 = load %struct.proc_inode*, %struct.proc_inode** %4, align 8
  %32 = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %31, i32 0, i32 0
  store %struct.inode* %32, %struct.inode** %5, align 8
  %33 = load i32, i32* @CURRENT_TIME, align 4
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.inode*, %struct.inode** %5, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 1
  store i32 %33, i32* %37, align 4
  %38 = load %struct.inode*, %struct.inode** %5, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 2
  store i32 %33, i32* %39, align 4
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  store %struct.inode* %40, %struct.inode** %2, align 8
  br label %41

41:                                               ; preds = %13, %12
  %42 = load %struct.inode*, %struct.inode** %2, align 8
  ret %struct.inode* %42
}

declare dso_local i64 @kmem_cache_alloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
