; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c___neigh_set_probe_once.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c___neigh_set_probe_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neighbour = type { i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@NUD_FAILED = common dso_local global i32 0, align 4
@NUD_PROBE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__neigh_set_probe_once(%struct.neighbour* %0) #0 {
  %2 = alloca %struct.neighbour*, align 8
  store %struct.neighbour* %0, %struct.neighbour** %2, align 8
  %3 = load i64, i64* @jiffies, align 8
  %4 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %5 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %4, i32 0, i32 3
  store i64 %3, i64* %5, align 8
  %6 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %7 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @NUD_FAILED, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %34

13:                                               ; preds = %1
  %14 = load i32, i32* @NUD_PROBE, align 4
  %15 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %16 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %18 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %17, i32 0, i32 2
  %19 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %20 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @atomic_set(i32* %18, i32 %23)
  %25 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %26 = load i64, i64* @jiffies, align 8
  %27 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %28 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %26, %31
  %33 = call i32 @neigh_add_timer(%struct.neighbour* %25, i64 %32)
  br label %34

34:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @neigh_add_timer(%struct.neighbour*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
