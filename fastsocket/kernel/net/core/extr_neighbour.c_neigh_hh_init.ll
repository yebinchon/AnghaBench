; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_hh_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_hh_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neighbour = type { i32, %struct.TYPE_4__*, %struct.hh_cache* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.hh_cache = type { i64, i32, i32, %struct.hh_cache*, i32 }
%struct.dst_entry = type { %struct.hh_cache*, %struct.net_device* }
%struct.net_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.neighbour*, %struct.hh_cache*)* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@NUD_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.neighbour*, %struct.dst_entry*, i64)* @neigh_hh_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neigh_hh_init(%struct.neighbour* %0, %struct.dst_entry* %1, i64 %2) #0 {
  %4 = alloca %struct.neighbour*, align 8
  %5 = alloca %struct.dst_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hh_cache*, align 8
  %8 = alloca %struct.net_device*, align 8
  store %struct.neighbour* %0, %struct.neighbour** %4, align 8
  store %struct.dst_entry* %1, %struct.dst_entry** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %10 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %9, i32 0, i32 1
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %8, align 8
  %12 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %13 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %12, i32 0, i32 2
  %14 = load %struct.hh_cache*, %struct.hh_cache** %13, align 8
  store %struct.hh_cache* %14, %struct.hh_cache** %7, align 8
  br label %15

15:                                               ; preds = %26, %3
  %16 = load %struct.hh_cache*, %struct.hh_cache** %7, align 8
  %17 = icmp ne %struct.hh_cache* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load %struct.hh_cache*, %struct.hh_cache** %7, align 8
  %20 = getelementptr inbounds %struct.hh_cache, %struct.hh_cache* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %30

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.hh_cache*, %struct.hh_cache** %7, align 8
  %28 = getelementptr inbounds %struct.hh_cache, %struct.hh_cache* %27, i32 0, i32 3
  %29 = load %struct.hh_cache*, %struct.hh_cache** %28, align 8
  store %struct.hh_cache* %29, %struct.hh_cache** %7, align 8
  br label %15

30:                                               ; preds = %24, %15
  %31 = load %struct.hh_cache*, %struct.hh_cache** %7, align 8
  %32 = icmp ne %struct.hh_cache* %31, null
  br i1 %32, label %97, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @GFP_ATOMIC, align 4
  %35 = call %struct.hh_cache* @kzalloc(i32 32, i32 %34)
  store %struct.hh_cache* %35, %struct.hh_cache** %7, align 8
  %36 = icmp ne %struct.hh_cache* %35, null
  br i1 %36, label %37, label %97

37:                                               ; preds = %33
  %38 = load %struct.hh_cache*, %struct.hh_cache** %7, align 8
  %39 = getelementptr inbounds %struct.hh_cache, %struct.hh_cache* %38, i32 0, i32 4
  %40 = call i32 @seqlock_init(i32* %39)
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.hh_cache*, %struct.hh_cache** %7, align 8
  %43 = getelementptr inbounds %struct.hh_cache, %struct.hh_cache* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.hh_cache*, %struct.hh_cache** %7, align 8
  %45 = getelementptr inbounds %struct.hh_cache, %struct.hh_cache* %44, i32 0, i32 1
  %46 = call i32 @atomic_set(i32* %45, i32 0)
  %47 = load %struct.hh_cache*, %struct.hh_cache** %7, align 8
  %48 = getelementptr inbounds %struct.hh_cache, %struct.hh_cache* %47, i32 0, i32 3
  store %struct.hh_cache* null, %struct.hh_cache** %48, align 8
  %49 = load %struct.net_device*, %struct.net_device** %8, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64 (%struct.neighbour*, %struct.hh_cache*)*, i64 (%struct.neighbour*, %struct.hh_cache*)** %52, align 8
  %54 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %55 = load %struct.hh_cache*, %struct.hh_cache** %7, align 8
  %56 = call i64 %53(%struct.neighbour* %54, %struct.hh_cache* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %37
  %59 = load %struct.hh_cache*, %struct.hh_cache** %7, align 8
  %60 = call i32 @kfree(%struct.hh_cache* %59)
  store %struct.hh_cache* null, %struct.hh_cache** %7, align 8
  br label %96

61:                                               ; preds = %37
  %62 = load %struct.hh_cache*, %struct.hh_cache** %7, align 8
  %63 = getelementptr inbounds %struct.hh_cache, %struct.hh_cache* %62, i32 0, i32 1
  %64 = call i32 @atomic_inc(i32* %63)
  %65 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %66 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %65, i32 0, i32 2
  %67 = load %struct.hh_cache*, %struct.hh_cache** %66, align 8
  %68 = load %struct.hh_cache*, %struct.hh_cache** %7, align 8
  %69 = getelementptr inbounds %struct.hh_cache, %struct.hh_cache* %68, i32 0, i32 3
  store %struct.hh_cache* %67, %struct.hh_cache** %69, align 8
  %70 = load %struct.hh_cache*, %struct.hh_cache** %7, align 8
  %71 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %72 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %71, i32 0, i32 2
  store %struct.hh_cache* %70, %struct.hh_cache** %72, align 8
  %73 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %74 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @NUD_CONNECTED, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %61
  %80 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %81 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.hh_cache*, %struct.hh_cache** %7, align 8
  %86 = getelementptr inbounds %struct.hh_cache, %struct.hh_cache* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  br label %95

87:                                               ; preds = %61
  %88 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %89 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.hh_cache*, %struct.hh_cache** %7, align 8
  %94 = getelementptr inbounds %struct.hh_cache, %struct.hh_cache* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %87, %79
  br label %96

96:                                               ; preds = %95, %58
  br label %97

97:                                               ; preds = %96, %33, %30
  %98 = load %struct.hh_cache*, %struct.hh_cache** %7, align 8
  %99 = icmp ne %struct.hh_cache* %98, null
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load %struct.hh_cache*, %struct.hh_cache** %7, align 8
  %102 = getelementptr inbounds %struct.hh_cache, %struct.hh_cache* %101, i32 0, i32 1
  %103 = call i32 @atomic_inc(i32* %102)
  %104 = load %struct.hh_cache*, %struct.hh_cache** %7, align 8
  %105 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %106 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %105, i32 0, i32 0
  store %struct.hh_cache* %104, %struct.hh_cache** %106, align 8
  br label %107

107:                                              ; preds = %100, %97
  ret void
}

declare dso_local %struct.hh_cache* @kzalloc(i32, i32) #1

declare dso_local i32 @seqlock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @kfree(%struct.hh_cache*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
