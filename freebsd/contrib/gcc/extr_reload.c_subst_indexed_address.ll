; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_subst_indexed_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_subst_indexed_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLUS = common dso_local global i64 0, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@reg_renumber = common dso_local global i64* null, align 8
@reg_equiv_constant = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @subst_indexed_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @subst_indexed_address(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @GET_CODE(i64 %9)
  %11 = load i64, i64* @PLUS, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %142

13:                                               ; preds = %1
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @XEXP(i64 %14, i32 0)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @XEXP(i64 %16, i32 1)
  store i64 %17, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i64 @REG_P(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %13
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @REGNO(i64 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %21
  %27 = load i64*, i64** @reg_renumber, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %26
  %34 = load i64*, i64** @reg_equiv_constant, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load i64*, i64** @reg_equiv_constant, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %4, align 8
  br label %104

46:                                               ; preds = %33, %26, %21, %13
  %47 = load i64, i64* %5, align 8
  %48 = call i64 @REG_P(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %75

50:                                               ; preds = %46
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @REGNO(i64 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %50
  %56 = load i64*, i64** @reg_renumber, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %55
  %63 = load i64*, i64** @reg_equiv_constant, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = load i64*, i64** @reg_equiv_constant, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %5, align 8
  br label %103

75:                                               ; preds = %62, %55, %50, %46
  %76 = load i64, i64* %4, align 8
  %77 = call i64 @GET_CODE(i64 %76)
  %78 = load i64, i64* @PLUS, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load i64, i64* %4, align 8
  %82 = call i64 @subst_indexed_address(i64 %81)
  store i64 %82, i64* %7, align 8
  %83 = load i64, i64* %4, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i64, i64* %7, align 8
  store i64 %86, i64* %4, align 8
  br label %102

87:                                               ; preds = %80, %75
  %88 = load i64, i64* %5, align 8
  %89 = call i64 @GET_CODE(i64 %88)
  %90 = load i64, i64* @PLUS, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load i64, i64* %5, align 8
  %94 = call i64 @subst_indexed_address(i64 %93)
  store i64 %94, i64* %7, align 8
  %95 = load i64, i64* %5, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i64, i64* %7, align 8
  store i64 %98, i64* %5, align 8
  br label %101

99:                                               ; preds = %92, %87
  %100 = load i64, i64* %3, align 8
  store i64 %100, i64* %2, align 8
  br label %144

101:                                              ; preds = %97
  br label %102

102:                                              ; preds = %101, %85
  br label %103

103:                                              ; preds = %102, %69
  br label %104

104:                                              ; preds = %103, %40
  %105 = load i64, i64* %5, align 8
  %106 = call i64 @GET_CODE(i64 %105)
  %107 = load i64, i64* @PLUS, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load i64, i64* %5, align 8
  %111 = call i64 @XEXP(i64 %110, i32 1)
  store i64 %111, i64* %6, align 8
  %112 = load i64, i64* %5, align 8
  %113 = call i64 @XEXP(i64 %112, i32 0)
  store i64 %113, i64* %5, align 8
  br label %126

114:                                              ; preds = %104
  %115 = load i64, i64* %4, align 8
  %116 = call i64 @GET_CODE(i64 %115)
  %117 = load i64, i64* @PLUS, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load i64, i64* %5, align 8
  store i64 %120, i64* %6, align 8
  %121 = load i64, i64* %4, align 8
  %122 = call i64 @XEXP(i64 %121, i32 1)
  store i64 %122, i64* %5, align 8
  %123 = load i64, i64* %4, align 8
  %124 = call i64 @XEXP(i64 %123, i32 0)
  store i64 %124, i64* %4, align 8
  br label %125

125:                                              ; preds = %119, %114
  br label %126

126:                                              ; preds = %125, %109
  %127 = load i64, i64* %6, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load i64, i64* %5, align 8
  %131 = load i64, i64* %6, align 8
  %132 = call i64 @form_sum(i64 %130, i64 %131)
  store i64 %132, i64* %5, align 8
  br label %133

133:                                              ; preds = %129, %126
  %134 = load i64, i64* %5, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load i64, i64* %4, align 8
  %138 = load i64, i64* %5, align 8
  %139 = call i64 @form_sum(i64 %137, i64 %138)
  store i64 %139, i64* %4, align 8
  br label %140

140:                                              ; preds = %136, %133
  %141 = load i64, i64* %4, align 8
  store i64 %141, i64* %2, align 8
  br label %144

142:                                              ; preds = %1
  %143 = load i64, i64* %3, align 8
  store i64 %143, i64* %2, align 8
  br label %144

144:                                              ; preds = %142, %140, %99
  %145 = load i64, i64* %2, align 8
  ret i64 %145
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i64 @form_sum(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
