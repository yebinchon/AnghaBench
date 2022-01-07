; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_fixup_binary_operands.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_fixup_binary_operands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTX_COMM_ARITH = common dso_local global i64 0, align 8
@MEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ix86_fixup_binary_operands(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @GET_RTX_CLASS(i32 %21)
  %23 = load i64, i64* @RTX_COMM_ARITH, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %3
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i64 @rtx_equal_p(i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @immediate_operand(i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30, %25
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %35, %30, %3
  store i32 0, i32* %7, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i64 @GET_CODE(i32 %40)
  %42 = load i64, i64* @MEM, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %66

44:                                               ; preds = %39
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @rtx_equal_p(i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 1, i32* %7, align 4
  br label %65

50:                                               ; preds = %44
  %51 = load i32, i32* %4, align 4
  %52 = call i64 @GET_RTX_CLASS(i32 %51)
  %53 = load i64, i64* @RTX_COMM_ARITH, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i64 @rtx_equal_p(i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 2, i32* %7, align 4
  br label %64

61:                                               ; preds = %55, %50
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @gen_reg_rtx(i32 %62)
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %61, %60
  br label %65

65:                                               ; preds = %64, %49
  br label %66

66:                                               ; preds = %65, %39
  %67 = load i32, i32* %8, align 4
  %68 = call i64 @GET_CODE(i32 %67)
  %69 = load i64, i64* @MEM, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %88

71:                                               ; preds = %66
  %72 = load i32, i32* %9, align 4
  %73 = call i64 @GET_CODE(i32 %72)
  %74 = load i64, i64* @MEM, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %71
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 2
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @force_reg(i32 %80, i32 %81)
  store i32 %82, i32* %9, align 4
  br label %87

83:                                               ; preds = %76
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @force_reg(i32 %84, i32 %85)
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %83, %79
  br label %88

88:                                               ; preds = %87, %71, %66
  %89 = load i32, i32* %8, align 4
  %90 = call i64 @CONSTANT_P(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %109, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %8, align 4
  %97 = call i64 @GET_CODE(i32 %96)
  %98 = load i64, i64* @MEM, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %95, %88
  %101 = load i32, i32* %4, align 4
  %102 = call i64 @GET_RTX_CLASS(i32 %101)
  %103 = load i64, i64* @RTX_COMM_ARITH, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @force_reg(i32 %106, i32 %107)
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %105, %100, %95, %92
  %110 = load i32, i32* %8, align 4
  %111 = load i32*, i32** %6, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  store i32 %110, i32* %112, align 4
  store i32 %110, i32* %8, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load i32*, i32** %6, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 2
  store i32 %113, i32* %115, align 4
  store i32 %113, i32* %9, align 4
  %116 = load i32, i32* %10, align 4
  ret i32 %116
}

declare dso_local i64 @GET_RTX_CLASS(i32) #1

declare dso_local i64 @rtx_equal_p(i32, i32) #1

declare dso_local i64 @immediate_operand(i32, i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @force_reg(i32, i32) #1

declare dso_local i64 @CONSTANT_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
