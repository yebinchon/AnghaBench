; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_get_extension_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_get_extension_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PARALLEL = common dso_local global i64 0, align 8
@SIGN_EXTEND = common dso_local global i64 0, align 8
@ZERO_EXTEND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32)* @see_get_extension_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @see_get_extension_reg(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32* @PATTERN(i32* %11)
  %13 = call i64 @GET_CODE(i32* %12)
  %14 = load i64, i64* @PARALLEL, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %79

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = call i32* @single_set(i32* %18)
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32* null, i32** %3, align 8
  br label %79

23:                                               ; preds = %17
  %24 = load i32*, i32** %6, align 8
  %25 = call i32* @SET_DEST(i32* %24)
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32* @SET_SRC(i32* %26)
  store i32* %27, i32** %7, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = call i64 @REG_P(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32*, i32** %8, align 8
  store i32* %32, i32** %9, align 8
  br label %43

33:                                               ; preds = %23
  %34 = load i32*, i32** %8, align 8
  %35 = call i32* @SUBREG_REG(i32* %34)
  %36 = call i64 @REG_P(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32*, i32** %8, align 8
  %40 = call i32* @SUBREG_REG(i32* %39)
  store i32* %40, i32** %9, align 8
  br label %42

41:                                               ; preds = %33
  store i32* null, i32** %3, align 8
  br label %79

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %42, %31
  %44 = load i32*, i32** %7, align 8
  %45 = call i64 @GET_CODE(i32* %44)
  %46 = load i64, i64* @SIGN_EXTEND, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i32*, i32** %7, align 8
  %50 = call i64 @GET_CODE(i32* %49)
  %51 = load i64, i64* @ZERO_EXTEND, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32* null, i32** %3, align 8
  br label %79

54:                                               ; preds = %48, %43
  %55 = load i32*, i32** %7, align 8
  %56 = call i32* @XEXP(i32* %55, i32 0)
  store i32* %56, i32** %7, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = call i64 @REG_P(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32*, i32** %7, align 8
  store i32* %61, i32** %10, align 8
  br label %72

62:                                               ; preds = %54
  %63 = load i32*, i32** %7, align 8
  %64 = call i32* @SUBREG_REG(i32* %63)
  %65 = call i64 @REG_P(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32*, i32** %7, align 8
  %69 = call i32* @SUBREG_REG(i32* %68)
  store i32* %69, i32** %10, align 8
  br label %71

70:                                               ; preds = %62
  store i32* null, i32** %3, align 8
  br label %79

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %71, %60
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i32*, i32** %9, align 8
  store i32* %76, i32** %3, align 8
  br label %79

77:                                               ; preds = %72
  %78 = load i32*, i32** %10, align 8
  store i32* %78, i32** %3, align 8
  br label %79

79:                                               ; preds = %77, %75, %70, %53, %41, %22, %16
  %80 = load i32*, i32** %3, align 8
  ret i32* %80
}

declare dso_local i64 @GET_CODE(i32*) #1

declare dso_local i32* @PATTERN(i32*) #1

declare dso_local i32* @single_set(i32*) #1

declare dso_local i32* @SET_DEST(i32*) #1

declare dso_local i32* @SET_SRC(i32*) #1

declare dso_local i64 @REG_P(i32*) #1

declare dso_local i32* @SUBREG_REG(i32*) #1

declare dso_local i32* @XEXP(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
