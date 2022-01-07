; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_get_extension_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_get_extension_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNKNOWN = common dso_local global i32 0, align 4
@PARALLEL = common dso_local global i64 0, align 8
@NOT_RELEVANT = common dso_local global i32 0, align 4
@SIGN_EXTEND = common dso_local global i64 0, align 8
@ZERO_EXTEND = common dso_local global i64 0, align 8
@SUBREG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @see_get_extension_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @see_get_extension_data(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @INSN_P(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11, %2
  %16 = load i32, i32* @UNKNOWN, align 4
  store i32 %16, i32* %3, align 4
  br label %92

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @PATTERN(i32 %18)
  %20 = call i64 @GET_CODE(i32 %19)
  %21 = load i64, i64* @PARALLEL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @NOT_RELEVANT, align 4
  store i32 %24, i32* %3, align 4
  br label %92

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @single_set(i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @NOT_RELEVANT, align 4
  store i32 %31, i32* %3, align 4
  br label %92

32:                                               ; preds = %25
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @SET_SRC(i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @SET_DEST(i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @REG_P(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @SUBREG_REG(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @UNKNOWN, align 4
  store i32 %45, i32* %3, align 4
  br label %92

46:                                               ; preds = %40, %32
  %47 = load i32, i32* %6, align 4
  %48 = call i64 @GET_CODE(i32 %47)
  %49 = load i64, i64* @SIGN_EXTEND, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  %53 = call i64 @GET_CODE(i32 %52)
  %54 = load i64, i64* @ZERO_EXTEND, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @UNKNOWN, align 4
  store i32 %57, i32* %3, align 4
  br label %92

58:                                               ; preds = %51, %46
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @XEXP(i32 %59, i32 0)
  %61 = call i64 @REG_P(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %77, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @XEXP(i32 %64, i32 0)
  %66 = call i64 @GET_CODE(i32 %65)
  %67 = load i64, i64* @SUBREG, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @XEXP(i32 %70, i32 0)
  %72 = call i32 @SUBREG_REG(i32 %71)
  %73 = call i64 @REG_P(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %69, %63
  %76 = load i32, i32* @UNKNOWN, align 4
  store i32 %76, i32* %3, align 4
  br label %92

77:                                               ; preds = %69, %58
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @XEXP(i32 %78, i32 0)
  %80 = call i32 @GET_MODE(i32 %79)
  %81 = load i32*, i32** %5, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i64 @GET_CODE(i32 %82)
  %84 = load i64, i64* @SIGN_EXTEND, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %77
  %87 = load i64, i64* @SIGN_EXTEND, align 8
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %3, align 4
  br label %92

89:                                               ; preds = %77
  %90 = load i64, i64* @ZERO_EXTEND, align 8
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %89, %86, %75, %56, %44, %30, %23, %15
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @INSN_P(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i32 @single_set(i32) #1

declare dso_local i32 @SET_SRC(i32) #1

declare dso_local i32 @SET_DEST(i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @GET_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
