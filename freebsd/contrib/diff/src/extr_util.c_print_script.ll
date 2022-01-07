; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_util.c_print_script.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_util.c_print_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.change = type { %struct.change* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_script(%struct.change* %0, %struct.change* (%struct.change*)* %1, void (%struct.change*)* %2) #0 {
  %4 = alloca %struct.change*, align 8
  %5 = alloca %struct.change* (%struct.change*)*, align 8
  %6 = alloca void (%struct.change*)*, align 8
  %7 = alloca %struct.change*, align 8
  %8 = alloca %struct.change*, align 8
  %9 = alloca %struct.change*, align 8
  store %struct.change* %0, %struct.change** %4, align 8
  store %struct.change* (%struct.change*)* %1, %struct.change* (%struct.change*)** %5, align 8
  store void (%struct.change*)* %2, void (%struct.change*)** %6, align 8
  %10 = load %struct.change*, %struct.change** %4, align 8
  store %struct.change* %10, %struct.change** %7, align 8
  br label %11

11:                                               ; preds = %14, %3
  %12 = load %struct.change*, %struct.change** %7, align 8
  %13 = icmp ne %struct.change* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %11
  %15 = load %struct.change*, %struct.change** %7, align 8
  store %struct.change* %15, %struct.change** %8, align 8
  %16 = load %struct.change* (%struct.change*)*, %struct.change* (%struct.change*)** %5, align 8
  %17 = load %struct.change*, %struct.change** %7, align 8
  %18 = call %struct.change* %16(%struct.change* %17)
  store %struct.change* %18, %struct.change** %9, align 8
  %19 = load %struct.change*, %struct.change** %9, align 8
  %20 = getelementptr inbounds %struct.change, %struct.change* %19, i32 0, i32 0
  %21 = load %struct.change*, %struct.change** %20, align 8
  store %struct.change* %21, %struct.change** %7, align 8
  %22 = load %struct.change*, %struct.change** %9, align 8
  %23 = getelementptr inbounds %struct.change, %struct.change* %22, i32 0, i32 0
  store %struct.change* null, %struct.change** %23, align 8
  %24 = load void (%struct.change*)*, void (%struct.change*)** %6, align 8
  %25 = load %struct.change*, %struct.change** %8, align 8
  call void %24(%struct.change* %25)
  %26 = load %struct.change*, %struct.change** %7, align 8
  %27 = load %struct.change*, %struct.change** %9, align 8
  %28 = getelementptr inbounds %struct.change, %struct.change* %27, i32 0, i32 0
  store %struct.change* %26, %struct.change** %28, align 8
  br label %11

29:                                               ; preds = %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
