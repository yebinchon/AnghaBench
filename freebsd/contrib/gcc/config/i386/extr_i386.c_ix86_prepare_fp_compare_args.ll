; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_prepare_fp_compare_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_prepare_fp_compare_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_SSE_MATH = common dso_local global i64 0, align 8
@CCFPUmode = common dso_local global i32 0, align 4
@XFmode = common dso_local global i32 0, align 4
@FLOAT = common dso_local global i64 0, align 8
@MEM = common dso_local global i64 0, align 8
@REG = common dso_local global i64 0, align 8
@TARGET_CMOVE = common dso_local global i64 0, align 8
@no_new_pseudos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @ix86_prepare_fp_compare_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ix86_prepare_fp_compare_args(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @ix86_fp_compare_mode(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @GET_MODE(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i64, i64* @TARGET_SSE_MATH, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i32, i32* %10, align 4
  %27 = call i64 @SSE_FLOAT_MODE_P(i32 %26)
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %25, %3
  %30 = phi i1 [ false, %3 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %66, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @CCFPUmode, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %59, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @XFmode, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @standard_80387_constant_p(i32 %43)
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %55, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @standard_80387_constant_p(i32 %47)
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %9, align 4
  %52 = call i64 @GET_CODE(i32 %51)
  %53 = load i64, i64* @FLOAT, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %50, %46, %42, %38
  %56 = load i32, i32* %4, align 4
  %57 = call i64 @ix86_use_fcomi_compare(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %55, %50, %34
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @force_reg(i32 %60, i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @force_reg(i32 %63, i32 %64)
  store i32 %65, i32* %9, align 4
  br label %131

66:                                               ; preds = %55, %29
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @standard_80387_constant_p(i32 %67)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %84, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %8, align 4
  %72 = call i64 @GET_CODE(i32 %71)
  %73 = load i64, i64* @MEM, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %90

75:                                               ; preds = %70
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @standard_80387_constant_p(i32 %76)
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %9, align 4
  %81 = call i64 @GET_CODE(i32 %80)
  %82 = load i64, i64* @MEM, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %79, %66
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @swap_condition(i32 %88)
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %84, %79, %75, %70
  %91 = load i32, i32* %8, align 4
  %92 = call i64 @GET_CODE(i32 %91)
  %93 = load i64, i64* @REG, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @force_reg(i32 %96, i32 %97)
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %95, %90
  %100 = load i32, i32* %9, align 4
  %101 = call i64 @CONSTANT_P(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %130

103:                                              ; preds = %99
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @standard_80387_constant_p(i32 %104)
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %13, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @force_const_mem(i32 %109, i32 %110)
  %112 = call i32 @validize_mem(i32 %111)
  store i32 %112, i32* %9, align 4
  br label %129

113:                                              ; preds = %103
  %114 = load i32, i32* %13, align 4
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %124

116:                                              ; preds = %113
  %117 = load i64, i64* @TARGET_CMOVE, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @force_reg(i32 %120, i32 %121)
  store i32 %122, i32* %9, align 4
  br label %123

123:                                              ; preds = %119, %116
  br label %128

124:                                              ; preds = %113
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @force_reg(i32 %125, i32 %126)
  store i32 %127, i32* %9, align 4
  br label %128

128:                                              ; preds = %124, %123
  br label %129

129:                                              ; preds = %128, %108
  br label %130

130:                                              ; preds = %129, %99
  br label %131

131:                                              ; preds = %130, %59
  %132 = load i32, i32* %4, align 4
  %133 = call i64 @ix86_fp_comparison_cost(i32 %132)
  %134 = load i32, i32* %4, align 4
  %135 = call i32 @swap_condition(i32 %134)
  %136 = call i64 @ix86_fp_comparison_cost(i32 %135)
  %137 = icmp sgt i64 %133, %136
  br i1 %137, label %138, label %161

138:                                              ; preds = %131
  %139 = load i32, i32* %9, align 4
  %140 = call i64 @GET_CODE(i32 %139)
  %141 = load i64, i64* @REG, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %146, label %143

143:                                              ; preds = %138
  %144 = load i32, i32* @no_new_pseudos, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %161, label %146

146:                                              ; preds = %143, %138
  %147 = load i32, i32* %8, align 4
  store i32 %147, i32* %14, align 4
  %148 = load i32, i32* %9, align 4
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %14, align 4
  store i32 %149, i32* %9, align 4
  %150 = load i32, i32* %4, align 4
  %151 = call i32 @swap_condition(i32 %150)
  store i32 %151, i32* %4, align 4
  %152 = load i32, i32* %8, align 4
  %153 = call i64 @GET_CODE(i32 %152)
  %154 = load i64, i64* @REG, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %146
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* %8, align 4
  %159 = call i32 @force_reg(i32 %157, i32 %158)
  store i32 %159, i32* %8, align 4
  br label %160

160:                                              ; preds = %156, %146
  br label %161

161:                                              ; preds = %160, %143, %131
  %162 = load i32, i32* %8, align 4
  %163 = load i32*, i32** %5, align 8
  store i32 %162, i32* %163, align 4
  %164 = load i32, i32* %9, align 4
  %165 = load i32*, i32** %6, align 8
  store i32 %164, i32* %165, align 4
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i32 @ix86_fp_compare_mode(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i64 @SSE_FLOAT_MODE_P(i32) #1

declare dso_local i32 @standard_80387_constant_p(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i64 @ix86_use_fcomi_compare(i32) #1

declare dso_local i32 @force_reg(i32, i32) #1

declare dso_local i32 @swap_condition(i32) #1

declare dso_local i64 @CONSTANT_P(i32) #1

declare dso_local i32 @validize_mem(i32) #1

declare dso_local i32 @force_const_mem(i32, i32) #1

declare dso_local i64 @ix86_fp_comparison_cost(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
