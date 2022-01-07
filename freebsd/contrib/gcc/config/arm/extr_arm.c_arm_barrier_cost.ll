; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_barrier_cost.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_barrier_cost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @arm_barrier_cost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_barrier_cost(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 50, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = call i32* @next_nonnote_insn(i32* %6)
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load i32*, i32** %5, align 8
  %12 = call i64 @GET_CODE(i32* %11)
  %13 = icmp eq i64 %12, 130
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = sub nsw i32 %15, 20
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %14, %10, %1
  %18 = load i32*, i32** %3, align 8
  %19 = call i64 @GET_CODE(i32* %18)
  switch i64 %19, label %26 [
    i64 130, label %20
    i64 129, label %21
    i64 131, label %21
    i64 128, label %23
  ]

20:                                               ; preds = %17
  store i32 50, i32* %2, align 4
  br label %29

21:                                               ; preds = %17, %17
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %29

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  %25 = sub nsw i32 %24, 10
  store i32 %25, i32* %2, align 4
  br label %29

26:                                               ; preds = %17
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 10
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %23, %21, %20
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32* @next_nonnote_insn(i32*) #1

declare dso_local i64 @GET_CODE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
