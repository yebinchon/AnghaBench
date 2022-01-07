; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_conditional_register_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_conditional_register_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_POWER = common dso_local global i32 0, align 4
@fixed_regs = common dso_local global i32* null, align 8
@TARGET_64BIT = common dso_local global i64 0, align 8
@call_really_used_regs = common dso_local global i32* null, align 8
@call_used_regs = common dso_local global i32* null, align 8
@TARGET_SOFT_FLOAT = common dso_local global i64 0, align 8
@TARGET_FPRS = common dso_local global i32 0, align 4
@DEFAULT_ABI = common dso_local global i64 0, align 8
@ABI_AIX = common dso_local global i64 0, align 8
@ABI_V4 = common dso_local global i64 0, align 8
@PIC_OFFSET_TABLE_REGNUM = common dso_local global i64 0, align 8
@INVALID_REGNUM = common dso_local global i64 0, align 8
@flag_pic = common dso_local global i32 0, align 4
@RS6000_PIC_OFFSET_TABLE_REGNUM = common dso_local global i64 0, align 8
@ABI_DARWIN = common dso_local global i64 0, align 8
@TARGET_TOC = common dso_local global i64 0, align 8
@TARGET_MINIMAL_TOC = common dso_local global i64 0, align 8
@TARGET_ALTIVEC = common dso_local global i64 0, align 8
@global_regs = common dso_local global i32* null, align 8
@VSCR_REGNO = common dso_local global i64 0, align 8
@TARGET_SPE = common dso_local global i64 0, align 8
@SPEFSCR_REGNO = common dso_local global i64 0, align 8
@FIXED_SCRATCH = common dso_local global i64 0, align 8
@FIRST_ALTIVEC_REGNO = common dso_local global i32 0, align 4
@LAST_ALTIVEC_REGNO = common dso_local global i32 0, align 4
@VRSAVE_REGNO = common dso_local global i64 0, align 8
@TARGET_ALTIVEC_ABI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rs6000_conditional_register_usage() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @TARGET_POWER, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = load i32*, i32** @fixed_regs, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 64
  store i32 1, i32* %6, align 4
  br label %7

7:                                                ; preds = %4, %0
  %8 = load i64, i64* @TARGET_64BIT, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = load i32*, i32** @call_really_used_regs, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 13
  store i32 1, i32* %12, align 4
  %13 = load i32*, i32** @call_used_regs, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 13
  store i32 1, i32* %14, align 4
  %15 = load i32*, i32** @fixed_regs, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 13
  store i32 1, i32* %16, align 4
  br label %17

17:                                               ; preds = %10, %7
  %18 = load i64, i64* @TARGET_SOFT_FLOAT, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @TARGET_FPRS, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %44, label %23

23:                                               ; preds = %20, %17
  store i32 32, i32* %1, align 4
  br label %24

24:                                               ; preds = %40, %23
  %25 = load i32, i32* %1, align 4
  %26 = icmp slt i32 %25, 64
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  %28 = load i32*, i32** @call_really_used_regs, align 8
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 1, i32* %31, align 4
  %32 = load i32*, i32** @call_used_regs, align 8
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 1, i32* %35, align 4
  %36 = load i32*, i32** @fixed_regs, align 8
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 1, i32* %39, align 4
  br label %40

40:                                               ; preds = %27
  %41 = load i32, i32* %1, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %1, align 4
  br label %24

43:                                               ; preds = %24
  br label %44

44:                                               ; preds = %43, %20
  %45 = load i64, i64* @DEFAULT_ABI, align 8
  %46 = load i64, i64* @ABI_AIX, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32*, i32** @call_really_used_regs, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %44
  %52 = load i64, i64* @DEFAULT_ABI, align 8
  %53 = load i64, i64* @ABI_V4, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = load i64, i64* @PIC_OFFSET_TABLE_REGNUM, align 8
  %57 = load i64, i64* @INVALID_REGNUM, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i32, i32* @flag_pic, align 4
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32*, i32** @fixed_regs, align 8
  %64 = load i64, i64* @RS6000_PIC_OFFSET_TABLE_REGNUM, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %62, %59, %55, %51
  %67 = load i64, i64* @DEFAULT_ABI, align 8
  %68 = load i64, i64* @ABI_V4, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %87

70:                                               ; preds = %66
  %71 = load i64, i64* @PIC_OFFSET_TABLE_REGNUM, align 8
  %72 = load i64, i64* @INVALID_REGNUM, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = load i32, i32* @flag_pic, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %87

77:                                               ; preds = %74
  %78 = load i32*, i32** @call_really_used_regs, align 8
  %79 = load i64, i64* @RS6000_PIC_OFFSET_TABLE_REGNUM, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32 1, i32* %80, align 4
  %81 = load i32*, i32** @call_used_regs, align 8
  %82 = load i64, i64* @RS6000_PIC_OFFSET_TABLE_REGNUM, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32 1, i32* %83, align 4
  %84 = load i32*, i32** @fixed_regs, align 8
  %85 = load i64, i64* @RS6000_PIC_OFFSET_TABLE_REGNUM, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32 1, i32* %86, align 4
  br label %87

