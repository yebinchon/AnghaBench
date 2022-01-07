; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_libcall_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_libcall_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_64BIT = common dso_local global i64 0, align 8
@FIRST_SSE_REG = common dso_local global i32 0, align 4
@FIRST_FLOAT_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ix86_libcall_value(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i64, i64* @TARGET_64BIT, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %17 [
    i32 133, label %8
    i32 135, label %8
    i32 136, label %8
    i32 138, label %8
    i32 130, label %8
    i32 134, label %8
    i32 137, label %8
    i32 131, label %8
    i32 128, label %12
    i32 129, label %12
    i32 132, label %16
  ]

8:                                                ; preds = %6, %6, %6, %6, %6, %6, %6, %6
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @FIRST_SSE_REG, align 4
  %11 = call i32* @gen_rtx_REG(i32 %9, i32 %10)
  store i32* %11, i32** %2, align 8
  br label %25

12:                                               ; preds = %6, %6
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @FIRST_FLOAT_REG, align 4
  %15 = call i32* @gen_rtx_REG(i32 %13, i32 %14)
  store i32* %15, i32** %2, align 8
  br label %25

16:                                               ; preds = %6
  store i32* null, i32** %2, align 8
  br label %25

17:                                               ; preds = %6
  %18 = load i32, i32* %3, align 4
  %19 = call i32* @gen_rtx_REG(i32 %18, i32 0)
  store i32* %19, i32** %2, align 8
  br label %25

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @ix86_value_regno(i32 %22, i32* null, i32* null)
  %24 = call i32* @gen_rtx_REG(i32 %21, i32 %23)
  store i32* %24, i32** %2, align 8
  br label %25

25:                                               ; preds = %20, %17, %16, %12, %8
  %26 = load i32*, i32** %2, align 8
  ret i32* %26
}

declare dso_local i32* @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @ix86_value_regno(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
