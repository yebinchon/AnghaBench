; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloopmanip.c_place_new_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloopmanip.c_place_new_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loops = type { i32, %struct.loop** }
%struct.loop = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.loops*, %struct.loop*)* @place_new_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @place_new_loop(%struct.loops* %0, %struct.loop* %1) #0 {
  %3 = alloca %struct.loops*, align 8
  %4 = alloca %struct.loop*, align 8
  store %struct.loops* %0, %struct.loops** %3, align 8
  store %struct.loop* %1, %struct.loop** %4, align 8
  %5 = load %struct.loops*, %struct.loops** %3, align 8
  %6 = getelementptr inbounds %struct.loops, %struct.loops* %5, i32 0, i32 1
  %7 = load %struct.loop**, %struct.loop*** %6, align 8
  %8 = load %struct.loops*, %struct.loops** %3, align 8
  %9 = getelementptr inbounds %struct.loops, %struct.loops* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 8
  %14 = trunc i64 %13 to i32
  %15 = call %struct.loop** @xrealloc(%struct.loop** %7, i32 %14)
  %16 = load %struct.loops*, %struct.loops** %3, align 8
  %17 = getelementptr inbounds %struct.loops, %struct.loops* %16, i32 0, i32 1
  store %struct.loop** %15, %struct.loop*** %17, align 8
  %18 = load %struct.loop*, %struct.loop** %4, align 8
  %19 = load %struct.loops*, %struct.loops** %3, align 8
  %20 = getelementptr inbounds %struct.loops, %struct.loops* %19, i32 0, i32 1
  %21 = load %struct.loop**, %struct.loop*** %20, align 8
  %22 = load %struct.loops*, %struct.loops** %3, align 8
  %23 = getelementptr inbounds %struct.loops, %struct.loops* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.loop*, %struct.loop** %21, i64 %25
  store %struct.loop* %18, %struct.loop** %26, align 8
  %27 = load %struct.loops*, %struct.loops** %3, align 8
  %28 = getelementptr inbounds %struct.loops, %struct.loops* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  %31 = load %struct.loop*, %struct.loop** %4, align 8
  %32 = getelementptr inbounds %struct.loop, %struct.loop* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  ret void
}

declare dso_local %struct.loop** @xrealloc(%struct.loop**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
