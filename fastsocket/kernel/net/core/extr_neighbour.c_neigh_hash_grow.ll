; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_hash_grow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_hash_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neigh_table = type { i32, i32 (i32, i32)*, %struct.neighbour**, i32 }
%struct.neighbour = type { %struct.neighbour*, i32, i32 }

@hash_grows = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.neigh_table*, i64)* @neigh_hash_grow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neigh_hash_grow(%struct.neigh_table* %0, i64 %1) #0 {
  %3 = alloca %struct.neigh_table*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.neighbour**, align 8
  %6 = alloca %struct.neighbour**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.neighbour*, align 8
  %11 = alloca %struct.neighbour*, align 8
  %12 = alloca i32, align 4
  store %struct.neigh_table* %0, %struct.neigh_table** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load %struct.neigh_table*, %struct.neigh_table** %3, align 8
  %14 = load i32, i32* @hash_grows, align 4
  %15 = call i32 @NEIGH_CACHE_STAT_INC(%struct.neigh_table* %13, i32 %14)
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @is_power_of_2(i64 %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load i64, i64* %4, align 8
  %23 = call %struct.neighbour** @neigh_hash_alloc(i64 %22)
  store %struct.neighbour** %23, %struct.neighbour*** %5, align 8
  %24 = load %struct.neighbour**, %struct.neighbour*** %5, align 8
  %25 = icmp ne %struct.neighbour** %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  br label %99

27:                                               ; preds = %2
  %28 = load %struct.neigh_table*, %struct.neigh_table** %3, align 8
  %29 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  %32 = load i64, i64* %4, align 8
  %33 = sub i64 %32, 1
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %8, align 4
  %35 = load %struct.neigh_table*, %struct.neigh_table** %3, align 8
  %36 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %35, i32 0, i32 2
  %37 = load %struct.neighbour**, %struct.neighbour*** %36, align 8
  store %struct.neighbour** %37, %struct.neighbour*** %6, align 8
  %38 = load %struct.neigh_table*, %struct.neigh_table** %3, align 8
  %39 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %38, i32 0, i32 3
  %40 = call i32 @get_random_bytes(i32* %39, i32 4)
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %86, %27
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %89

45:                                               ; preds = %41
  %46 = load %struct.neighbour**, %struct.neighbour*** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.neighbour*, %struct.neighbour** %46, i64 %48
  %50 = load %struct.neighbour*, %struct.neighbour** %49, align 8
  store %struct.neighbour* %50, %struct.neighbour** %10, align 8
  br label %51

51:                                               ; preds = %83, %45
  %52 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %53 = icmp ne %struct.neighbour* %52, null
  br i1 %53, label %54, label %85

54:                                               ; preds = %51
  %55 = load %struct.neigh_table*, %struct.neigh_table** %3, align 8
  %56 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %55, i32 0, i32 1
  %57 = load i32 (i32, i32)*, i32 (i32, i32)** %56, align 8
  %58 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %59 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %62 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 %57(i32 %60, i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %12, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %12, align 4
  %68 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %69 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %68, i32 0, i32 0
  %70 = load %struct.neighbour*, %struct.neighbour** %69, align 8
  store %struct.neighbour* %70, %struct.neighbour** %11, align 8
  %71 = load %struct.neighbour**, %struct.neighbour*** %5, align 8
  %72 = load i32, i32* %12, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.neighbour*, %struct.neighbour** %71, i64 %73
  %75 = load %struct.neighbour*, %struct.neighbour** %74, align 8
  %76 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %77 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %76, i32 0, i32 0
  store %struct.neighbour* %75, %struct.neighbour** %77, align 8
  %78 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %79 = load %struct.neighbour**, %struct.neighbour*** %5, align 8
  %80 = load i32, i32* %12, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.neighbour*, %struct.neighbour** %79, i64 %81
  store %struct.neighbour* %78, %struct.neighbour** %82, align 8
  br label %83

83:                                               ; preds = %54
  %84 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  store %struct.neighbour* %84, %struct.neighbour** %10, align 8
  br label %51

85:                                               ; preds = %51
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %7, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %41

89:                                               ; preds = %41
  %90 = load %struct.neighbour**, %struct.neighbour*** %5, align 8
  %91 = load %struct.neigh_table*, %struct.neigh_table** %3, align 8
  %92 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %91, i32 0, i32 2
  store %struct.neighbour** %90, %struct.neighbour*** %92, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.neigh_table*, %struct.neigh_table** %3, align 8
  %95 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.neighbour**, %struct.neighbour*** %6, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @neigh_hash_free(%struct.neighbour** %96, i32 %97)
  br label %99

99:                                               ; preds = %89, %26
  ret void
}

declare dso_local i32 @NEIGH_CACHE_STAT_INC(%struct.neigh_table*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @is_power_of_2(i64) #1

declare dso_local %struct.neighbour** @neigh_hash_alloc(i64) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @neigh_hash_free(%struct.neighbour**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
