; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_insvdi_rshift_rlwimi_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_insvdi_rshift_rlwimi_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @insvdi_rshift_rlwimi_p(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @INTVAL(i32 %8)
  %10 = icmp sgt i32 %9, 32
  br i1 %10, label %11, label %46

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @INTVAL(i32 %12)
  %14 = icmp slt i32 %13, 64
  br i1 %14, label %15, label %46

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @INTVAL(i32 %16)
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %46

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @INTVAL(i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @INTVAL(i32 %22)
  %24 = add nsw i32 %21, %23
  %25 = icmp slt i32 %24, 64
  br i1 %25, label %26, label %46

26:                                               ; preds = %19
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @INTVAL(i32 %27)
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @INTVAL(i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @INTVAL(i32 %33)
  %35 = add nsw i32 %32, %34
  %36 = icmp slt i32 %35, 32
  br i1 %36, label %37, label %46

37:                                               ; preds = %30
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @INTVAL(i32 %38)
  %40 = and i32 %39, 63
  %41 = sub nsw i32 64, %40
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @INTVAL(i32 %42)
  %44 = icmp sge i32 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 1, i32* %4, align 4
  br label %47

46:                                               ; preds = %37, %30, %26, %19, %15, %11, %3
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %45
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @INTVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
