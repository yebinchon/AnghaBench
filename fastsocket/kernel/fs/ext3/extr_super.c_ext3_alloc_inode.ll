; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_super.c_ext3_alloc_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_super.c_ext3_alloc_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.ext3_inode_info = type { %struct.inode, i32, i32, i32* }

@ext3_inode_cachep = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*)* @ext3_alloc_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @ext3_alloc_inode(%struct.super_block* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.ext3_inode_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %5 = load i32, i32* @ext3_inode_cachep, align 4
  %6 = load i32, i32* @GFP_NOFS, align 4
  %7 = call %struct.ext3_inode_info* @kmem_cache_alloc(i32 %5, i32 %6)
  store %struct.ext3_inode_info* %7, %struct.ext3_inode_info** %4, align 8
  %8 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %4, align 8
  %9 = icmp ne %struct.ext3_inode_info* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.inode* null, %struct.inode** %2, align 8
  br label %25

11:                                               ; preds = %1
  %12 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %4, align 8
  %13 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %12, i32 0, i32 3
  store i32* null, i32** %13, align 8
  %14 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %4, align 8
  %15 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %4, align 8
  %18 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %17, i32 0, i32 2
  %19 = call i32 @atomic_set(i32* %18, i32 0)
  %20 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %4, align 8
  %21 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %20, i32 0, i32 1
  %22 = call i32 @atomic_set(i32* %21, i32 0)
  %23 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %4, align 8
  %24 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %23, i32 0, i32 0
  store %struct.inode* %24, %struct.inode** %2, align 8
  br label %25

25:                                               ; preds = %11, %10
  %26 = load %struct.inode*, %struct.inode** %2, align 8
  ret %struct.inode* %26
}

declare dso_local %struct.ext3_inode_info* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
