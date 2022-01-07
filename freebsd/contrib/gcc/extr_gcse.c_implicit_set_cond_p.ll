; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_implicit_set_cond_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_implicit_set_cond_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONST_DOUBLE = common dso_local global i64 0, align 8
@dconst0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @implicit_set_cond_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @implicit_set_cond_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @XEXP(i32 %7, i32 0)
  %9 = call i32 @GET_MODE(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @XEXP(i32 %10, i32 1)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @HONOR_SIGNED_ZEROS(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @GET_CODE(i32 %16)
  %18 = load i64, i64* @CONST_DOUBLE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @REAL_VALUE_FROM_CONST_DOUBLE(i32 %21, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @dconst0, align 4
  %26 = call i64 @REAL_VALUES_EQUAL(i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %35

29:                                               ; preds = %20
  br label %31

30:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %35

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %31, %1
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @gcse_constant_p(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %32, %30, %28
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @HONOR_SIGNED_ZEROS(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @REAL_VALUE_FROM_CONST_DOUBLE(i32, i32) #1

declare dso_local i64 @REAL_VALUES_EQUAL(i32, i32) #1

declare dso_local i32 @gcse_constant_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
