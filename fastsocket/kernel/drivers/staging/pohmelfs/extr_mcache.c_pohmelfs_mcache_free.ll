; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_mcache.c_pohmelfs_mcache_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_mcache.c_pohmelfs_mcache_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pohmelfs_sb = type { i32 }
%struct.pohmelfs_mcache = type { i32 }

@pohmelfs_mcache_pool = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pohmelfs_mcache_free(%struct.pohmelfs_sb* %0, %struct.pohmelfs_mcache* %1) #0 {
  %3 = alloca %struct.pohmelfs_sb*, align 8
  %4 = alloca %struct.pohmelfs_mcache*, align 8
  store %struct.pohmelfs_sb* %0, %struct.pohmelfs_sb** %3, align 8
  store %struct.pohmelfs_mcache* %1, %struct.pohmelfs_mcache** %4, align 8
  %5 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %6 = load %struct.pohmelfs_mcache*, %struct.pohmelfs_mcache** %4, align 8
  %7 = call i32 @pohmelfs_mcache_remove_locked(%struct.pohmelfs_sb* %5, %struct.pohmelfs_mcache* %6)
  %8 = load %struct.pohmelfs_mcache*, %struct.pohmelfs_mcache** %4, align 8
  %9 = load i32, i32* @pohmelfs_mcache_pool, align 4
  %10 = call i32 @mempool_free(%struct.pohmelfs_mcache* %8, i32 %9)
  ret void
}

declare dso_local i32 @pohmelfs_mcache_remove_locked(%struct.pohmelfs_sb*, %struct.pohmelfs_mcache*) #1

declare dso_local i32 @mempool_free(%struct.pohmelfs_mcache*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
