; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neighbour = type { i64, i64, i32, i32, %struct.neigh_table*, i32, i32, i32, i32, i32, i32 }
%struct.neigh_table = type { i32, i32, i32, i32, i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NUD_NONE = common dso_local global i32 0, align 4
@neigh_blackhole = common dso_local global i32 0, align 4
@neigh_timer_handler = common dso_local global i32 0, align 4
@allocs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.neighbour* (%struct.neigh_table*)* @neigh_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.neighbour* @neigh_alloc(%struct.neigh_table* %0) #0 {
  %2 = alloca %struct.neigh_table*, align 8
  %3 = alloca %struct.neighbour*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.neigh_table* %0, %struct.neigh_table** %2, align 8
  store %struct.neighbour* null, %struct.neighbour** %3, align 8
  %6 = load i64, i64* @jiffies, align 8
  store i64 %6, i64* %4, align 8
  %7 = load %struct.neigh_table*, %struct.neigh_table** %2, align 8
  %8 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %7, i32 0, i32 2
  %9 = call i32 @atomic_inc_return(i32* %8)
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.neigh_table*, %struct.neigh_table** %2, align 8
  %13 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sge i32 %11, %14
  br i1 %15, label %33, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.neigh_table*, %struct.neigh_table** %2, align 8
  %19 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp sge i32 %17, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %16
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.neigh_table*, %struct.neigh_table** %2, align 8
  %25 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @HZ, align 4
  %28 = mul nsw i32 5, %27
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %26, %29
  %31 = call i64 @time_after(i64 %23, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %22, %1
  %34 = load %struct.neigh_table*, %struct.neigh_table** %2, align 8
  %35 = call i32 @neigh_forced_gc(%struct.neigh_table* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.neigh_table*, %struct.neigh_table** %2, align 8
  %40 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sge i32 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %96

44:                                               ; preds = %37, %33
  br label %45

45:                                               ; preds = %44, %22, %16
  %46 = load %struct.neigh_table*, %struct.neigh_table** %2, align 8
  %47 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @GFP_ATOMIC, align 4
  %50 = call %struct.neighbour* @kmem_cache_zalloc(i32 %48, i32 %49)
  store %struct.neighbour* %50, %struct.neighbour** %3, align 8
  %51 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %52 = icmp ne %struct.neighbour* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %45
  br label %96

54:                                               ; preds = %45
  %55 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %56 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %55, i32 0, i32 10
  %57 = call i32 @skb_queue_head_init(i32* %56)
  %58 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %59 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %58, i32 0, i32 9
  %60 = call i32 @rwlock_init(i32* %59)
  %61 = load i64, i64* %4, align 8
  %62 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %63 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %65 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %64, i32 0, i32 0
  store i64 %61, i64* %65, align 8
  %66 = load i32, i32* @NUD_NONE, align 4
  %67 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %68 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %67, i32 0, i32 8
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @neigh_blackhole, align 4
  %70 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %71 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %70, i32 0, i32 7
  store i32 %69, i32* %71, align 8
  %72 = load %struct.neigh_table*, %struct.neigh_table** %2, align 8
  %73 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %72, i32 0, i32 3
  %74 = call i32 @neigh_parms_clone(i32* %73)
  %75 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %76 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %75, i32 0, i32 6
  store i32 %74, i32* %76, align 4
  %77 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %78 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %77, i32 0, i32 5
  %79 = load i32, i32* @neigh_timer_handler, align 4
  %80 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %81 = ptrtoint %struct.neighbour* %80 to i64
  %82 = call i32 @setup_timer(i32* %78, i32 %79, i64 %81)
  %83 = load %struct.neigh_table*, %struct.neigh_table** %2, align 8
  %84 = load i32, i32* @allocs, align 4
  %85 = call i32 @NEIGH_CACHE_STAT_INC(%struct.neigh_table* %83, i32 %84)
  %86 = load %struct.neigh_table*, %struct.neigh_table** %2, align 8
  %87 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %88 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %87, i32 0, i32 4
  store %struct.neigh_table* %86, %struct.neigh_table** %88, align 8
  %89 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %90 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %89, i32 0, i32 3
  %91 = call i32 @atomic_set(i32* %90, i32 1)
  %92 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %93 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %92, i32 0, i32 2
  store i32 1, i32* %93, align 8
  br label %94

94:                                               ; preds = %96, %54
  %95 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  ret %struct.neighbour* %95

96:                                               ; preds = %53, %43
  %97 = load %struct.neigh_table*, %struct.neigh_table** %2, align 8
  %98 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %97, i32 0, i32 2
  %99 = call i32 @atomic_dec(i32* %98)
  br label %94
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @neigh_forced_gc(%struct.neigh_table*) #1

declare dso_local %struct.neighbour* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @neigh_parms_clone(i32*) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @NEIGH_CACHE_STAT_INC(%struct.neigh_table*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
