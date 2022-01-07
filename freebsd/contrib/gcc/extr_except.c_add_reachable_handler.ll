; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_add_reachable_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_add_reachable_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.reachable_info = type { i32, i32, i32 (%struct.eh_region*, i32)* }
%struct.eh_region = type opaque
%struct.eh_region.0 = type { i32 }

@cfun = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.reachable_info*, %struct.eh_region.0*, %struct.eh_region.0*)* @add_reachable_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_reachable_handler(%struct.reachable_info* %0, %struct.eh_region.0* %1, %struct.eh_region.0* %2) #0 {
  %4 = alloca %struct.reachable_info*, align 8
  %5 = alloca %struct.eh_region.0*, align 8
  %6 = alloca %struct.eh_region.0*, align 8
  store %struct.reachable_info* %0, %struct.reachable_info** %4, align 8
  store %struct.eh_region.0* %1, %struct.eh_region.0** %5, align 8
  store %struct.eh_region.0* %2, %struct.eh_region.0** %6, align 8
  %7 = load %struct.reachable_info*, %struct.reachable_info** %4, align 8
  %8 = icmp ne %struct.reachable_info* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  br label %39

10:                                               ; preds = %3
  %11 = load %struct.reachable_info*, %struct.reachable_info** %4, align 8
  %12 = getelementptr inbounds %struct.reachable_info, %struct.reachable_info* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %10
  %20 = load %struct.reachable_info*, %struct.reachable_info** %4, align 8
  %21 = getelementptr inbounds %struct.reachable_info, %struct.reachable_info* %20, i32 0, i32 2
  %22 = load i32 (%struct.eh_region*, i32)*, i32 (%struct.eh_region*, i32)** %21, align 8
  %23 = load %struct.eh_region.0*, %struct.eh_region.0** %5, align 8
  %24 = bitcast %struct.eh_region.0* %23 to %struct.eh_region*
  %25 = load %struct.reachable_info*, %struct.reachable_info** %4, align 8
  %26 = getelementptr inbounds %struct.reachable_info, %struct.reachable_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 %22(%struct.eh_region* %24, i32 %27)
  br label %39

29:                                               ; preds = %10
  %30 = load %struct.reachable_info*, %struct.reachable_info** %4, align 8
  %31 = getelementptr inbounds %struct.reachable_info, %struct.reachable_info* %30, i32 0, i32 2
  %32 = load i32 (%struct.eh_region*, i32)*, i32 (%struct.eh_region*, i32)** %31, align 8
  %33 = load %struct.eh_region.0*, %struct.eh_region.0** %6, align 8
  %34 = bitcast %struct.eh_region.0* %33 to %struct.eh_region*
  %35 = load %struct.reachable_info*, %struct.reachable_info** %4, align 8
  %36 = getelementptr inbounds %struct.reachable_info, %struct.reachable_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 %32(%struct.eh_region* %34, i32 %37)
  br label %39

39:                                               ; preds = %9, %29, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
