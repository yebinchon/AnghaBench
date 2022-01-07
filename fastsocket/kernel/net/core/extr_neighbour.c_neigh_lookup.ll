; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neighbour = type { i32, %struct.net_device*, %struct.neighbour* }
%struct.neigh_table = type { i32, i64 (i8*, %struct.net_device*)*, i64, i32, %struct.neighbour** }
%struct.net_device = type { i32 }

@lookups = common dso_local global i32 0, align 4
@hits = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.neighbour* @neigh_lookup(%struct.neigh_table* %0, i8* %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.neigh_table*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.neighbour*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.neigh_table* %0, %struct.neigh_table** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  %10 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %11 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %8, align 4
  %13 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %14 = load i32, i32* @lookups, align 4
  %15 = call i32 @NEIGH_CACHE_STAT_INC(%struct.neigh_table* %13, i32 %14)
  %16 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %17 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %16, i32 0, i32 3
  %18 = call i32 @read_lock_bh(i32* %17)
  %19 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %20 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %19, i32 0, i32 1
  %21 = load i64 (i8*, %struct.net_device*)*, i64 (i8*, %struct.net_device*)** %20, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.net_device*, %struct.net_device** %6, align 8
  %24 = call i64 %21(i8* %22, %struct.net_device* %23)
  store i64 %24, i64* %9, align 8
  %25 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %26 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %25, i32 0, i32 4
  %27 = load %struct.neighbour**, %struct.neighbour*** %26, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %30 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = and i64 %28, %31
  %33 = getelementptr inbounds %struct.neighbour*, %struct.neighbour** %27, i64 %32
  %34 = load %struct.neighbour*, %struct.neighbour** %33, align 8
  store %struct.neighbour* %34, %struct.neighbour** %7, align 8
  br label %35

35:                                               ; preds = %59, %3
  %36 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %37 = icmp ne %struct.neighbour* %36, null
  br i1 %37, label %38, label %63

38:                                               ; preds = %35
  %39 = load %struct.net_device*, %struct.net_device** %6, align 8
  %40 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %41 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %40, i32 0, i32 1
  %42 = load %struct.net_device*, %struct.net_device** %41, align 8
  %43 = icmp eq %struct.net_device* %39, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %38
  %45 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %46 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @memcmp(i32 %47, i8* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %44
  %53 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %54 = call i32 @neigh_hold(%struct.neighbour* %53)
  %55 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %56 = load i32, i32* @hits, align 4
  %57 = call i32 @NEIGH_CACHE_STAT_INC(%struct.neigh_table* %55, i32 %56)
  br label %63

58:                                               ; preds = %44, %38
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %61 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %60, i32 0, i32 2
  %62 = load %struct.neighbour*, %struct.neighbour** %61, align 8
  store %struct.neighbour* %62, %struct.neighbour** %7, align 8
  br label %35

63:                                               ; preds = %52, %35
  %64 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %65 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %64, i32 0, i32 3
  %66 = call i32 @read_unlock_bh(i32* %65)
  %67 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  ret %struct.neighbour* %67
}

declare dso_local i32 @NEIGH_CACHE_STAT_INC(%struct.neigh_table*, i32) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @neigh_hold(%struct.neighbour*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
