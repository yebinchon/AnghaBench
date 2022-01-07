; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_distribute_and_simplify_rtx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_distribute_and_simplify_rtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_RTX = common dso_local global i32 0, align 4
@AND = common dso_local global i32 0, align 4
@XOR = common dso_local global i32 0, align 4
@NOT = common dso_local global i64 0, align 8
@IOR = common dso_local global i32 0, align 4
@SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @distribute_and_simplify_rtx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @distribute_and_simplify_rtx(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @XEXP(i32 %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @ARITHMETIC_P(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @NULL_RTX, align 4
  store i32 %23, i32* %3, align 4
  br label %106

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @GET_MODE(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @GET_CODE(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @XEXP(i32 %29, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @GET_CODE(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @XEXP(i32 %37, i32 0)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @XEXP(i32 %39, i32 1)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @AND, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %24
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @XOR, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @GET_CODE(i32 %49)
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* @NOT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @XEXP(i32 %55, i32 0)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* @IOR, align 4
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %54, %48, %44, %24
  %59 = load i32, i32* %5, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @simplify_gen_binary(i32 %62, i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @simplify_gen_binary(i32 %67, i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %14, align 4
  br label %83

72:                                               ; preds = %58
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @simplify_gen_binary(i32 %73, i32 %74, i32 %75, i32 %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @simplify_gen_binary(i32 %78, i32 %79, i32 %80, i32 %81)
  store i32 %82, i32* %14, align 4
  br label %83

83:                                               ; preds = %72, %61
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @simplify_gen_binary(i32 %84, i32 %85, i32 %86, i32 %87)
  %89 = call i32 @apply_distributive_law(i32 %88)
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %15, align 4
  %91 = call i32 @GET_CODE(i32 %90)
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %83
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* @SET, align 4
  %97 = call i64 @rtx_cost(i32 %95, i32 %96)
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @SET, align 4
  %100 = call i64 @rtx_cost(i32 %98, i32 %99)
  %101 = icmp slt i64 %97, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %94
  %103 = load i32, i32* %15, align 4
  store i32 %103, i32* %3, align 4
  br label %106

104:                                              ; preds = %94, %83
  %105 = load i32, i32* @NULL_RTX, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %104, %102, %22
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @ARITHMETIC_P(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @simplify_gen_binary(i32, i32, i32, i32) #1

declare dso_local i32 @apply_distributive_law(i32) #1

declare dso_local i64 @rtx_cost(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
