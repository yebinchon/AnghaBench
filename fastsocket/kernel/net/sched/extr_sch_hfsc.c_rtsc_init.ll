; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_hfsc.c_rtsc_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_hfsc.c_rtsc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.runtime_sc = type { i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.internal_sc = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.runtime_sc*, %struct.internal_sc*, i8*, i8*)* @rtsc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtsc_init(%struct.runtime_sc* %0, %struct.internal_sc* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.runtime_sc*, align 8
  %6 = alloca %struct.internal_sc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.runtime_sc* %0, %struct.runtime_sc** %5, align 8
  store %struct.internal_sc* %1, %struct.internal_sc** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = load %struct.runtime_sc*, %struct.runtime_sc** %5, align 8
  %11 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %10, i32 0, i32 7
  store i8* %9, i8** %11, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = load %struct.runtime_sc*, %struct.runtime_sc** %5, align 8
  %14 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %13, i32 0, i32 6
  store i8* %12, i8** %14, align 8
  %15 = load %struct.internal_sc*, %struct.internal_sc** %6, align 8
  %16 = getelementptr inbounds %struct.internal_sc, %struct.internal_sc* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.runtime_sc*, %struct.runtime_sc** %5, align 8
  %19 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 4
  %20 = load %struct.internal_sc*, %struct.internal_sc** %6, align 8
  %21 = getelementptr inbounds %struct.internal_sc, %struct.internal_sc* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.runtime_sc*, %struct.runtime_sc** %5, align 8
  %24 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 8
  %25 = load %struct.internal_sc*, %struct.internal_sc** %6, align 8
  %26 = getelementptr inbounds %struct.internal_sc, %struct.internal_sc* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.runtime_sc*, %struct.runtime_sc** %5, align 8
  %29 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.internal_sc*, %struct.internal_sc** %6, align 8
  %31 = getelementptr inbounds %struct.internal_sc, %struct.internal_sc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.runtime_sc*, %struct.runtime_sc** %5, align 8
  %34 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.internal_sc*, %struct.internal_sc** %6, align 8
  %36 = getelementptr inbounds %struct.internal_sc, %struct.internal_sc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.runtime_sc*, %struct.runtime_sc** %5, align 8
  %39 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.internal_sc*, %struct.internal_sc** %6, align 8
  %41 = getelementptr inbounds %struct.internal_sc, %struct.internal_sc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.runtime_sc*, %struct.runtime_sc** %5, align 8
  %44 = getelementptr inbounds %struct.runtime_sc, %struct.runtime_sc* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
