; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_lookup_nodev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_lookup_nodev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neighbour = type { i32, i32, %struct.neighbour* }
%struct.neigh_table = type { i32, i64 (i8*, i32*)*, i64, i32, %struct.neighbour** }
%struct.net = type { i32 }

@lookups = common dso_local global i32 0, align 4
@hits = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.neighbour* @neigh_lookup_nodev(%struct.neigh_table* %0, %struct.net* %1, i8* %2) #0 {
  %4 = alloca %struct.neigh_table*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.neighbour*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.neigh_table* %0, %struct.neigh_table** %4, align 8
  store %struct.net* %1, %struct.net** %5, align 8
  store i8* %2, i8** %6, align 8
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
  %21 = load i64 (i8*, i32*)*, i64 (i8*, i32*)** %20, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i64 %21(i8* %22, i32* null)
  store i64 %23, i64* %9, align 8
  %24 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %25 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %24, i32 0, i32 4
  %26 = load %struct.neighbour**, %struct.neighbour*** %25, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %29 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = and i64 %27, %30
  %32 = getelementptr inbounds %struct.neighbour*, %struct.neighbour** %26, i64 %31
  %33 = load %struct.neighbour*, %struct.neighbour** %32, align 8
  store %struct.neighbour* %33, %struct.neighbour** %7, align 8
  br label %34

34:                                               ; preds = %60, %3
  %35 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %36 = icmp ne %struct.neighbour* %35, null
  br i1 %36, label %37, label %64

37:                                               ; preds = %34
  %38 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %39 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @memcmp(i32 %40, i8* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %37
  %46 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %47 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @dev_net(i32 %48)
  %50 = load %struct.net*, %struct.net** %5, align 8
  %51 = call i64 @net_eq(i32 %49, %struct.net* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %55 = call i32 @neigh_hold(%struct.neighbour* %54)
  %56 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %57 = load i32, i32* @hits, align 4
  %58 = call i32 @NEIGH_CACHE_STAT_INC(%struct.neigh_table* %56, i32 %57)
  br label %64

59:                                               ; preds = %45, %37
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %62 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %61, i32 0, i32 2
  %63 = load %struct.neighbour*, %struct.neighbour** %62, align 8
  store %struct.neighbour* %63, %struct.neighbour** %7, align 8
  br label %34

64:                                               ; preds = %53, %34
  %65 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %66 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %65, i32 0, i32 3
  %67 = call i32 @read_unlock_bh(i32* %66)
  %68 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  ret %struct.neighbour* %68
}

declare dso_local i32 @NEIGH_CACHE_STAT_INC(%struct.neigh_table*, i32) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @memcmp(i32, i8*, i32) #1

declare dso_local i64 @net_eq(i32, %struct.net*) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local i32 @neigh_hold(%struct.neighbour*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
