; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_insert_right_side.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_insert_right_side.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AND = common dso_local global i32 0, align 4
@true_rtx = common dso_local global i64 0, align 8
@false_rtx = common dso_local global i64 0, align 8
@IOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i64, i32, i32)* @insert_right_side to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @insert_right_side(i32 %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @AND, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %5
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @true_rtx, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i64, i64* %8, align 8
  store i64 %22, i64* %6, align 8
  br label %157

23:                                               ; preds = %17, %5
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @AND, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @false_rtx, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i64, i64* @false_rtx, align 8
  store i64 %32, i64* %6, align 8
  br label %157

33:                                               ; preds = %27, %23
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @AND, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @true_rtx, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i64, i64* %9, align 8
  store i64 %42, i64* %6, align 8
  br label %157

43:                                               ; preds = %37, %33
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @AND, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* @false_rtx, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i64, i64* @false_rtx, align 8
  store i64 %52, i64* %6, align 8
  br label %157

53:                                               ; preds = %47, %43
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @IOR, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* @true_rtx, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i64, i64* @true_rtx, align 8
  store i64 %62, i64* %6, align 8
  br label %157

63:                                               ; preds = %57, %53
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @IOR, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* @false_rtx, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i64, i64* %8, align 8
  store i64 %72, i64* %6, align 8
  br label %157

73:                                               ; preds = %67, %63
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @IOR, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* @true_rtx, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i64, i64* @true_rtx, align 8
  store i64 %82, i64* %6, align 8
  br label %157

83:                                               ; preds = %77, %73
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @IOR, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* @false_rtx, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i64, i64* %9, align 8
  store i64 %92, i64* %6, align 8
  br label %157

93:                                               ; preds = %87, %83
  %94 = load i64, i64* %8, align 8
  %95 = load i64, i64* %9, align 8
  %96 = call i64 @attr_equal_p(i64 %94, i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i64, i64* %8, align 8
  store i64 %99, i64* %6, align 8
  br label %157

100:                                              ; preds = %93
  %101 = load i64, i64* %9, align 8
  %102 = call i32 @GET_CODE(i64 %101)
  %103 = load i32, i32* %7, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %121

105:                                              ; preds = %100
  %106 = load i32, i32* %7, align 4
  %107 = load i64, i64* %8, align 8
  %108 = load i64, i64* %9, align 8
  %109 = call i64 @XEXP(i64 %108, i32 0)
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %11, align 4
  %112 = call i64 @insert_right_side(i32 %106, i64 %107, i64 %109, i32 %110, i32 %111)
  store i64 %112, i64* %8, align 8
  %113 = load i32, i32* %7, align 4
  %114 = load i64, i64* %8, align 8
  %115 = load i64, i64* %9, align 8
  %116 = call i64 @XEXP(i64 %115, i32 1)
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %11, align 4
  %119 = call i64 @insert_right_side(i32 %113, i64 %114, i64 %116, i32 %117, i32 %118)
  store i64 %119, i64* %8, align 8
  %120 = load i64, i64* %8, align 8
  store i64 %120, i64* %6, align 8
  br label %157

121:                                              ; preds = %100
  %122 = load i64, i64* %8, align 8
  %123 = call i32 @GET_CODE(i64 %122)
  %124 = load i32, i32* %7, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %147

126:                                              ; preds = %121
  %127 = load i32, i32* %7, align 4
  %128 = load i64, i64* %8, align 8
  %129 = call i64 @XEXP(i64 %128, i32 1)
  %130 = load i64, i64* %9, align 8
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* %11, align 4
  %133 = call i64 @insert_right_side(i32 %127, i64 %129, i64 %130, i32 %131, i32 %132)
  store i64 %133, i64* %13, align 8
  %134 = load i64, i64* %13, align 8
  %135 = load i64, i64* %8, align 8
  %136 = call i64 @XEXP(i64 %135, i32 1)
  %137 = icmp ne i64 %134, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %126
  %139 = load i32, i32* %7, align 4
  %140 = load i64, i64* %8, align 8
  %141 = call i64 @XEXP(i64 %140, i32 0)
  %142 = load i64, i64* %13, align 8
  %143 = call i64 @attr_rtx(i32 %139, i64 %141, i64 %142)
  store i64 %143, i64* %12, align 8
  br label %146

144:                                              ; preds = %126
  %145 = load i64, i64* %8, align 8
  store i64 %145, i64* %12, align 8
  br label %146

146:                                              ; preds = %144, %138
  br label %152

147:                                              ; preds = %121
  %148 = load i32, i32* %7, align 4
  %149 = load i64, i64* %8, align 8
  %150 = load i64, i64* %9, align 8
  %151 = call i64 @attr_rtx(i32 %148, i64 %149, i64 %150)
  store i64 %151, i64* %12, align 8
  br label %152

152:                                              ; preds = %147, %146
  %153 = load i64, i64* %12, align 8
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* %11, align 4
  %156 = call i64 @simplify_test_exp_in_temp(i64 %153, i32 %154, i32 %155)
  store i64 %156, i64* %6, align 8
  br label %157

157:                                              ; preds = %152, %105, %98, %91, %81, %71, %61, %51, %41, %31, %21
  %158 = load i64, i64* %6, align 8
  ret i64 %158
}

declare dso_local i64 @attr_equal_p(i64, i64) #1

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @attr_rtx(i32, i64, i64) #1

declare dso_local i64 @simplify_test_exp_in_temp(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
