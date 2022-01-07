; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_single_bit_test_into_sign_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_single_bit_test_into_sign_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (i32)* }

@NE_EXPR = common dso_local global i32 0, align 4
@EQ_EXPR = common dso_local global i32 0, align 4
@BIT_AND_EXPR = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@lang_hooks = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@GE_EXPR = common dso_local global i32 0, align 4
@LT_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i64, i64)* @fold_single_bit_test_into_sign_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fold_single_bit_test_into_sign_test(i32 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @NE_EXPR, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @EQ_EXPR, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %73

19:                                               ; preds = %15, %4
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @TREE_CODE(i64 %20)
  %22 = load i64, i64* @BIT_AND_EXPR, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %73

24:                                               ; preds = %19
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @integer_zerop(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %73

28:                                               ; preds = %24
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @TREE_OPERAND(i64 %29, i32 1)
  %31 = call i64 @integer_pow2p(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %73

33:                                               ; preds = %28
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @TREE_OPERAND(i64 %34, i32 0)
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @TREE_OPERAND(i64 %36, i32 1)
  %38 = call i64 @sign_bit_p(i32 %35, i32 %37)
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* @NULL_TREE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %72

42:                                               ; preds = %33
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @TREE_TYPE(i64 %43)
  %45 = call i64 @TYPE_PRECISION(i32 %44)
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @TREE_TYPE(i64 %46)
  %48 = call i32 @TYPE_MODE(i32 %47)
  %49 = call i64 @GET_MODE_BITSIZE(i32 %48)
  %50 = icmp eq i64 %45, %49
  br i1 %50, label %51, label %72

51:                                               ; preds = %42
  %52 = load i64 (i32)*, i64 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %53 = load i64, i64* %10, align 8
  %54 = call i32 @TREE_TYPE(i64 %53)
  %55 = call i64 %52(i32 %54)
  store i64 %55, i64* %11, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @EQ_EXPR, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* @GE_EXPR, align 4
  br label %63

61:                                               ; preds = %51
  %62 = load i32, i32* @LT_EXPR, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* %10, align 8
  %68 = call i32 @fold_convert(i64 %66, i64 %67)
  %69 = load i64, i64* %11, align 8
  %70 = call i32 @build_int_cst(i64 %69, i32 0)
  %71 = call i64 @fold_build2(i32 %64, i64 %65, i32 %68, i32 %70)
  store i64 %71, i64* %5, align 8
  br label %75

72:                                               ; preds = %42, %33
  br label %73

73:                                               ; preds = %72, %28, %24, %19, %15
  %74 = load i64, i64* @NULL_TREE, align 8
  store i64 %74, i64* %5, align 8
  br label %75

75:                                               ; preds = %73, %63
  %76 = load i64, i64* %5, align 8
  ret i64 %76
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @integer_zerop(i64) #1

declare dso_local i64 @integer_pow2p(i32) #1

declare dso_local i32 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @sign_bit_p(i32, i32) #1

declare dso_local i64 @TYPE_PRECISION(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @GET_MODE_BITSIZE(i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i64 @fold_build2(i32, i64, i32, i32) #1

declare dso_local i32 @fold_convert(i64, i64) #1

declare dso_local i32 @build_int_cst(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
