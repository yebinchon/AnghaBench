; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_unextend.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_unextend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (i64)* }

@RSHIFT_EXPR = common dso_local global i32 0, align 4
@BIT_AND_EXPR = common dso_local global i32 0, align 4
@lang_hooks = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@LSHIFT_EXPR = common dso_local global i32 0, align 4
@BIT_XOR_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32, i32, i64)* @unextend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @unextend(i64 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i64 @TREE_TYPE(i64 %13)
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = call i32 @TYPE_MODE(i64 %15)
  %17 = call i32 @GET_MODE_BITSIZE(i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %4
  %25 = load i64, i64* %6, align 8
  store i64 %25, i64* %5, align 8
  br label %86

26:                                               ; preds = %21
  %27 = load i32, i32* @RSHIFT_EXPR, align 4
  %28 = load i64, i64* %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 %29, 1
  %31 = call i64 @size_int(i32 %30)
  %32 = call i64 @const_binop(i32 %27, i64 %28, i64 %31, i32 0)
  store i64 %32, i64* %12, align 8
  %33 = load i32, i32* @BIT_AND_EXPR, align 4
  %34 = load i64, i64* %12, align 8
  %35 = call i64 @size_int(i32 1)
  %36 = call i64 @const_binop(i32 %33, i64 %34, i64 %35, i32 0)
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i64 @TYPE_UNSIGNED(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %26
  %41 = load i64 (i64)*, i64 (i64)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %42 = load i64, i64* %10, align 8
  %43 = call i64 %41(i64 %42)
  %44 = load i64, i64* %12, align 8
  %45 = call i64 @fold_convert(i64 %43, i64 %44)
  store i64 %45, i64* %12, align 8
  br label %46

46:                                               ; preds = %40, %26
  %47 = load i32, i32* @LSHIFT_EXPR, align 4
  %48 = load i64, i64* %12, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sub nsw i32 %49, 1
  %51 = call i64 @size_int(i32 %50)
  %52 = call i64 @const_binop(i32 %47, i64 %48, i64 %51, i32 0)
  store i64 %52, i64* %12, align 8
  %53 = load i32, i32* @RSHIFT_EXPR, align 4
  %54 = load i64, i64* %12, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %7, align 4
  %57 = sub nsw i32 %55, %56
  %58 = sub nsw i32 %57, 1
  %59 = call i64 @size_int(i32 %58)
  %60 = call i64 @const_binop(i32 %53, i64 %54, i64 %59, i32 0)
  store i64 %60, i64* %12, align 8
  %61 = load i64, i64* %9, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %46
  %64 = load i32, i32* @BIT_AND_EXPR, align 4
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* %6, align 8
  %67 = call i64 @TREE_TYPE(i64 %66)
  %68 = load i64, i64* %9, align 8
  %69 = call i64 @fold_convert(i64 %67, i64 %68)
  %70 = call i64 @const_binop(i32 %64, i64 %65, i64 %69, i32 0)
  store i64 %70, i64* %12, align 8
  br label %71

71:                                               ; preds = %63, %46
  %72 = load i64, i64* %10, align 8
  %73 = call i64 @TYPE_UNSIGNED(i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* %12, align 8
  %78 = call i64 @fold_convert(i64 %76, i64 %77)
  store i64 %78, i64* %12, align 8
  br label %79

79:                                               ; preds = %75, %71
  %80 = load i64, i64* %10, align 8
  %81 = load i32, i32* @BIT_XOR_EXPR, align 4
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* %12, align 8
  %84 = call i64 @const_binop(i32 %81, i64 %82, i64 %83, i32 0)
  %85 = call i64 @fold_convert(i64 %80, i64 %84)
  store i64 %85, i64* %5, align 8
  br label %86

86:                                               ; preds = %79, %24
  %87 = load i64, i64* %5, align 8
  ret i64 %87
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i32 @TYPE_MODE(i64) #1

declare dso_local i64 @const_binop(i32, i64, i64, i32) #1

declare dso_local i64 @size_int(i32) #1

declare dso_local i64 @TYPE_UNSIGNED(i64) #1

declare dso_local i64 @fold_convert(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
