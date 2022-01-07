; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_explow.c_use_anchored_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_explow.c_use_anchored_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)* }

@flag_section_anchors = common dso_local global i32 0, align 4
@CONST = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@SYMBOL_REF = common dso_local global i64 0, align 8
@targetm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@cse_not_expected = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @use_anchored_address(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @flag_section_anchors, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  store i32 %9, i32* %2, align 4
  br label %100

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @MEM_P(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  store i32 %15, i32* %2, align 4
  br label %100

16:                                               ; preds = %10
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @XEXP(i32 %17, i32 0)
  store i32 %18, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @GET_CODE(i32 %19)
  %21 = load i64, i64* @CONST, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %16
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @XEXP(i32 %24, i32 0)
  %26 = call i64 @GET_CODE(i32 %25)
  %27 = load i64, i64* @PLUS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %23
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @XEXP(i32 %30, i32 0)
  %32 = call i32 @XEXP(i32 %31, i32 1)
  %33 = call i64 @GET_CODE(i32 %32)
  %34 = load i64, i64* @CONST_INT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %29
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @XEXP(i32 %37, i32 0)
  %39 = call i32 @XEXP(i32 %38, i32 1)
  %40 = call i64 @INTVAL(i32 %39)
  %41 = load i64, i64* %5, align 8
  %42 = add nsw i64 %41, %40
  store i64 %42, i64* %5, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @XEXP(i32 %43, i32 0)
  %45 = call i32 @XEXP(i32 %44, i32 0)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %36, %29, %23, %16
  %47 = load i32, i32* %4, align 4
  %48 = call i64 @GET_CODE(i32 %47)
  %49 = load i64, i64* @SYMBOL_REF, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %68, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @SYMBOL_REF_HAS_BLOCK_INFO_P(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %51
  %56 = load i32, i32* %4, align 4
  %57 = call i64 @SYMBOL_REF_ANCHOR_P(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %4, align 4
  %61 = call i32* @SYMBOL_REF_BLOCK(i32 %60)
  %62 = icmp eq i32* %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %59
  %64 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @targetm, i32 0, i32 0), align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i32 %64(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %63, %59, %55, %51, %46
  %69 = load i32, i32* %3, align 4
  store i32 %69, i32* %2, align 4
  br label %100

70:                                               ; preds = %63
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @place_block_symbol(i32 %71)
  %73 = load i32, i32* %4, align 4
  %74 = call i64 @SYMBOL_REF_BLOCK_OFFSET(i32 %73)
  %75 = load i64, i64* %5, align 8
  %76 = add nsw i64 %75, %74
  store i64 %76, i64* %5, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i32* @SYMBOL_REF_BLOCK(i32 %77)
  %79 = load i64, i64* %5, align 8
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @SYMBOL_REF_TLS_MODEL(i32 %80)
  %82 = call i32 @get_section_anchor(i32* %78, i64 %79, i32 %81)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = call i64 @SYMBOL_REF_BLOCK_OFFSET(i32 %83)
  %85 = load i64, i64* %5, align 8
  %86 = sub nsw i64 %85, %84
  store i64 %86, i64* %5, align 8
  %87 = load i32, i32* @cse_not_expected, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %70
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @GET_MODE(i32 %90)
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @force_reg(i32 %91, i32 %92)
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %89, %70
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* %4, align 4
  %97 = load i64, i64* %5, align 8
  %98 = call i32 @plus_constant(i32 %96, i64 %97)
  %99 = call i32 @replace_equiv_address(i32 %95, i32 %98)
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %94, %68, %14, %8
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @MEM_P(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i64 @INTVAL(i32) #1

declare dso_local i32 @SYMBOL_REF_HAS_BLOCK_INFO_P(i32) #1

declare dso_local i64 @SYMBOL_REF_ANCHOR_P(i32) #1

declare dso_local i32* @SYMBOL_REF_BLOCK(i32) #1

declare dso_local i32 @place_block_symbol(i32) #1

declare dso_local i64 @SYMBOL_REF_BLOCK_OFFSET(i32) #1

declare dso_local i32 @get_section_anchor(i32*, i64, i32) #1

declare dso_local i32 @SYMBOL_REF_TLS_MODEL(i32) #1

declare dso_local i32 @force_reg(i32, i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @replace_equiv_address(i32, i32) #1

declare dso_local i32 @plus_constant(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
