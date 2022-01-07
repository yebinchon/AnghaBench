; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_btnode.c_nilfs_btnode_cache_init_once.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_btnode.c_nilfs_btnode_cache_init_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32, i32, i32, i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_btnode_cache_init_once(%struct.address_space* %0) #0 {
  %2 = alloca %struct.address_space*, align 8
  store %struct.address_space* %0, %struct.address_space** %2, align 8
  %3 = load %struct.address_space*, %struct.address_space** %2, align 8
  %4 = call i32 @memset(%struct.address_space* %3, i32 0, i32 28)
  %5 = load %struct.address_space*, %struct.address_space** %2, align 8
  %6 = getelementptr inbounds %struct.address_space, %struct.address_space* %5, i32 0, i32 6
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call i32 @INIT_RADIX_TREE(i32* %6, i32 %7)
  %9 = load %struct.address_space*, %struct.address_space** %2, align 8
  %10 = getelementptr inbounds %struct.address_space, %struct.address_space* %9, i32 0, i32 5
  %11 = call i32 @spin_lock_init(i32* %10)
  %12 = load %struct.address_space*, %struct.address_space** %2, align 8
  %13 = getelementptr inbounds %struct.address_space, %struct.address_space* %12, i32 0, i32 4
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.address_space*, %struct.address_space** %2, align 8
  %16 = getelementptr inbounds %struct.address_space, %struct.address_space* %15, i32 0, i32 3
  %17 = call i32 @spin_lock_init(i32* %16)
  %18 = load %struct.address_space*, %struct.address_space** %2, align 8
  %19 = getelementptr inbounds %struct.address_space, %struct.address_space* %18, i32 0, i32 2
  %20 = call i32 @spin_lock_init(i32* %19)
  %21 = load %struct.address_space*, %struct.address_space** %2, align 8
  %22 = getelementptr inbounds %struct.address_space, %struct.address_space* %21, i32 0, i32 1
  %23 = call i32 @INIT_RAW_PRIO_TREE_ROOT(i32* %22)
  %24 = load %struct.address_space*, %struct.address_space** %2, align 8
  %25 = getelementptr inbounds %struct.address_space, %struct.address_space* %24, i32 0, i32 0
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  ret void
}

declare dso_local i32 @memset(%struct.address_space*, i32, i32) #1

declare dso_local i32 @INIT_RADIX_TREE(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_RAW_PRIO_TREE_ROOT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
