; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloopmanip.c_duplicate_subloops.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloopmanip.c_duplicate_subloops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loops = type { i32 }
%struct.loop = type { %struct.loop*, %struct.loop* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.loops*, %struct.loop*, %struct.loop*)* @duplicate_subloops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @duplicate_subloops(%struct.loops* %0, %struct.loop* %1, %struct.loop* %2) #0 {
  %4 = alloca %struct.loops*, align 8
  %5 = alloca %struct.loop*, align 8
  %6 = alloca %struct.loop*, align 8
  %7 = alloca %struct.loop*, align 8
  %8 = alloca %struct.loop*, align 8
  store %struct.loops* %0, %struct.loops** %4, align 8
  store %struct.loop* %1, %struct.loop** %5, align 8
  store %struct.loop* %2, %struct.loop** %6, align 8
  %9 = load %struct.loop*, %struct.loop** %5, align 8
  %10 = getelementptr inbounds %struct.loop, %struct.loop* %9, i32 0, i32 1
  %11 = load %struct.loop*, %struct.loop** %10, align 8
  store %struct.loop* %11, %struct.loop** %7, align 8
  br label %12

12:                                               ; preds = %23, %3
  %13 = load %struct.loop*, %struct.loop** %7, align 8
  %14 = icmp ne %struct.loop* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = load %struct.loops*, %struct.loops** %4, align 8
  %17 = load %struct.loop*, %struct.loop** %7, align 8
  %18 = load %struct.loop*, %struct.loop** %6, align 8
  %19 = call %struct.loop* @duplicate_loop(%struct.loops* %16, %struct.loop* %17, %struct.loop* %18)
  store %struct.loop* %19, %struct.loop** %8, align 8
  %20 = load %struct.loops*, %struct.loops** %4, align 8
  %21 = load %struct.loop*, %struct.loop** %7, align 8
  %22 = load %struct.loop*, %struct.loop** %8, align 8
  call void @duplicate_subloops(%struct.loops* %20, %struct.loop* %21, %struct.loop* %22)
  br label %23

23:                                               ; preds = %15
  %24 = load %struct.loop*, %struct.loop** %7, align 8
  %25 = getelementptr inbounds %struct.loop, %struct.loop* %24, i32 0, i32 0
  %26 = load %struct.loop*, %struct.loop** %25, align 8
  store %struct.loop* %26, %struct.loop** %7, align 8
  br label %12

27:                                               ; preds = %12
  ret void
}

declare dso_local %struct.loop* @duplicate_loop(%struct.loops*, %struct.loop*, %struct.loop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
