; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_adjust_cost.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_adjust_cost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rs6000_sched_groups = common dso_local global i64 0, align 8
@SET = common dso_local global i64 0, align 8
@MEM = common dso_local global i64 0, align 8
@TARGET_POWER = common dso_local global i32 0, align 4
@rs6000_cpu_attr = common dso_local global i32 0, align 4
@CPU_PPC603 = common dso_local global i32 0, align 4
@CPU_PPC604 = common dso_local global i32 0, align 4
@CPU_PPC604E = common dso_local global i32 0, align 4
@CPU_PPC620 = common dso_local global i32 0, align 4
@CPU_PPC630 = common dso_local global i32 0, align 4
@CPU_PPC750 = common dso_local global i32 0, align 4
@CPU_PPC7400 = common dso_local global i32 0, align 4
@CPU_PPC7450 = common dso_local global i32 0, align 4
@CPU_POWER4 = common dso_local global i32 0, align 4
@CPU_POWER5 = common dso_local global i32 0, align 4
@TYPE_CMP = common dso_local global i32 0, align 4
@TYPE_COMPARE = common dso_local global i32 0, align 4
@TYPE_DELAYED_COMPARE = common dso_local global i32 0, align 4
@TYPE_IMUL_COMPARE = common dso_local global i32 0, align 4
@TYPE_LMUL_COMPARE = common dso_local global i32 0, align 4
@TYPE_FPCOMPARE = common dso_local global i32 0, align 4
@TYPE_CR_LOGICAL = common dso_local global i32 0, align 4
@TYPE_DELAYED_CR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @rs6000_adjust_cost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs6000_adjust_cost(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @recog_memoized(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %171

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @REG_NOTE_KIND(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %171

19:                                               ; preds = %14
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @REG_NOTE_KIND(i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %169

23:                                               ; preds = %19
  %24 = load i64, i64* @rs6000_sched_groups, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %67

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @PATTERN(i32 %27)
  %29 = call i64 @GET_CODE(i32 %28)
  %30 = load i64, i64* @SET, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %67

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @PATTERN(i32 %33)
  %35 = call i64 @GET_CODE(i32 %34)
  %36 = load i64, i64* @SET, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %67

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @PATTERN(i32 %39)
  %41 = call i32 @XEXP(i32 %40, i32 1)
  %42 = call i64 @GET_CODE(i32 %41)
  %43 = load i64, i64* @MEM, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %67

45:                                               ; preds = %38
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @PATTERN(i32 %46)
  %48 = call i32 @XEXP(i32 %47, i32 0)
  %49 = call i64 @GET_CODE(i32 %48)
  %50 = load i64, i64* @MEM, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %45
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @PATTERN(i32 %53)
  %55 = call i32 @XEXP(i32 %54, i32 1)
  %56 = call i32 @GET_MODE(i32 %55)
  %57 = call i64 @GET_MODE_SIZE(i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @PATTERN(i32 %58)
  %60 = call i32 @XEXP(i32 %59, i32 0)
  %61 = call i32 @GET_MODE(i32 %60)
  %62 = call i64 @GET_MODE_SIZE(i32 %61)
  %63 = icmp sgt i64 %57, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %52
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 14
  store i32 %66, i32* %5, align 4
  br label %171

67:                                               ; preds = %52, %45, %38, %32, %26, %23
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @get_attr_type(i32 %68)
  switch i32 %69, label %167 [
    i32 128, label %70
    i32 129, label %75
  ]

70:                                               ; preds = %67
  %71 = load i32, i32* @TARGET_POWER, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 5, i32 4
  store i32 %74, i32* %5, align 4
  br label %171

75:                                               ; preds = %67
  %76 = load i32, i32* @rs6000_cpu_attr, align 4
  %77 = load i32, i32* @CPU_PPC603, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %115, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* @rs6000_cpu_attr, align 4
  %81 = load i32, i32* @CPU_PPC604, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %115, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* @rs6000_cpu_attr, align 4
  %85 = load i32, i32* @CPU_PPC604E, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %115, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* @rs6000_cpu_attr, align 4
  %89 = load i32, i32* @CPU_PPC620, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %115, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* @rs6000_cpu_attr, align 4
  %93 = load i32, i32* @CPU_PPC630, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %115, label %95

95:                                               ; preds = %91
  %96 = load i32, i32* @rs6000_cpu_attr, align 4
  %97 = load i32, i32* @CPU_PPC750, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %115, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* @rs6000_cpu_attr, align 4
  %101 = load i32, i32* @CPU_PPC7400, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %115, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* @rs6000_cpu_attr, align 4
  %105 = load i32, i32* @CPU_PPC7450, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %115, label %107

107:                                              ; preds = %103
  %108 = load i32, i32* @rs6000_cpu_attr, align 4
  %109 = load i32, i32* @CPU_POWER4, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %115, label %111

111:                                              ; preds = %107
  %112 = load i32, i32* @rs6000_cpu_attr, align 4
  %113 = load i32, i32* @CPU_POWER5, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %166

115:                                              ; preds = %111, %107, %103, %99, %95, %91, %87, %83, %79, %75
  %116 = load i32, i32* %8, align 4
  %117 = call i64 @recog_memoized(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %166

119:                                              ; preds = %115
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @INSN_CODE(i32 %120)
  %122 = icmp sge i32 %121, 0
  br i1 %122, label %123, label %166

123:                                              ; preds = %119
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @get_attr_type(i32 %124)
  %126 = load i32, i32* @TYPE_CMP, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %163, label %128

128:                                              ; preds = %123
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @get_attr_type(i32 %129)
  %131 = load i32, i32* @TYPE_COMPARE, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %163, label %133

133:                                              ; preds = %128
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @get_attr_type(i32 %134)
  %136 = load i32, i32* @TYPE_DELAYED_COMPARE, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %163, label %138

138:                                              ; preds = %133
  %139 = load i32, i32* %8, align 4
  %140 = call i32 @get_attr_type(i32 %139)
  %141 = load i32, i32* @TYPE_IMUL_COMPARE, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %163, label %143

143:                                              ; preds = %138
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @get_attr_type(i32 %144)
  %146 = load i32, i32* @TYPE_LMUL_COMPARE, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %163, label %148

148:                                              ; preds = %143
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @get_attr_type(i32 %149)
  %151 = load i32, i32* @TYPE_FPCOMPARE, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %163, label %153

153:                                              ; preds = %148
  %154 = load i32, i32* %8, align 4
  %155 = call i32 @get_attr_type(i32 %154)
  %156 = load i32, i32* @TYPE_CR_LOGICAL, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %163, label %158

158:                                              ; preds = %153
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @get_attr_type(i32 %159)
  %161 = load i32, i32* @TYPE_DELAYED_CR, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %158, %153, %148, %143, %138, %133, %128, %123
  %164 = load i32, i32* %9, align 4
  %165 = add nsw i32 %164, 2
  store i32 %165, i32* %5, align 4
  br label %171

166:                                              ; preds = %158, %119, %115, %111
  br label %167

167:                                              ; preds = %67, %166
  br label %168

168:                                              ; preds = %167
  br label %169

169:                                              ; preds = %168, %19
  %170 = load i32, i32* %9, align 4
  store i32 %170, i32* %5, align 4
  br label %171

171:                                              ; preds = %169, %163, %70, %64, %18, %13
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local i64 @recog_memoized(i32) #1

declare dso_local i64 @REG_NOTE_KIND(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @get_attr_type(i32) #1

declare dso_local i32 @INSN_CODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
