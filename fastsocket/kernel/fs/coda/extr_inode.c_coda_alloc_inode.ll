; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_inode.c_coda_alloc_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_inode.c_coda_alloc_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.coda_inode_info = type { %struct.inode, i64, i64, i64, i32 }

@coda_inode_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*)* @coda_alloc_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @coda_alloc_inode(%struct.super_block* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.coda_inode_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %5 = load i32, i32* @coda_inode_cachep, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i64 @kmem_cache_alloc(i32 %5, i32 %6)
  %8 = inttoptr i64 %7 to %struct.coda_inode_info*
  store %struct.coda_inode_info* %8, %struct.coda_inode_info** %4, align 8
  %9 = load %struct.coda_inode_info*, %struct.coda_inode_info** %4, align 8
  %10 = icmp ne %struct.coda_inode_info* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.inode* null, %struct.inode** %2, align 8
  br label %24

12:                                               ; preds = %1
  %13 = load %struct.coda_inode_info*, %struct.coda_inode_info** %4, align 8
  %14 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %13, i32 0, i32 4
  %15 = call i32 @memset(i32* %14, i32 0, i32 4)
  %16 = load %struct.coda_inode_info*, %struct.coda_inode_info** %4, align 8
  %17 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load %struct.coda_inode_info*, %struct.coda_inode_info** %4, align 8
  %19 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.coda_inode_info*, %struct.coda_inode_info** %4, align 8
  %21 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.coda_inode_info*, %struct.coda_inode_info** %4, align 8
  %23 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %22, i32 0, i32 0
  store %struct.inode* %23, %struct.inode** %2, align 8
  br label %24

24:                                               ; preds = %12, %11
  %25 = load %struct.inode*, %struct.inode** %2, align 8
  ret %struct.inode* %25
}

declare dso_local i64 @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
