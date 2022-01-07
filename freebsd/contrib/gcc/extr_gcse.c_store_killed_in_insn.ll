; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_store_killed_in_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_store_killed_in_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADDRESS = common dso_local global i64 0, align 8
@Pmode = common dso_local global i64 0, align 8
@stack_pointer_rtx = common dso_local global i64 0, align 8
@SET = common dso_local global i64 0, align 8
@ZERO_EXTRACT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i32)* @store_killed_in_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_killed_in_insn(i64 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @INSN_P(i64 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %146

19:                                               ; preds = %4
  %20 = load i64, i64* %8, align 8
  %21 = call i64 @CALL_P(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %64

23:                                               ; preds = %19
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @CONST_OR_PURE_CALL_P(i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i64, i64* %8, align 8
  %29 = call i64 @pure_call_p(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %23
  store i32 1, i32* %5, align 4
  br label %146

32:                                               ; preds = %27
  %33 = load i64, i64* %7, align 8
  store i64 %33, i64* %10, align 8
  br label %34

34:                                               ; preds = %60, %32
  %35 = load i64, i64* %10, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %63

37:                                               ; preds = %34
  %38 = load i64, i64* %10, align 8
  %39 = call i64 @XEXP(i64 %38, i32 0)
  %40 = call i64 @find_base_term(i64 %39)
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %11, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %37
  %44 = load i64, i64* %11, align 8
  %45 = call i64 @GET_CODE(i64 %44)
  %46 = load i64, i64* @ADDRESS, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load i64, i64* %11, align 8
  %50 = call i64 @GET_MODE(i64 %49)
  %51 = load i64, i64* @Pmode, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i64, i64* %11, align 8
  %55 = call i64 @XEXP(i64 %54, i32 0)
  %56 = load i64, i64* @stack_pointer_rtx, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %53, %37
  store i32 1, i32* %5, align 4
  br label %146

59:                                               ; preds = %53, %48, %43
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %10, align 8
  %62 = call i64 @XEXP(i64 %61, i32 1)
  store i64 %62, i64* %10, align 8
  br label %34

63:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %146

64:                                               ; preds = %19
  %65 = load i64, i64* %8, align 8
  %66 = call i64 @PATTERN(i64 %65)
  %67 = call i64 @GET_CODE(i64 %66)
  %68 = load i64, i64* @SET, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %118

70:                                               ; preds = %64
  %71 = load i64, i64* %8, align 8
  %72 = call i64 @PATTERN(i64 %71)
  store i64 %72, i64* %13, align 8
  %73 = load i64, i64* %13, align 8
  %74 = call i64 @SET_DEST(i64 %73)
  store i64 %74, i64* %14, align 8
  %75 = load i64, i64* %14, align 8
  %76 = call i64 @GET_CODE(i64 %75)
  %77 = load i64, i64* @ZERO_EXTRACT, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load i64, i64* %14, align 8
  %81 = call i64 @XEXP(i64 %80, i32 0)
  store i64 %81, i64* %14, align 8
  br label %82

82:                                               ; preds = %79, %70
  %83 = load i64, i64* %14, align 8
  %84 = call i64 @MEM_P(i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %109

86:                                               ; preds = %82
  %87 = load i64, i64* %14, align 8
  %88 = load i64, i64* %6, align 8
  %89 = call i64 @expr_equiv_p(i64 %87, i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %109, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load i64, i64* %14, align 8
  %96 = load i64, i64* %6, align 8
  %97 = call i64 @output_dependence(i64 %95, i64 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  store i32 1, i32* %5, align 4
  br label %146

100:                                              ; preds = %94
  br label %108

101:                                              ; preds = %91
  %102 = load i64, i64* %6, align 8
  %103 = load i64, i64* %14, align 8
  %104 = call i64 @output_dependence(i64 %102, i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  store i32 1, i32* %5, align 4
  br label %146

107:                                              ; preds = %101
  br label %108

108:                                              ; preds = %107, %100
  br label %109

109:                                              ; preds = %108, %86, %82
  %110 = load i64, i64* %13, align 8
  %111 = call i64 @SET_SRC(i64 %110)
  %112 = load i64, i64* %6, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @find_loads(i64 %111, i64 %112, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  store i32 1, i32* %5, align 4
  br label %146

117:                                              ; preds = %109
  br label %127

118:                                              ; preds = %64
  %119 = load i64, i64* %8, align 8
  %120 = call i64 @PATTERN(i64 %119)
  %121 = load i64, i64* %6, align 8
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @find_loads(i64 %120, i64 %121, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  store i32 1, i32* %5, align 4
  br label %146

126:                                              ; preds = %118
  br label %127

127:                                              ; preds = %126, %117
  %128 = load i64, i64* %8, align 8
  %129 = call i64 @find_reg_equal_equiv_note(i64 %128)
  store i64 %129, i64* %12, align 8
  %130 = load i64, i64* %12, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %127
  store i32 0, i32* %5, align 4
  br label %146

133:                                              ; preds = %127
  %134 = load i64, i64* %12, align 8
  %135 = call i64 @XEXP(i64 %134, i32 0)
  store i64 %135, i64* %12, align 8
  %136 = load i64, i64* %12, align 8
  %137 = load i64, i64* %6, align 8
  %138 = call i64 @expr_equiv_p(i64 %136, i64 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  store i32 0, i32* %5, align 4
  br label %146

141:                                              ; preds = %133
  %142 = load i64, i64* %12, align 8
  %143 = load i64, i64* %6, align 8
  %144 = load i32, i32* %9, align 4
  %145 = call i32 @find_loads(i64 %142, i64 %143, i32 %144)
  store i32 %145, i32* %5, align 4
  br label %146

146:                                              ; preds = %141, %140, %132, %125, %116, %106, %99, %63, %58, %31, %18
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local i32 @INSN_P(i64) #1

declare dso_local i64 @CALL_P(i64) #1

declare dso_local i32 @CONST_OR_PURE_CALL_P(i64) #1

declare dso_local i64 @pure_call_p(i64) #1

declare dso_local i64 @find_base_term(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i64 @PATTERN(i64) #1

declare dso_local i64 @SET_DEST(i64) #1

declare dso_local i64 @MEM_P(i64) #1

declare dso_local i64 @expr_equiv_p(i64, i64) #1

declare dso_local i64 @output_dependence(i64, i64) #1

declare dso_local i32 @find_loads(i64, i64, i32) #1

declare dso_local i64 @SET_SRC(i64) #1

declare dso_local i64 @find_reg_equal_equiv_note(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
