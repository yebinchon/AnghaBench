; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_mem_min_alignment.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_mem_min_alignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEM = common dso_local global i64 0, align 8
@TARGET_UNALIGNED_DOUBLES = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@REG = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i64 0, align 8
@HARD_FRAME_POINTER_REGNUM = common dso_local global i32 0, align 4
@STACK_POINTER_REGNUM = common dso_local global i32 0, align 4
@cfun = common dso_local global i64 0, align 8
@optimize = common dso_local global i64 0, align 8
@reload_completed = common dso_local global i64 0, align 8
@SPARC_STACK_BIAS = common dso_local global i32 0, align 4
@LO_SUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mem_min_alignment(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @GET_CODE(i64 %10)
  %12 = load i64, i64* @MEM, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %130

15:                                               ; preds = %2
  %16 = load i32, i32* @TARGET_UNALIGNED_DOUBLES, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @MEM_ALIGN(i64 %19)
  %21 = load i32, i32* @BITS_PER_UNIT, align 4
  %22 = udiv i32 %20, %21
  %23 = load i32, i32* %5, align 4
  %24 = icmp uge i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %130

26:                                               ; preds = %18, %15
  %27 = load i64, i64* %4, align 8
  %28 = call i64 @XEXP(i64 %27, i32 0)
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* @NULL_RTX, align 8
  store i64 %29, i64* %8, align 8
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @GET_CODE(i64 %30)
  %32 = load i64, i64* @PLUS, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %26
  %35 = load i64, i64* %6, align 8
  %36 = call i64 @XEXP(i64 %35, i32 0)
  %37 = call i64 @GET_CODE(i64 %36)
  %38 = load i64, i64* @REG, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %34
  %41 = load i64, i64* %6, align 8
  %42 = call i64 @XEXP(i64 %41, i32 0)
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i64 @XEXP(i64 %43, i32 1)
  %45 = call i64 @GET_CODE(i64 %44)
  %46 = load i64, i64* @CONST_INT, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i64, i64* %6, align 8
  %50 = call i64 @XEXP(i64 %49, i32 1)
  store i64 %50, i64* %8, align 8
  br label %53

51:                                               ; preds = %40
  %52 = load i64, i64* @const0_rtx, align 8
  store i64 %52, i64* %8, align 8
  br label %53

53:                                               ; preds = %51, %48
  br label %54

54:                                               ; preds = %53, %34
  br label %64

55:                                               ; preds = %26
  %56 = load i64, i64* %6, align 8
  %57 = call i64 @GET_CODE(i64 %56)
  %58 = load i64, i64* @REG, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i64, i64* %6, align 8
  store i64 %61, i64* %7, align 8
  %62 = load i64, i64* @const0_rtx, align 8
  store i64 %62, i64* %8, align 8
  br label %63

63:                                               ; preds = %60, %55
  br label %64

64:                                               ; preds = %63, %54
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* @NULL_RTX, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %115

68:                                               ; preds = %64
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @REGNO(i64 %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @HARD_FRAME_POINTER_REGNUM, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %103

74:                                               ; preds = %68
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @STACK_POINTER_REGNUM, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %103

78:                                               ; preds = %74
  %79 = load i64, i64* @cfun, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @REGNO_POINTER_ALIGN(i32 %82)
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @BITS_PER_UNIT, align 4
  %86 = mul i32 %84, %85
  %87 = icmp uge i32 %83, %86
  br i1 %87, label %94, label %88

88:                                               ; preds = %81, %78
  %89 = load i64, i64* @optimize, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %88
  %92 = load i64, i64* @reload_completed, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %91, %81
  %95 = load i64, i64* %8, align 8
  %96 = call i32 @INTVAL(i64 %95)
  %97 = load i32, i32* %5, align 4
  %98 = sub nsw i32 %97, 1
  %99 = and i32 %96, %98
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  store i32 1, i32* %3, align 4
  br label %130

102:                                              ; preds = %94, %91, %88
  br label %114

103:                                              ; preds = %74, %68
  %104 = load i64, i64* %8, align 8
  %105 = call i32 @INTVAL(i64 %104)
  %106 = load i32, i32* @SPARC_STACK_BIAS, align 4
  %107 = sub nsw i32 %105, %106
  %108 = load i32, i32* %5, align 4
  %109 = sub nsw i32 %108, 1
  %110 = and i32 %107, %109
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %103
  store i32 1, i32* %3, align 4
  br label %130

113:                                              ; preds = %103
  br label %114

114:                                              ; preds = %113, %102
  br label %129

115:                                              ; preds = %64
  %116 = load i32, i32* @TARGET_UNALIGNED_DOUBLES, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %115
  %119 = load i64, i64* %6, align 8
  %120 = call i64 @CONSTANT_P(i64 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %118
  %123 = load i64, i64* %6, align 8
  %124 = call i64 @GET_CODE(i64 %123)
  %125 = load i64, i64* @LO_SUM, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %122, %118, %115
  store i32 1, i32* %3, align 4
  br label %130

128:                                              ; preds = %122
  br label %129

129:                                              ; preds = %128, %114
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %129, %127, %112, %101, %25, %14
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i32 @MEM_ALIGN(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i32 @REGNO_POINTER_ALIGN(i32) #1

declare dso_local i32 @INTVAL(i64) #1

declare dso_local i64 @CONSTANT_P(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
