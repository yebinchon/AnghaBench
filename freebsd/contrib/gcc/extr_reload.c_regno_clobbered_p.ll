; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_regno_clobbered_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_regno_clobbered_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@hard_regno_nregs = common dso_local global i32** null, align 8
@CLOBBER = common dso_local global i64 0, align 8
@SET = common dso_local global i64 0, align 8
@PARALLEL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regno_clobbered_p(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %18 = icmp ult i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @gcc_assert(i32 %19)
  %21 = load i32**, i32*** @hard_regno_nregs, align 8
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %21, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %10, align 4
  %32 = add i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @PATTERN(i32 %33)
  %35 = call i64 @GET_CODE(i32 %34)
  %36 = load i64, i64* @CLOBBER, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %47, label %38

38:                                               ; preds = %4
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %68

41:                                               ; preds = %38
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @PATTERN(i32 %42)
  %44 = call i64 @GET_CODE(i32 %43)
  %45 = load i64, i64* @SET, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %41, %4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @PATTERN(i32 %48)
  %50 = call i32 @XEXP(i32 %49, i32 0)
  %51 = call i64 @REG_P(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %47
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @PATTERN(i32 %54)
  %56 = call i32 @XEXP(i32 %55, i32 0)
  %57 = call i32 @REGNO(i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp uge i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ult i32 %62, %63
  br label %65

65:                                               ; preds = %61, %53
  %66 = phi i1 [ false, %53 ], [ %64, %61 ]
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %5, align 4
  br label %144

68:                                               ; preds = %47, %41, %38
  %69 = load i32, i32* %9, align 4
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i64 @reg_inc_found_and_valid_p(i32 %72, i32 %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  store i32 1, i32* %5, align 4
  br label %144

78:                                               ; preds = %71, %68
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @PATTERN(i32 %79)
  %81 = call i64 @GET_CODE(i32 %80)
  %82 = load i64, i64* @PARALLEL, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %143

84:                                               ; preds = %78
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @PATTERN(i32 %85)
  %87 = call i32 @XVECLEN(i32 %86, i32 0)
  %88 = sub nsw i32 %87, 1
  store i32 %88, i32* %13, align 4
  br label %89

89:                                               ; preds = %139, %84
  %90 = load i32, i32* %13, align 4
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %142

92:                                               ; preds = %89
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @PATTERN(i32 %93)
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @XVECEXP(i32 %94, i32 0, i32 %95)
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %14, align 4
  %98 = call i64 @GET_CODE(i32 %97)
  %99 = load i64, i64* @CLOBBER, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %110, label %101

101:                                              ; preds = %92
  %102 = load i32, i32* %9, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %128

104:                                              ; preds = %101
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @PATTERN(i32 %105)
  %107 = call i64 @GET_CODE(i32 %106)
  %108 = load i64, i64* @SET, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %128

110:                                              ; preds = %104, %92
  %111 = load i32, i32* %14, align 4
  %112 = call i32 @XEXP(i32 %111, i32 0)
  %113 = call i64 @REG_P(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %110
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @XEXP(i32 %116, i32 0)
  %118 = call i32 @REGNO(i32 %117)
  store i32 %118, i32* %15, align 4
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp uge i32 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %115
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* %11, align 4
  %125 = icmp ult i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  store i32 1, i32* %5, align 4
  br label %144

127:                                              ; preds = %122, %115
  br label %128

128:                                              ; preds = %127, %110, %104, %101
  %129 = load i32, i32* %9, align 4
  %130 = icmp eq i32 %129, 2
  br i1 %130, label %131, label %138

131:                                              ; preds = %128
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %14, align 4
  %135 = call i64 @reg_inc_found_and_valid_p(i32 %132, i32 %133, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  store i32 1, i32* %5, align 4
  br label %144

138:                                              ; preds = %131, %128
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %13, align 4
  br label %89

142:                                              ; preds = %89
  br label %143

143:                                              ; preds = %142, %78
  store i32 0, i32* %5, align 4
  br label %144

144:                                              ; preds = %143, %137, %126, %77, %65
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i64 @reg_inc_found_and_valid_p(i32, i32, i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
