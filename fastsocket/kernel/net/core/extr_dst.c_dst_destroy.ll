; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dst.c_dst_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dst.c_dst_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32, i32, %struct.TYPE_2__*, i64, %struct.neighbour*, %struct.hh_cache*, %struct.dst_entry* }
%struct.TYPE_2__ = type { i32, i32 (%struct.dst_entry*)*, i32 }
%struct.neighbour = type { i32 }
%struct.hh_cache = type { i32 }

@DST_NOHASH = common dso_local global i32 0, align 4
@dst_total = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dst_entry* @dst_destroy(%struct.dst_entry* %0) #0 {
  %2 = alloca %struct.dst_entry*, align 8
  %3 = alloca %struct.dst_entry*, align 8
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca %struct.neighbour*, align 8
  %6 = alloca %struct.hh_cache*, align 8
  %7 = alloca i32, align 4
  store %struct.dst_entry* %0, %struct.dst_entry** %3, align 8
  %8 = call i32 (...) @smp_rmb()
  br label %9

9:                                                ; preds = %93, %1
  %10 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %11 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %10, i32 0, i32 4
  %12 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  store %struct.neighbour* %12, %struct.neighbour** %5, align 8
  %13 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %14 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %13, i32 0, i32 5
  %15 = load %struct.hh_cache*, %struct.hh_cache** %14, align 8
  store %struct.hh_cache* %15, %struct.hh_cache** %6, align 8
  %16 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %17 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %16, i32 0, i32 6
  %18 = load %struct.dst_entry*, %struct.dst_entry** %17, align 8
  store %struct.dst_entry* %18, %struct.dst_entry** %4, align 8
  %19 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %20 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %19, i32 0, i32 5
  store %struct.hh_cache* null, %struct.hh_cache** %20, align 8
  %21 = load %struct.hh_cache*, %struct.hh_cache** %6, align 8
  %22 = icmp ne %struct.hh_cache* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %9
  %24 = load %struct.hh_cache*, %struct.hh_cache** %6, align 8
  %25 = getelementptr inbounds %struct.hh_cache, %struct.hh_cache* %24, i32 0, i32 0
  %26 = call i64 @atomic_dec_and_test(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.hh_cache*, %struct.hh_cache** %6, align 8
  %30 = call i32 @kfree(%struct.hh_cache* %29)
  br label %31

31:                                               ; preds = %28, %23, %9
  %32 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %33 = icmp ne %struct.neighbour* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %36 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %35, i32 0, i32 4
  store %struct.neighbour* null, %struct.neighbour** %36, align 8
  %37 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %38 = call i32 @neigh_release(%struct.neighbour* %37)
  br label %39

39:                                               ; preds = %34, %31
  %40 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %41 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = call i32 @atomic_dec(i32* %43)
  %45 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %46 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32 (%struct.dst_entry*)*, i32 (%struct.dst_entry*)** %48, align 8
  %50 = icmp ne i32 (%struct.dst_entry*)* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %39
  %52 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %53 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32 (%struct.dst_entry*)*, i32 (%struct.dst_entry*)** %55, align 8
  %57 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %58 = call i32 %56(%struct.dst_entry* %57)
  br label %59

59:                                               ; preds = %51, %39
  %60 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %61 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %66 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @dev_put(i64 %67)
  br label %69

69:                                               ; preds = %64, %59
  %70 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %71 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %70, i32 0, i32 2
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %76 = call i32 @kmem_cache_free(i32 %74, %struct.dst_entry* %75)
  %77 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  store %struct.dst_entry* %77, %struct.dst_entry** %3, align 8
  %78 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %79 = icmp ne %struct.dst_entry* %78, null
  br i1 %79, label %80, label %102

80:                                               ; preds = %69
  %81 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %82 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @DST_NOHASH, align 4
  %85 = and i32 %83, %84
  store i32 %85, i32* %7, align 4
  %86 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %87 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %86, i32 0, i32 1
  %88 = call i64 @atomic_dec_and_test(i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %80
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  br label %9

94:                                               ; preds = %90
  br label %101

95:                                               ; preds = %80
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  store %struct.dst_entry* %99, %struct.dst_entry** %2, align 8
  br label %103

100:                                              ; preds = %95
  br label %101

101:                                              ; preds = %100, %94
  br label %102

102:                                              ; preds = %101, %69
  store %struct.dst_entry* null, %struct.dst_entry** %2, align 8
  br label %103

103:                                              ; preds = %102, %98
  %104 = load %struct.dst_entry*, %struct.dst_entry** %2, align 8
  ret %struct.dst_entry* %104
}

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @kfree(%struct.hh_cache*) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @dev_put(i64) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
