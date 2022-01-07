; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_warn_for_collisions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_warn_for_collisions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlist = type { i64, i32, %struct.tlist* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tlist*)* @warn_for_collisions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @warn_for_collisions(%struct.tlist* %0) #0 {
  %2 = alloca %struct.tlist*, align 8
  %3 = alloca %struct.tlist*, align 8
  store %struct.tlist* %0, %struct.tlist** %2, align 8
  %4 = load %struct.tlist*, %struct.tlist** %2, align 8
  store %struct.tlist* %4, %struct.tlist** %3, align 8
  br label %5

5:                                                ; preds = %23, %1
  %6 = load %struct.tlist*, %struct.tlist** %3, align 8
  %7 = icmp ne %struct.tlist* %6, null
  br i1 %7, label %8, label %27

8:                                                ; preds = %5
  %9 = load %struct.tlist*, %struct.tlist** %3, align 8
  %10 = getelementptr inbounds %struct.tlist, %struct.tlist* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %8
  %14 = load %struct.tlist*, %struct.tlist** %3, align 8
  %15 = getelementptr inbounds %struct.tlist, %struct.tlist* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.tlist*, %struct.tlist** %3, align 8
  %18 = getelementptr inbounds %struct.tlist, %struct.tlist* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.tlist*, %struct.tlist** %2, align 8
  %21 = call i32 @warn_for_collisions_1(i32 %16, i64 %19, %struct.tlist* %20, i32 0)
  br label %22

22:                                               ; preds = %13, %8
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.tlist*, %struct.tlist** %3, align 8
  %25 = getelementptr inbounds %struct.tlist, %struct.tlist* %24, i32 0, i32 2
  %26 = load %struct.tlist*, %struct.tlist** %25, align 8
  store %struct.tlist* %26, %struct.tlist** %3, align 8
  br label %5

27:                                               ; preds = %5
  ret void
}

declare dso_local i32 @warn_for_collisions_1(i32, i64, %struct.tlist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