87:                                               ; preds = %77, %74, %70, %66
  %88 = load i64, i64* @DEFAULT_ABI, align 8
  %89 = load i64, i64* @ABI_DARWIN, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %87
  %92 = load i64, i64* @PIC_OFFSET_TABLE_REGNUM, align 8
  %93 = load i64, i64* @INVALID_REGNUM, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %91
  %96 = load i32*, i32** @call_really_used_regs, align 8
  %97 = load i64, i64* @RS6000_PIC_OFFSET_TABLE_REGNUM, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  store i32 1, i32* %98, align 4
  %99 = load i32*, i32** @call_used_regs, align 8
  %100 = load i64, i64* @RS6000_PIC_OFFSET_TABLE_REGNUM, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  store i32 1, i32* %101, align 4
  %102 = load i32*, i32** @fixed_regs, align 8
  %103 = load i64, i64* @RS6000_PIC_OFFSET_TABLE_REGNUM, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32 1, i32* %104, align 4
  br label %105

105:                                              ; preds = %95, %91, %87
  %106 = load i64, i64* @TARGET_TOC, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %105
  %109 = load i64, i64* @TARGET_MINIMAL_TOC, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %108
  %112 = load i32*, i32** @call_used_regs, align 8
  %113 = load i64, i64* @RS6000_PIC_OFFSET_TABLE_REGNUM, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  store i32 1, i32* %114, align 4
  %115 = load i32*, i32** @fixed_regs, align 8
  %116 = load i64, i64* @RS6000_PIC_OFFSET_TABLE_REGNUM, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32 1, i32* %117, align 4
  br label %118

118:                                              ; preds = %111, %108, %105
  %119 = load i64, i64* @TARGET_ALTIVEC, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = load i32*, i32** @global_regs, align 8
  %123 = load i64, i64* @VSCR_REGNO, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  store i32 1, i32* %124, align 4
  br label %125

125:                                              ; preds = %121, %118
  %126 = load i64, i64* @TARGET_SPE, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %125
  %129 = load i32*, i32** @global_regs, align 8
  %130 = load i64, i64* @SPEFSCR_REGNO, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  store i32 1, i32* %131, align 4
  %132 = load i32*, i32** @call_really_used_regs, align 8
  %133 = load i64, i64* @FIXED_SCRATCH, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  store i32 1, i32* %134, align 4
  %135 = load i32*, i32** @call_used_regs, align 8
  %136 = load i64, i64* @FIXED_SCRATCH, align 8
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  store i32 1, i32* %137, align 4
  %138 = load i32*, i32** @fixed_regs, align 8
  %139 = load i64, i64* @FIXED_SCRATCH, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  store i32 1, i32* %140, align 4
  br label %141

141:                                              ; preds = %128, %125
  %142 = load i64, i64* @TARGET_ALTIVEC, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %170, label %144

144:                                              ; preds = %141
  %145 = load i32, i32* @FIRST_ALTIVEC_REGNO, align 4
  store i32 %145, i32* %1, align 4
  br label %146

146:                                              ; preds = %163, %144
  %147 = load i32, i32* %1, align 4
  %148 = load i32, i32* @LAST_ALTIVEC_REGNO, align 4
  %149 = icmp sle i32 %147, %148
  br i1 %149, label %150, label %166

150:                                              ; preds = %146
  %151 = load i32*, i32** @call_really_used_regs, align 8
  %152 = load i32, i32* %1, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  store i32 1, i32* %154, align 4
  %155 = load i32*, i32** @call_used_regs, align 8
  %156 = load i32, i32* %1, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  store i32 1, i32* %158, align 4
  %159 = load i32*, i32** @fixed_regs, align 8
  %160 = load i32, i32* %1, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  store i32 1, i32* %162, align 4
  br label %163

163:                                              ; preds = %150
  %164 = load i32, i32* %1, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %1, align 4
  br label %146

166:                                              ; preds = %146
  %167 = load i32*, i32** @call_really_used_regs, align 8
  %168 = load i64, i64* @VRSAVE_REGNO, align 8
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  store i32 1, i32* %169, align 4
  br label %170

170:                                              ; preds = %166, %141
  %171 = load i64, i64* @TARGET_ALTIVEC_ABI, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %193

173:                                              ; preds = %170
  %174 = load i32, i32* @FIRST_ALTIVEC_REGNO, align 4
  store i32 %174, i32* %1, align 4
  br label %175

175:                                              ; preds = %189, %173
  %176 = load i32, i32* %1, align 4
  %177 = load i32, i32* @FIRST_ALTIVEC_REGNO, align 4
  %178 = add nsw i32 %177, 20
  %179 = icmp slt i32 %176, %178
  br i1 %179, label %180, label %192

180:                                              ; preds = %175
  %181 = load i32*, i32** @call_really_used_regs, align 8
  %182 = load i32, i32* %1, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  store i32 1, i32* %184, align 4
  %185 = load i32*, i32** @call_used_regs, align 8
  %186 = load i32, i32* %1, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  store i32 1, i32* %188, align 4
  br label %189

189:                                              ; preds = %180
  %190 = load i32, i32* %1, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %1, align 4
  br label %175

192:                                              ; preds = %175
  br label %193

193:                                              ; preds = %192, %170
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
