; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_x86_order_regs_for_local_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_x86_order_regs_for_local_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@call_used_regs = common dso_local global i64* null, align 8
@reg_alloc_order = common dso_local global i32* null, align 8
@TARGET_SSE_MATH = common dso_local global i64 0, align 8
@FIRST_STACK_REG = common dso_local global i32 0, align 4
@LAST_STACK_REG = common dso_local global i32 0, align 4
@FIRST_SSE_REG = common dso_local global i32 0, align 4
@LAST_SSE_REG = common dso_local global i32 0, align 4
@FIRST_REX_SSE_REG = common dso_local global i32 0, align 4
@LAST_REX_SSE_REG = common dso_local global i32 0, align 4
@FIRST_MMX_REG = common dso_local global i32 0, align 4
@LAST_MMX_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @x86_order_regs_for_local_alloc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %26, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %29

7:                                                ; preds = %3
  %8 = load i32, i32* %2, align 4
  %9 = call i64 @GENERAL_REGNO_P(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = load i64*, i64** @call_used_regs, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %11
  %19 = load i32, i32* %2, align 4
  %20 = load i32*, i32** @reg_alloc_order, align 8
  %21 = load i32, i32* %1, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %1, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  store i32 %19, i32* %24, align 4
  br label %25

25:                                               ; preds = %18, %11, %7
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %2, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %2, align 4
  br label %3

29:                                               ; preds = %3
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %53, %29
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %30
  %35 = load i32, i32* %2, align 4
  %36 = call i64 @GENERAL_REGNO_P(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load i64*, i64** @call_used_regs, align 8
  %40 = load i32, i32* %2, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %2, align 4
  %47 = load i32*, i32** @reg_alloc_order, align 8
  %48 = load i32, i32* %1, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %1, align 4
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  store i32 %46, i32* %51, align 4
  br label %52

52:                                               ; preds = %45, %38, %34
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %2, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %2, align 4
  br label %30

56:                                               ; preds = %30
  %57 = load i64, i64* @TARGET_SSE_MATH, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %76, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* @FIRST_STACK_REG, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %72, %59
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* @LAST_STACK_REG, align 4
  %64 = icmp sle i32 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %61
  %66 = load i32, i32* %2, align 4
  %67 = load i32*, i32** @reg_alloc_order, align 8
  %68 = load i32, i32* %1, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %1, align 4
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  store i32 %66, i32* %71, align 4
  br label %72

72:                                               ; preds = %65
  %73 = load i32, i32* %2, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %2, align 4
  br label %61

75:                                               ; preds = %61
  br label %76

76:                                               ; preds = %75, %56
  %77 = load i32, i32* @FIRST_SSE_REG, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %89, %76
  %79 = load i32, i32* %2, align 4
  %80 = load i32, i32* @LAST_SSE_REG, align 4
  %81 = icmp sle i32 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %78
  %83 = load i32, i32* %2, align 4
  %84 = load i32*, i32** @reg_alloc_order, align 8
  %85 = load i32, i32* %1, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %1, align 4
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  store i32 %83, i32* %88, align 4
  br label %89

89:                                               ; preds = %82
  %90 = load i32, i32* %2, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %2, align 4
  br label %78

92:                                               ; preds = %78
  %93 = load i32, i32* @FIRST_REX_SSE_REG, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %105, %92
  %95 = load i32, i32* %2, align 4
  %96 = load i32, i32* @LAST_REX_SSE_REG, align 4
  %97 = icmp sle i32 %95, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %94
  %99 = load i32, i32* %2, align 4
  %100 = load i32*, i32** @reg_alloc_order, align 8
  %101 = load i32, i32* %1, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %1, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  store i32 %99, i32* %104, align 4
  br label %105

105:                                              ; preds = %98
  %106 = load i32, i32* %2, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %2, align 4
  br label %94

108:                                              ; preds = %94
  %109 = load i64, i64* @TARGET_SSE_MATH, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %128

111:                                              ; preds = %108
  %112 = load i32, i32* @FIRST_STACK_REG, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %124, %111
  %114 = load i32, i32* %2, align 4
  %115 = load i32, i32* @LAST_STACK_REG, align 4
  %116 = icmp sle i32 %114, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %113
  %118 = load i32, i32* %2, align 4
  %119 = load i32*, i32** @reg_alloc_order, align 8
  %120 = load i32, i32* %1, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %1, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  store i32 %118, i32* %123, align 4
  br label %124

124:                                              ; preds = %117
  %125 = load i32, i32* %2, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %2, align 4
  br label %113

127:                                              ; preds = %113
  br label %128

128:                                              ; preds = %127, %108
  %129 = load i32, i32* @FIRST_MMX_REG, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %141, %128
  %131 = load i32, i32* %2, align 4
  %132 = load i32, i32* @LAST_MMX_REG, align 4
  %133 = icmp sle i32 %131, %132
  br i1 %133, label %134, label %144

134:                                              ; preds = %130
  %135 = load i32, i32* %2, align 4
  %136 = load i32*, i32** @reg_alloc_order, align 8
  %137 = load i32, i32* %1, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %1, align 4
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  store i32 %135, i32* %140, align 4
  br label %141

141:                                              ; preds = %134
  %142 = load i32, i32* %2, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %2, align 4
  br label %130

144:                                              ; preds = %130
  br label %145

145:                                              ; preds = %149, %144
  %146 = load i32, i32* %1, align 4
  %147 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %155

149:                                              ; preds = %145
  %150 = load i32*, i32** @reg_alloc_order, align 8
  %151 = load i32, i32* %1, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %1, align 4
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  store i32 0, i32* %154, align 4
  br label %145

155:                                              ; preds = %145
  ret void
}

declare dso_local i64 @GENERAL_REGNO_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
