; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_suspect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_suspect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neighbour = type { %struct.TYPE_2__*, %struct.hh_cache*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hh_cache = type { i32, %struct.hh_cache* }

@.str = private unnamed_addr constant [24 x i8] c"neigh %p is suspected.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.neighbour*)* @neigh_suspect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neigh_suspect(%struct.neighbour* %0) #0 {
  %2 = alloca %struct.neighbour*, align 8
  %3 = alloca %struct.hh_cache*, align 8
  store %struct.neighbour* %0, %struct.neighbour** %2, align 8
  %4 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %5 = call i32 @NEIGH_PRINTK2(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.neighbour* %4)
  %6 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %7 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %12 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 8
  %13 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %14 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %13, i32 0, i32 1
  %15 = load %struct.hh_cache*, %struct.hh_cache** %14, align 8
  store %struct.hh_cache* %15, %struct.hh_cache** %3, align 8
  br label %16

16:                                               ; preds = %27, %1
  %17 = load %struct.hh_cache*, %struct.hh_cache** %3, align 8
  %18 = icmp ne %struct.hh_cache* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %21 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.hh_cache*, %struct.hh_cache** %3, align 8
  %26 = getelementptr inbounds %struct.hh_cache, %struct.hh_cache* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  br label %27

27:                                               ; preds = %19
  %28 = load %struct.hh_cache*, %struct.hh_cache** %3, align 8
  %29 = getelementptr inbounds %struct.hh_cache, %struct.hh_cache* %28, i32 0, i32 1
  %30 = load %struct.hh_cache*, %struct.hh_cache** %29, align 8
  store %struct.hh_cache* %30, %struct.hh_cache** %3, align 8
  br label %16

31:                                               ; preds = %16
  ret void
}

declare dso_local i32 @NEIGH_PRINTK2(i8*, %struct.neighbour*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
