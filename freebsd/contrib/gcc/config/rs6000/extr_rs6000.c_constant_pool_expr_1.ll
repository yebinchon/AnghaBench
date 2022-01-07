; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_constant_pool_expr_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_constant_pool_expr_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Pmode = common dso_local global i32 0, align 4
@toc_label_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @constant_pool_expr_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @constant_pool_expr_1(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @GET_CODE(i32 %8)
  switch i32 %9, label %61 [
    i32 128, label %10
    i32 129, label %37
    i32 130, label %37
    i32 132, label %54
    i32 131, label %60
  ]

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @RS6000_SYMBOL_REF_TLS_P(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %62

15:                                               ; preds = %10
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @CONSTANT_POOL_ADDRESS_P(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @get_pool_constant(i32 %20)
  %22 = load i32, i32* @Pmode, align 4
  %23 = call i32 @ASM_OUTPUT_SPECIAL_POOL_ENTRY_P(i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32*, i32** %6, align 8
  store i32 1, i32* %26, align 4
  store i32 1, i32* %4, align 4
  br label %62

27:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %62

28:                                               ; preds = %15
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @XSTR(i32 %29, i32 0)
  %31 = load i32, i32* @toc_label_name, align 4
  %32 = call i32 @strcmp(i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = load i32*, i32** %7, align 8
  store i32 1, i32* %35, align 4
  store i32 1, i32* %4, align 4
  br label %62

36:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %62

37:                                               ; preds = %3, %3
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @XEXP(i32 %38, i32 0)
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @constant_pool_expr_1(i32 %39, i32* %40, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @XEXP(i32 %45, i32 1)
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @constant_pool_expr_1(i32 %46, i32* %47, i32* %48)
  %50 = icmp ne i32 %49, 0
  br label %51

51:                                               ; preds = %44, %37
  %52 = phi i1 [ false, %37 ], [ %50, %44 ]
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %4, align 4
  br label %62

54:                                               ; preds = %3
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @XEXP(i32 %55, i32 0)
  %57 = load i32*, i32** %6, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @constant_pool_expr_1(i32 %56, i32* %57, i32* %58)
  store i32 %59, i32* %4, align 4
  br label %62

60:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %62

61:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %60, %54, %51, %36, %34, %27, %25, %14
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @RS6000_SYMBOL_REF_TLS_P(i32) #1

declare dso_local i32 @CONSTANT_POOL_ADDRESS_P(i32) #1

declare dso_local i32 @ASM_OUTPUT_SPECIAL_POOL_ENTRY_P(i32, i32) #1

declare dso_local i32 @get_pool_constant(i32) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @XSTR(i32, i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
