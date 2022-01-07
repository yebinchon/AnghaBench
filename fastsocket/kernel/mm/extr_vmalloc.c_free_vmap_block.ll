; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmalloc.c_free_vmap_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmalloc.c_free_vmap_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmap_block = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@vmap_block_tree_lock = common dso_local global i32 0, align 4
@vmap_block_tree = common dso_local global i32 0, align 4
@rcu_free_vb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmap_block*)* @free_vmap_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_vmap_block(%struct.vmap_block* %0) #0 {
  %2 = alloca %struct.vmap_block*, align 8
  %3 = alloca %struct.vmap_block*, align 8
  %4 = alloca i64, align 8
  store %struct.vmap_block* %0, %struct.vmap_block** %2, align 8
  %5 = load %struct.vmap_block*, %struct.vmap_block** %2, align 8
  %6 = getelementptr inbounds %struct.vmap_block, %struct.vmap_block* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @addr_to_vb_idx(i32 %9)
  store i64 %10, i64* %4, align 8
  %11 = call i32 @spin_lock(i32* @vmap_block_tree_lock)
  %12 = load i64, i64* %4, align 8
  %13 = call %struct.vmap_block* @radix_tree_delete(i32* @vmap_block_tree, i64 %12)
  store %struct.vmap_block* %13, %struct.vmap_block** %3, align 8
  %14 = call i32 @spin_unlock(i32* @vmap_block_tree_lock)
  %15 = load %struct.vmap_block*, %struct.vmap_block** %3, align 8
  %16 = load %struct.vmap_block*, %struct.vmap_block** %2, align 8
  %17 = icmp ne %struct.vmap_block* %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.vmap_block*, %struct.vmap_block** %2, align 8
  %21 = getelementptr inbounds %struct.vmap_block, %struct.vmap_block* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = call i32 @free_vmap_area_noflush(%struct.TYPE_2__* %22)
  %24 = load %struct.vmap_block*, %struct.vmap_block** %2, align 8
  %25 = getelementptr inbounds %struct.vmap_block, %struct.vmap_block* %24, i32 0, i32 0
  %26 = load i32, i32* @rcu_free_vb, align 4
  %27 = call i32 @call_rcu(i32* %25, i32 %26)
  ret void
}

declare dso_local i64 @addr_to_vb_idx(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.vmap_block* @radix_tree_delete(i32*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @free_vmap_area_noflush(%struct.TYPE_2__*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
