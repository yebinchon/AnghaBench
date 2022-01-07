; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_reg_bitfield_target_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_reg_bitfield_target_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SET = common dso_local global i64 0, align 8
@ZERO_EXTRACT = common dso_local global i64 0, align 8
@STRICT_LOW_PART = common dso_local global i64 0, align 8
@SUBREG = common dso_local global i64 0, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@hard_regno_nregs = common dso_local global i32** null, align 8
@PARALLEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @reg_bitfield_target_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_bitfield_target_p(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i64 @GET_CODE(i64 %13)
  %15 = load i64, i64* @SET, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %101

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @SET_DEST(i64 %18)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @GET_CODE(i64 %20)
  %22 = load i64, i64* @ZERO_EXTRACT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @XEXP(i64 %25, i32 0)
  store i64 %26, i64* %8, align 8
  br label %38

27:                                               ; preds = %17
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @GET_CODE(i64 %28)
  %30 = load i64, i64* @STRICT_LOW_PART, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @XEXP(i64 %33, i32 0)
  %35 = call i64 @SUBREG_REG(i64 %34)
  store i64 %35, i64* %8, align 8
  br label %37

36:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %128

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %24
  %39 = load i64, i64* %8, align 8
  %40 = call i64 @GET_CODE(i64 %39)
  %41 = load i64, i64* @SUBREG, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i64, i64* %8, align 8
  %45 = call i64 @SUBREG_REG(i64 %44)
  store i64 %45, i64* %8, align 8
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @REG_P(i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %128

51:                                               ; preds = %46
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @REGNO(i64 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @REGNO(i64 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %58 = icmp uge i32 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %51
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %62 = icmp uge i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59, %51
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* %4, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %3, align 4
  br label %128

68:                                               ; preds = %59
  %69 = load i32, i32* %10, align 4
  %70 = load i32**, i32*** @hard_regno_nregs, align 8
  %71 = load i32, i32* %10, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32*, i32** %70, i64 %72
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* %8, align 8
  %76 = call i64 @GET_MODE(i64 %75)
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = add i32 %69, %78
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32**, i32*** @hard_regno_nregs, align 8
  %82 = load i32, i32* %9, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %81, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* %4, align 8
  %87 = call i64 @GET_MODE(i64 %86)
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = add i32 %80, %89
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ugt i32 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %68
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp ult i32 %95, %96
  br label %98

98:                                               ; preds = %94, %68
  %99 = phi i1 [ false, %68 ], [ %97, %94 ]
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %3, align 4
  br label %128

101:                                              ; preds = %2
  %102 = load i64, i64* %5, align 8
  %103 = call i64 @GET_CODE(i64 %102)
  %104 = load i64, i64* @PARALLEL, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %126

106:                                              ; preds = %101
  %107 = load i64, i64* %5, align 8
  %108 = call i32 @XVECLEN(i64 %107, i32 0)
  %109 = sub nsw i32 %108, 1
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %122, %106
  %111 = load i32, i32* %6, align 4
  %112 = icmp sge i32 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %110
  %114 = load i64, i64* %4, align 8
  %115 = load i64, i64* %5, align 8
  %116 = load i32, i32* %6, align 4
  %117 = call i64 @XVECEXP(i64 %115, i32 0, i32 %116)
  %118 = call i32 @reg_bitfield_target_p(i64 %114, i64 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %113
  store i32 1, i32* %3, align 4
  br label %128

121:                                              ; preds = %113
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %6, align 4
  br label %110

125:                                              ; preds = %110
  br label %126

126:                                              ; preds = %125, %101
  br label %127

127:                                              ; preds = %126
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %127, %120, %98, %63, %50, %36
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @SET_DEST(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @SUBREG_REG(i64) #1

declare dso_local i32 @REG_P(i64) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
