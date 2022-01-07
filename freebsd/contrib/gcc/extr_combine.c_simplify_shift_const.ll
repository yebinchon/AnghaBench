; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_simplify_shift_const.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_simplify_shift_const.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32, i32, i64, i32)* @simplify_shift_const to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @simplify_shift_const(i64 %0, i32 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i64, i64* %10, align 8
  %16 = load i32, i32* %11, align 4
  %17 = call i64 @simplify_shift_const_1(i32 %13, i32 %14, i64 %15, i32 %16)
  store i64 %17, i64* %12, align 8
  %18 = load i64, i64* %12, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i64, i64* %12, align 8
  store i64 %21, i64* %6, align 8
  br label %44

22:                                               ; preds = %5
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %8, align 4
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @GET_MODE(i64 %27)
  %29 = load i64, i64* %10, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @GEN_INT(i32 %30)
  %32 = call i64 @simplify_gen_binary(i32 %26, i32 %28, i64 %29, i32 %31)
  store i64 %32, i64* %7, align 8
  br label %33

33:                                               ; preds = %25, %22
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @GET_MODE(i64 %34)
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* %9, align 4
  %40 = load i64, i64* %7, align 8
  %41 = call i64 @gen_lowpart(i32 %39, i64 %40)
  store i64 %41, i64* %7, align 8
  br label %42

42:                                               ; preds = %38, %33
  %43 = load i64, i64* %7, align 8
  store i64 %43, i64* %6, align 8
  br label %44

44:                                               ; preds = %42, %20
  %45 = load i64, i64* %6, align 8
  ret i64 %45
}

declare dso_local i64 @simplify_shift_const_1(i32, i32, i64, i32) #1

declare dso_local i64 @simplify_gen_binary(i32, i32, i64, i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i64 @gen_lowpart(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
