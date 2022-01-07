; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_consume.c_dt_print_lquantize.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_consume.c_dt_print_lquantize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EDT_DMISMATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"\0A%16s %41s %-9s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"------------- Distribution -------------\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"< %d\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%16s \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c">= %d\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%16d \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dt_print_lquantize(i32* %0, i32* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca x86_fp80, align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca [32 x i8], align 16
  %24 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %25 = load i8*, i8** %9, align 8
  %26 = bitcast i8* %25 to i64*
  store i64* %26, i64** %12, align 8
  store x86_fp80 0xK00000000000000000000, x86_fp80* %18, align 16
  store i8 0, i8* %21, align 1
  store i8 0, i8* %22, align 1
  %27 = load i64, i64* %10, align 8
  %28 = icmp ult i64 %27, 4
  br i1 %28, label %29, label %33

29:                                               ; preds = %5
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* @EDT_DMISMATCH, align 4
  %32 = call i32 @dt_set_errno(i32* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  br label %226

33:                                               ; preds = %5
  %34 = load i64*, i64** %12, align 8
  %35 = getelementptr inbounds i64, i64* %34, i32 1
  store i64* %35, i64** %12, align 8
  %36 = load i64, i64* %34, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %17, align 4
  %38 = load i64, i64* %10, align 8
  %39 = sub i64 %38, 4
  store i64 %39, i64* %10, align 8
  %40 = load i32, i32* %17, align 4
  %41 = call i32 @DTRACE_LQUANTIZE_BASE(i32 %40)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %17, align 4
  %43 = call i32 @DTRACE_LQUANTIZE_STEP(i32 %42)
  store i32 %43, i32* %19, align 4
  %44 = load i32, i32* %17, align 4
  %45 = call i32 @DTRACE_LQUANTIZE_LEVELS(i32 %44)
  store i32 %45, i32* %20, align 4
  store i32 0, i32* %14, align 4
  %46 = load i32, i32* %20, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %15, align 4
  %48 = load i64, i64* %10, align 8
  %49 = load i32, i32* %20, align 4
  %50 = add nsw i32 %49, 2
  %51 = sext i32 %50 to i64
  %52 = mul i64 4, %51
  %53 = icmp ne i64 %48, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %33
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* @EDT_DMISMATCH, align 4
  %57 = call i32 @dt_set_errno(i32* %55, i32 %56)
  store i32 %57, i32* %6, align 4
  br label %226

58:                                               ; preds = %33
  br label %59

59:                                               ; preds = %73, %58
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %20, align 4
  %62 = add nsw i32 %61, 1
  %63 = icmp sle i32 %60, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load i64*, i64** %12, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br label %71

71:                                               ; preds = %64, %59
  %72 = phi i1 [ false, %59 ], [ %70, %64 ]
  br i1 %72, label %73, label %76

73:                                               ; preds = %71
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %14, align 4
  br label %59

76:                                               ; preds = %71
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %20, align 4
  %79 = add nsw i32 %78, 1
  %80 = icmp sgt i32 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 0, i32* %14, align 4
  store i32 2, i32* %15, align 4
  br label %113

82:                                               ; preds = %76
  %83 = load i32, i32* %14, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %14, align 4
  br label %88

88:                                               ; preds = %85, %82
  br label %89

89:                                               ; preds = %101, %88
  %90 = load i32, i32* %15, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load i64*, i64** %12, align 8
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 0
  br label %99

99:                                               ; preds = %92, %89
  %100 = phi i1 [ false, %89 ], [ %98, %92 ]
  br i1 %100, label %101, label %104

101:                                              ; preds = %99
  %102 = load i32, i32* %15, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %15, align 4
  br label %89

104:                                              ; preds = %99
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* %20, align 4
  %107 = add nsw i32 %106, 1
  %108 = icmp slt i32 %105, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i32, i32* %15, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %15, align 4
  br label %112

112:                                              ; preds = %109, %104
  br label %113

113:                                              ; preds = %112, %81
  %114 = load i32, i32* %14, align 4
  store i32 %114, i32* %13, align 4
  br label %115

115:                                              ; preds = %149, %113
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %15, align 4
  %118 = icmp sle i32 %116, %117
  br i1 %118, label %119, label %152

119:                                              ; preds = %115
  %120 = load i64*, i64** %12, align 8
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = icmp sgt i64 %124, 0
  %126 = zext i1 %125 to i32
  %127 = load i8, i8* %21, align 1
  %128 = sext i8 %127 to i32
  %129 = or i32 %128, %126
  %130 = trunc i32 %129 to i8
  store i8 %130, i8* %21, align 1
  %131 = load i64*, i64** %12, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = icmp slt i64 %135, 0
  %137 = zext i1 %136 to i32
  %138 = load i8, i8* %22, align 1
  %139 = sext i8 %138 to i32
  %140 = or i32 %139, %137
  %141 = trunc i32 %140 to i8
  store i8 %141, i8* %22, align 1
  %142 = load i32*, i32** %7, align 8
  %143 = load i64*, i64** %12, align 8
  %144 = load i32, i32* %13, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %143, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @dt_quantize_total(i32* %142, i64 %147, x86_fp80* %18)
  br label %149

149:                                              ; preds = %119
  %150 = load i32, i32* %13, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %13, align 4
  br label %115

152:                                              ; preds = %115
  %153 = load i32*, i32** %7, align 8
  %154 = load i32*, i32** %8, align 8
  %155 = call i32 (i32*, i32*, i8*, ...) @dt_printf(i32* %153, i32* %154, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  store i32 -1, i32* %6, align 4
  br label %226

158:                                              ; preds = %152
  %159 = load i32, i32* %14, align 4
  store i32 %159, i32* %13, align 4
  br label %160

160:                                              ; preds = %222, %158
  %161 = load i32, i32* %13, align 4
  %162 = load i32, i32* %15, align 4
  %163 = icmp sle i32 %161, %162
  br i1 %163, label %164, label %225

164:                                              ; preds = %160
  %165 = load i32, i32* %13, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %164
  %168 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  %169 = load i32, i32* %16, align 4
  %170 = call i32 @snprintf(i8* %168, i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %169)
  %171 = load i32*, i32** %7, align 8
  %172 = load i32*, i32** %8, align 8
  %173 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  %174 = call i32 (i32*, i32*, i8*, ...) @dt_printf(i32* %171, i32* %172, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %173)
  store i32 %174, i32* %24, align 4
  br label %203

175:                                              ; preds = %164
  %176 = load i32, i32* %13, align 4
  %177 = load i32, i32* %20, align 4
  %178 = add nsw i32 %177, 1
  %179 = icmp eq i32 %176, %178
  br i1 %179, label %180, label %192

180:                                              ; preds = %175
  %181 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  %182 = load i32, i32* %16, align 4
  %183 = load i32, i32* %20, align 4
  %184 = load i32, i32* %19, align 4
  %185 = mul nsw i32 %183, %184
  %186 = add nsw i32 %182, %185
  %187 = call i32 @snprintf(i8* %181, i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %186)
  %188 = load i32*, i32** %7, align 8
  %189 = load i32*, i32** %8, align 8
  %190 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  %191 = call i32 (i32*, i32*, i8*, ...) @dt_printf(i32* %188, i32* %189, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %190)
  store i32 %191, i32* %24, align 4
  br label %202

192:                                              ; preds = %175
  %193 = load i32*, i32** %7, align 8
  %194 = load i32*, i32** %8, align 8
  %195 = load i32, i32* %16, align 4
  %196 = load i32, i32* %13, align 4
  %197 = sub nsw i32 %196, 1
  %198 = load i32, i32* %19, align 4
  %199 = mul nsw i32 %197, %198
  %200 = add nsw i32 %195, %199
  %201 = call i32 (i32*, i32*, i8*, ...) @dt_printf(i32* %193, i32* %194, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %200)
  store i32 %201, i32* %24, align 4
  br label %202

202:                                              ; preds = %192, %180
  br label %203

203:                                              ; preds = %202, %167
  %204 = load i32, i32* %24, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %220, label %206

206:                                              ; preds = %203
  %207 = load i32*, i32** %7, align 8
  %208 = load i32*, i32** %8, align 8
  %209 = load i64*, i64** %12, align 8
  %210 = load i32, i32* %13, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i64, i64* %209, i64 %211
  %213 = load i64, i64* %212, align 8
  %214 = load i32, i32* %11, align 4
  %215 = load x86_fp80, x86_fp80* %18, align 16
  %216 = load i8, i8* %21, align 1
  %217 = load i8, i8* %22, align 1
  %218 = call i64 @dt_print_quantline(i32* %207, i32* %208, i64 %213, i32 %214, x86_fp80 %215, i8 signext %216, i8 signext %217)
  %219 = icmp slt i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %206, %203
  store i32 -1, i32* %6, align 4
  br label %226

221:                                              ; preds = %206
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %13, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %13, align 4
  br label %160

225:                                              ; preds = %160
  store i32 0, i32* %6, align 4
  br label %226

226:                                              ; preds = %225, %220, %157, %54, %29
  %227 = load i32, i32* %6, align 4
  ret i32 %227
}

declare dso_local i32 @dt_set_errno(i32*, i32) #1

declare dso_local i32 @DTRACE_LQUANTIZE_BASE(i32) #1

declare dso_local i32 @DTRACE_LQUANTIZE_STEP(i32) #1

declare dso_local i32 @DTRACE_LQUANTIZE_LEVELS(i32) #1

declare dso_local i32 @dt_quantize_total(i32*, i64, x86_fp80*) #1

declare dso_local i32 @dt_printf(i32*, i32*, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @dt_print_quantline(i32*, i32*, i64, i32, x86_fp80, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
