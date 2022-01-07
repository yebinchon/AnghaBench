; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_const_ok_for_letter_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_const_ok_for_letter_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ia64_const_ok_for_letter_p(i32 %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i8 %1, i8* %5, align 1
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  switch i32 %7, label %32 [
    i32 73, label %8
    i32 74, label %11
    i32 75, label %14
    i32 76, label %17
    i32 77, label %20
    i32 78, label %23
    i32 79, label %26
    i32 80, label %29
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @CONST_OK_FOR_I(i32 %9)
  store i32 %10, i32* %3, align 4
  br label %33

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @CONST_OK_FOR_J(i32 %12)
  store i32 %13, i32* %3, align 4
  br label %33

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @CONST_OK_FOR_K(i32 %15)
  store i32 %16, i32* %3, align 4
  br label %33

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @CONST_OK_FOR_L(i32 %18)
  store i32 %19, i32* %3, align 4
  br label %33

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @CONST_OK_FOR_M(i32 %21)
  store i32 %22, i32* %3, align 4
  br label %33

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @CONST_OK_FOR_N(i32 %24)
  store i32 %25, i32* %3, align 4
  br label %33

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @CONST_OK_FOR_O(i32 %27)
  store i32 %28, i32* %3, align 4
  br label %33

29:                                               ; preds = %2
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @CONST_OK_FOR_P(i32 %30)
  store i32 %31, i32* %3, align 4
  br label %33

32:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %29, %26, %23, %20, %17, %14, %11, %8
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @CONST_OK_FOR_I(i32) #1

declare dso_local i32 @CONST_OK_FOR_J(i32) #1

declare dso_local i32 @CONST_OK_FOR_K(i32) #1

declare dso_local i32 @CONST_OK_FOR_L(i32) #1

declare dso_local i32 @CONST_OK_FOR_M(i32) #1

declare dso_local i32 @CONST_OK_FOR_N(i32) #1

declare dso_local i32 @CONST_OK_FOR_O(i32) #1

declare dso_local i32 @CONST_OK_FOR_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
