; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_reg_subword_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_reg_subword_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MODE_INT = common dso_local global i64 0, align 8
@STRICT_LOW_PART = common dso_local global i64 0, align 8
@ZERO_EXTRACT = common dso_local global i64 0, align 8
@SUBREG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @reg_subword_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_subword_p(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = call i32 @REG_P(i64 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @GET_MODE(i64 %10)
  %12 = call i64 @GET_MODE_CLASS(i32 %11)
  %13 = load i64, i64* @MODE_INT, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %2
  store i32 0, i32* %3, align 4
  br label %48

16:                                               ; preds = %9
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @GET_CODE(i64 %17)
  %19 = load i64, i64* @STRICT_LOW_PART, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @GET_CODE(i64 %22)
  %24 = load i64, i64* @ZERO_EXTRACT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21, %16
  %27 = load i64, i64* %4, align 8
  %28 = call i64 @XEXP(i64 %27, i32 0)
  store i64 %28, i64* %4, align 8
  br label %29

29:                                               ; preds = %26, %21
  %30 = load i64, i64* %4, align 8
  %31 = call i64 @GET_CODE(i64 %30)
  %32 = load i64, i64* @SUBREG, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load i64, i64* %4, align 8
  %36 = call i64 @SUBREG_REG(i64 %35)
  %37 = load i64, i64* %5, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @GET_MODE(i64 %40)
  %42 = call i64 @GET_MODE_CLASS(i32 %41)
  %43 = load i64, i64* @MODE_INT, align 8
  %44 = icmp eq i64 %42, %43
  br label %45

45:                                               ; preds = %39, %34, %29
  %46 = phi i1 [ false, %34 ], [ false, %29 ], [ %44, %39 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %45, %15
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @REG_P(i64) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @SUBREG_REG(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
