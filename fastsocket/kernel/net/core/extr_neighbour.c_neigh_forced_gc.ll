; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_forced_gc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_forced_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neigh_table = type { i32, i32, i32, %struct.neighbour** }
%struct.neighbour = type { i32, i32, %struct.neighbour*, i32, i32 }

@forced_gc_runs = common dso_local global i32 0, align 4
@NUD_PERMANENT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.neigh_table*)* @neigh_forced_gc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neigh_forced_gc(%struct.neigh_table* %0) #0 {
  %2 = alloca %struct.neigh_table*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.neighbour*, align 8
  %6 = alloca %struct.neighbour**, align 8
  store %struct.neigh_table* %0, %struct.neigh_table** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.neigh_table*, %struct.neigh_table** %2, align 8
  %8 = load i32, i32* @forced_gc_runs, align 4
  %9 = call i32 @NEIGH_CACHE_STAT_INC(%struct.neigh_table* %7, i32 %8)
  %10 = load %struct.neigh_table*, %struct.neigh_table** %2, align 8
  %11 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %10, i32 0, i32 1
  %12 = call i32 @write_lock_bh(i32* %11)
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %64, %1
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.neigh_table*, %struct.neigh_table** %2, align 8
  %16 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sle i32 %14, %17
  br i1 %18, label %19, label %67

19:                                               ; preds = %13
  %20 = load %struct.neigh_table*, %struct.neigh_table** %2, align 8
  %21 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %20, i32 0, i32 3
  %22 = load %struct.neighbour**, %struct.neighbour*** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.neighbour*, %struct.neighbour** %22, i64 %24
  store %struct.neighbour** %25, %struct.neighbour*** %6, align 8
  br label %26

26:                                               ; preds = %57, %45, %19
  %27 = load %struct.neighbour**, %struct.neighbour*** %6, align 8
  %28 = load %struct.neighbour*, %struct.neighbour** %27, align 8
  store %struct.neighbour* %28, %struct.neighbour** %5, align 8
  %29 = icmp ne %struct.neighbour* %28, null
  br i1 %29, label %30, label %63

30:                                               ; preds = %26
  %31 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %32 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %31, i32 0, i32 3
  %33 = call i32 @write_lock(i32* %32)
  %34 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %35 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %34, i32 0, i32 4
  %36 = call i32 @atomic_read(i32* %35)
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %57

38:                                               ; preds = %30
  %39 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %40 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @NUD_PERMANENT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %38
  %46 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %47 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %46, i32 0, i32 2
  %48 = load %struct.neighbour*, %struct.neighbour** %47, align 8
  %49 = load %struct.neighbour**, %struct.neighbour*** %6, align 8
  store %struct.neighbour* %48, %struct.neighbour** %49, align 8
  %50 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %51 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %50, i32 0, i32 1
  store i32 1, i32* %51, align 4
  store i32 1, i32* %3, align 4
  %52 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %53 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %52, i32 0, i32 3
  %54 = call i32 @write_unlock(i32* %53)
  %55 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %56 = call i32 @neigh_cleanup_and_release(%struct.neighbour* %55)
  br label %26

57:                                               ; preds = %38, %30
  %58 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %59 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %58, i32 0, i32 3
  %60 = call i32 @write_unlock(i32* %59)
  %61 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %62 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %61, i32 0, i32 2
  store %struct.neighbour** %62, %struct.neighbour*** %6, align 8
  br label %26

63:                                               ; preds = %26
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %13

67:                                               ; preds = %13
  %68 = load i32, i32* @jiffies, align 4
  %69 = load %struct.neigh_table*, %struct.neigh_table** %2, align 8
  %70 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.neigh_table*, %struct.neigh_table** %2, align 8
  %72 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %71, i32 0, i32 1
  %73 = call i32 @write_unlock_bh(i32* %72)
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @NEIGH_CACHE_STAT_INC(%struct.neigh_table*, i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @neigh_cleanup_and_release(%struct.neighbour*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
