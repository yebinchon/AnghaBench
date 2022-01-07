; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_alias.c_fixed_scalar_and_varying_struct_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_alias.c_fixed_scalar_and_varying_struct_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flag_strict_aliasing = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32 (i32, i32)*)* @fixed_scalar_and_varying_struct_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fixed_scalar_and_varying_struct_p(i32 %0, i32 %1, i32 %2, i32 %3, i32 (i32, i32)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32 (i32, i32)*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 (i32, i32)* %4, i32 (i32, i32)** %11, align 8
  %12 = load i32, i32* @flag_strict_aliasing, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  %15 = load i32, i32* @NULL_RTX, align 4
  store i32 %15, i32* %6, align 4
  br label %58

16:                                               ; preds = %5
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @MEM_SCALAR_P(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @MEM_IN_STRUCT_P(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load i32 (i32, i32)*, i32 (i32, i32)** %11, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 %25(i32 %26, i32 1)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %24
  %30 = load i32 (i32, i32)*, i32 (i32, i32)** %11, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 %30(i32 %31, i32 1)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %6, align 4
  br label %58

36:                                               ; preds = %29, %24, %20, %16
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @MEM_IN_STRUCT_P(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  %42 = call i64 @MEM_SCALAR_P(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  %45 = load i32 (i32, i32)*, i32 (i32, i32)** %11, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 %45(i32 %46, i32 1)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load i32 (i32, i32)*, i32 (i32, i32)** %11, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 %50(i32 %51, i32 1)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %6, align 4
  br label %58

56:                                               ; preds = %49, %44, %40, %36
  %57 = load i32, i32* @NULL_RTX, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %56, %54, %34, %14
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i64 @MEM_SCALAR_P(i32) #1

declare dso_local i64 @MEM_IN_STRUCT_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
