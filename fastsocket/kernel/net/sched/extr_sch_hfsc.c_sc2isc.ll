; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_hfsc.c_sc2isc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_hfsc.c_sc2isc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_service_curve = type { i32, i32, i32 }
%struct.internal_sc = type { i8*, i8*, i8*, i32, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tc_service_curve*, %struct.internal_sc*)* @sc2isc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sc2isc(%struct.tc_service_curve* %0, %struct.internal_sc* %1) #0 {
  %3 = alloca %struct.tc_service_curve*, align 8
  %4 = alloca %struct.internal_sc*, align 8
  store %struct.tc_service_curve* %0, %struct.tc_service_curve** %3, align 8
  store %struct.internal_sc* %1, %struct.internal_sc** %4, align 8
  %5 = load %struct.tc_service_curve*, %struct.tc_service_curve** %3, align 8
  %6 = getelementptr inbounds %struct.tc_service_curve, %struct.tc_service_curve* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @m2sm(i32 %7)
  %9 = load %struct.internal_sc*, %struct.internal_sc** %4, align 8
  %10 = getelementptr inbounds %struct.internal_sc, %struct.internal_sc* %9, i32 0, i32 2
  store i8* %8, i8** %10, align 8
  %11 = load %struct.tc_service_curve*, %struct.tc_service_curve** %3, align 8
  %12 = getelementptr inbounds %struct.tc_service_curve, %struct.tc_service_curve* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @m2ism(i32 %13)
  %15 = load %struct.internal_sc*, %struct.internal_sc** %4, align 8
  %16 = getelementptr inbounds %struct.internal_sc, %struct.internal_sc* %15, i32 0, i32 5
  store i8* %14, i8** %16, align 8
  %17 = load %struct.tc_service_curve*, %struct.tc_service_curve** %3, align 8
  %18 = getelementptr inbounds %struct.tc_service_curve, %struct.tc_service_curve* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @d2dx(i32 %19)
  %21 = load %struct.internal_sc*, %struct.internal_sc** %4, align 8
  %22 = getelementptr inbounds %struct.internal_sc, %struct.internal_sc* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load %struct.internal_sc*, %struct.internal_sc** %4, align 8
  %24 = getelementptr inbounds %struct.internal_sc, %struct.internal_sc* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.internal_sc*, %struct.internal_sc** %4, align 8
  %27 = getelementptr inbounds %struct.internal_sc, %struct.internal_sc* %26, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @seg_x2y(i32 %25, i8* %28)
  %30 = load %struct.internal_sc*, %struct.internal_sc** %4, align 8
  %31 = getelementptr inbounds %struct.internal_sc, %struct.internal_sc* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load %struct.tc_service_curve*, %struct.tc_service_curve** %3, align 8
  %33 = getelementptr inbounds %struct.tc_service_curve, %struct.tc_service_curve* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @m2sm(i32 %34)
  %36 = load %struct.internal_sc*, %struct.internal_sc** %4, align 8
  %37 = getelementptr inbounds %struct.internal_sc, %struct.internal_sc* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.tc_service_curve*, %struct.tc_service_curve** %3, align 8
  %39 = getelementptr inbounds %struct.tc_service_curve, %struct.tc_service_curve* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @m2ism(i32 %40)
  %42 = load %struct.internal_sc*, %struct.internal_sc** %4, align 8
  %43 = getelementptr inbounds %struct.internal_sc, %struct.internal_sc* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  ret void
}

declare dso_local i8* @m2sm(i32) #1

declare dso_local i8* @m2ism(i32) #1

declare dso_local i32 @d2dx(i32) #1

declare dso_local i32 @seg_x2y(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
