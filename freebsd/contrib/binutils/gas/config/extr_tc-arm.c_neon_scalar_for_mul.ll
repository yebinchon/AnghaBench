; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_neon_scalar_for_mul.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_neon_scalar_for_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"scalar out of range for multiply instruction\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @neon_scalar_for_mul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neon_scalar_for_mul(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @NEON_SCALAR_REG(i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @NEON_SCALAR_INDEX(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %37 [
    i32 16, label %13
    i32 32, label %25
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = icmp ugt i32 %14, 7
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = icmp ugt i32 %17, 3
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %13
  br label %38

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = shl i32 %22, 3
  %24 = or i32 %21, %23
  store i32 %24, i32* %3, align 4
  br label %42

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  %27 = icmp ugt i32 %26, 15
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = icmp ugt i32 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %25
  br label %38

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = shl i32 %34, 4
  %36 = or i32 %33, %35
  store i32 %36, i32* %3, align 4
  br label %42

37:                                               ; preds = %2
  br label %38

38:                                               ; preds = %37, %31, %19
  %39 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %40 = call i32 @first_error(i32 %39)
  br label %41

41:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %32, %20
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @NEON_SCALAR_REG(i32) #1

declare dso_local i32 @NEON_SCALAR_INDEX(i32) #1

declare dso_local i32 @first_error(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
