; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_recog.c_asm_noperands.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_recog.c_asm_noperands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLOBBER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asm_noperands(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @GET_CODE(i32 %8)
  switch i32 %9, label %132 [
    i32 130, label %10
    i32 128, label %13
    i32 129, label %24
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @ASM_OPERANDS_INPUT_LENGTH(i32 %11)
  store i32 %12, i32* %2, align 4
  br label %133

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @SET_SRC(i32 %14)
  %16 = call i32 @GET_CODE(i32 %15)
  %17 = icmp eq i32 %16, 130
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @SET_SRC(i32 %19)
  %21 = call i32 @ASM_OPERANDS_INPUT_LENGTH(i32 %20)
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %2, align 4
  br label %133

23:                                               ; preds = %13
  store i32 -1, i32* %2, align 4
  br label %133

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @XVECEXP(i32 %25, i32 0, i32 0)
  %27 = call i32 @GET_CODE(i32 %26)
  %28 = icmp eq i32 %27, 128
  br i1 %28, label %29, label %103

29:                                               ; preds = %24
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @XVECEXP(i32 %30, i32 0, i32 0)
  %32 = call i32 @SET_SRC(i32 %31)
  %33 = call i32 @GET_CODE(i32 %32)
  %34 = icmp eq i32 %33, 130
  br i1 %34, label %35, label %103

35:                                               ; preds = %29
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @XVECLEN(i32 %36, i32 0)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %59, %35
  %39 = load i32, i32* %4, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %38
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %4, align 4
  %44 = sub nsw i32 %43, 1
  %45 = call i32 @XVECEXP(i32 %42, i32 0, i32 %44)
  %46 = call i32 @GET_CODE(i32 %45)
  %47 = icmp eq i32 %46, 128
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %62

49:                                               ; preds = %41
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %4, align 4
  %52 = sub nsw i32 %51, 1
  %53 = call i32 @XVECEXP(i32 %50, i32 0, i32 %52)
  %54 = call i32 @GET_CODE(i32 %53)
  %55 = load i32, i32* @CLOBBER, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i32 -1, i32* %2, align 4
  br label %133

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %4, align 4
  br label %38

62:                                               ; preds = %48, %38
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %93, %62
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %96

68:                                               ; preds = %64
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @XVECEXP(i32 %69, i32 0, i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @GET_CODE(i32 %72)
  %74 = icmp ne i32 %73, 128
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  store i32 -1, i32* %2, align 4
  br label %133

76:                                               ; preds = %68
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @SET_SRC(i32 %77)
  %79 = call i32 @GET_CODE(i32 %78)
  %80 = icmp ne i32 %79, 130
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 -1, i32* %2, align 4
  br label %133

82:                                               ; preds = %76
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @SET_SRC(i32 %83)
  %85 = call i32 @ASM_OPERANDS_INPUT_VEC(i32 %84)
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @XVECEXP(i32 %86, i32 0, i32 0)
  %88 = call i32 @SET_SRC(i32 %87)
  %89 = call i32 @ASM_OPERANDS_INPUT_VEC(i32 %88)
  %90 = icmp ne i32 %85, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  store i32 -1, i32* %2, align 4
  br label %133

92:                                               ; preds = %82
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %4, align 4
  br label %64

96:                                               ; preds = %64
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @XVECEXP(i32 %97, i32 0, i32 0)
  %99 = call i32 @SET_SRC(i32 %98)
  %100 = call i32 @ASM_OPERANDS_INPUT_LENGTH(i32 %99)
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %100, %101
  store i32 %102, i32* %2, align 4
  br label %133

103:                                              ; preds = %29, %24
  %104 = load i32, i32* %3, align 4
  %105 = call i32 @XVECEXP(i32 %104, i32 0, i32 0)
  %106 = call i32 @GET_CODE(i32 %105)
  %107 = icmp eq i32 %106, 130
  br i1 %107, label %108, label %131

108:                                              ; preds = %103
  %109 = load i32, i32* %3, align 4
  %110 = call i32 @XVECLEN(i32 %109, i32 0)
  %111 = sub nsw i32 %110, 1
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %124, %108
  %113 = load i32, i32* %7, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %112
  %116 = load i32, i32* %3, align 4
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @XVECEXP(i32 %116, i32 0, i32 %117)
  %119 = call i32 @GET_CODE(i32 %118)
  %120 = load i32, i32* @CLOBBER, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  store i32 -1, i32* %2, align 4
  br label %133

123:                                              ; preds = %115
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %7, align 4
  br label %112

127:                                              ; preds = %112
  %128 = load i32, i32* %3, align 4
  %129 = call i32 @XVECEXP(i32 %128, i32 0, i32 0)
  %130 = call i32 @ASM_OPERANDS_INPUT_LENGTH(i32 %129)
  store i32 %130, i32* %2, align 4
  br label %133

131:                                              ; preds = %103
  store i32 -1, i32* %2, align 4
  br label %133

132:                                              ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %133

133:                                              ; preds = %132, %131, %127, %122, %96, %91, %81, %75, %57, %23, %18, %10
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @ASM_OPERANDS_INPUT_LENGTH(i32) #1

declare dso_local i32 @SET_SRC(i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @ASM_OPERANDS_INPUT_VEC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
