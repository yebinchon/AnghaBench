; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_alias.c_addr_side_effect_eval.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_alias.c_addr_side_effect_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @addr_side_effect_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_side_effect_eval(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @GET_CODE(i32 %9)
  switch i32 %10, label %31 [
    i32 128, label %11
    i32 129, label %16
    i32 130, label %22
    i32 131, label %26
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = add nsw i32 %12, 1
  %14 = load i32, i32* %6, align 4
  %15 = mul nsw i32 %13, %14
  store i32 %15, i32* %8, align 4
  br label %33

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, 1
  %19 = sub nsw i32 0, %18
  %20 = load i32, i32* %6, align 4
  %21 = mul nsw i32 %19, %20
  store i32 %21, i32* %8, align 4
  br label %33

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = mul nsw i32 %23, %24
  store i32 %25, i32* %8, align 4
  br label %33

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 0, %27
  %29 = load i32, i32* %6, align 4
  %30 = mul nsw i32 %28, %29
  store i32 %30, i32* %8, align 4
  br label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %4, align 4
  br label %51

33:                                               ; preds = %26, %22, %16, %11
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @GET_MODE(i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @XEXP(i32 %39, i32 0)
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @GEN_INT(i32 %41)
  %43 = call i32 @gen_rtx_PLUS(i32 %38, i32 %40, i32 %42)
  store i32 %43, i32* %5, align 4
  br label %47

44:                                               ; preds = %33
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @XEXP(i32 %45, i32 0)
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %44, %36
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @canon_rtx(i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %47, %31
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @gen_rtx_PLUS(i32, i32, i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @canon_rtx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
