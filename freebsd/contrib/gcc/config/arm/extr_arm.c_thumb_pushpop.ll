; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_thumb_pushpop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_thumb_pushpop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PC_REGNUM = common dso_local global i32 0, align 4
@ARM_EABI_UNWIND_TABLES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"\09.save\09{\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%r\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"\09%s\09{\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"push\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@LAST_LO_REGNUM = common dso_local global i32 0, align 4
@LR_REGNUM = common dso_local global i32 0, align 4
@TARGET_INTERWORK = common dso_local global i64 0, align 8
@TARGET_BACKTRACE = common dso_local global i64 0, align 8
@current_function_calls_eh_return = common dso_local global i64 0, align 8
@SP_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32, i32*, i64)* @thumb_pushpop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thumb_pushpop(i32* %0, i64 %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %16 = load i64, i64* %7, align 8
  %17 = and i64 %16, 255
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @gcc_assert(i64 %19)
  %21 = load i32, i32* %12, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %5
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* @PC_REGNUM, align 4
  %29 = shl i32 1, %28
  %30 = sext i32 %29 to i64
  %31 = and i64 %27, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @thumb_exit(i32* %34, i32 -1)
  br label %222

36:                                               ; preds = %26, %23, %5
  %37 = load i64, i64* @ARM_EABI_UNWIND_TABLES, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %77

39:                                               ; preds = %36
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %77

42:                                               ; preds = %39
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 (i32*, i8*, ...) @fprintf(i32* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %71, %42
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %46, 15
  br i1 %47, label %48, label %74

48:                                               ; preds = %45
  %49 = load i64, i64* %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = shl i32 1, %50
  %52 = sext i32 %51 to i64
  %53 = and i64 %49, %52
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %48
  %56 = load i64, i64* %10, align 8
  %57 = load i32, i32* %11, align 4
  %58 = shl i32 1, %57
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = and i64 %56, %60
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 (i32*, i8*, ...) @fprintf(i32* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %55
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @asm_fprintf(i32* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %66, %48
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %45

74:                                               ; preds = %45
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 (i32*, i8*, ...) @fprintf(i32* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %39, %36
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %83 = call i32 (i32*, i8*, ...) @fprintf(i32* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %82)
  store i32 0, i32* %11, align 4
  br label %84

84:                                               ; preds = %106, %77
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @LAST_LO_REGNUM, align 4
  %87 = icmp sle i32 %85, %86
  br i1 %87, label %88, label %111

88:                                               ; preds = %84
  %89 = load i32, i32* %12, align 4
  %90 = and i32 %89, 1
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %88
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @asm_fprintf(i32* %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %12, align 4
  %97 = and i32 %96, -2
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = load i32*, i32** %6, align 8
  %101 = call i32 (i32*, i8*, ...) @fprintf(i32* %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %92
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %13, align 4
  br label %105

105:                                              ; preds = %102, %88
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %12, align 4
  %110 = ashr i32 %109, 1
  store i32 %110, i32* %12, align 4
  br label %84

111:                                              ; preds = %84
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %134

114:                                              ; preds = %111
  %115 = load i64, i64* %7, align 8
  %116 = load i32, i32* @LR_REGNUM, align 4
  %117 = shl i32 1, %116
  %118 = sext i32 %117 to i64
  %119 = and i64 %115, %118
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %114
  %122 = load i64, i64* %7, align 8
  %123 = and i64 %122, 255
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load i32*, i32** %6, align 8
  %127 = call i32 (i32*, i8*, ...) @fprintf(i32* %126, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %128

128:                                              ; preds = %125, %121
  %129 = load i32*, i32** %6, align 8
  %130 = load i32, i32* @LR_REGNUM, align 4
  %131 = call i32 @asm_fprintf(i32* %129, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %13, align 4
  br label %171

134:                                              ; preds = %114, %111
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %170, label %137

137:                                              ; preds = %134
  %138 = load i64, i64* %7, align 8
  %139 = load i32, i32* @PC_REGNUM, align 4
  %140 = shl i32 1, %139
  %141 = sext i32 %140 to i64
  %142 = and i64 %138, %141
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %170

144:                                              ; preds = %137
  %145 = load i64, i64* @TARGET_INTERWORK, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %153, label %147

147:                                              ; preds = %144
  %148 = load i64, i64* @TARGET_BACKTRACE, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %147
  %151 = load i64, i64* @current_function_calls_eh_return, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %150, %147, %144
  %154 = load i32*, i32** %6, align 8
  %155 = call i32 (i32*, i8*, ...) @fprintf(i32* %154, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %156 = load i32*, i32** %6, align 8
  %157 = call i32 @thumb_exit(i32* %156, i32 -1)
  br label %222

158:                                              ; preds = %150
  %159 = load i64, i64* %7, align 8
  %160 = and i64 %159, 255
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %158
  %163 = load i32*, i32** %6, align 8
  %164 = call i32 (i32*, i8*, ...) @fprintf(i32* %163, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %165

165:                                              ; preds = %162, %158
  %166 = load i32*, i32** %6, align 8
  %167 = load i32, i32* @PC_REGNUM, align 4
  %168 = call i32 @asm_fprintf(i32* %166, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %167)
  br label %169

169:                                              ; preds = %165
  br label %170

170:                                              ; preds = %169, %137, %134
  br label %171

171:                                              ; preds = %170, %128
  %172 = load i32*, i32** %6, align 8
  %173 = call i32 (i32*, i8*, ...) @fprintf(i32* %172, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %174 = load i32, i32* %8, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %222

176:                                              ; preds = %171
  %177 = load i32, i32* %13, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %222

179:                                              ; preds = %176
  %180 = call i64 (...) @dwarf2out_do_frame()
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %222

182:                                              ; preds = %179
  %183 = call i8* (...) @dwarf2out_cfi_label()
  store i8* %183, i8** %14, align 8
  %184 = load i64, i64* %10, align 8
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %15, align 4
  %186 = load i32, i32* %13, align 4
  %187 = mul nsw i32 %186, 4
  %188 = load i32*, i32** %9, align 8
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %189, %187
  store i32 %190, i32* %188, align 4
  %191 = load i8*, i8** %14, align 8
  %192 = load i32, i32* @SP_REGNUM, align 4
  %193 = load i32*, i32** %9, align 8
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @dwarf2out_def_cfa(i8* %191, i32 %192, i32 %194)
  store i32 0, i32* %13, align 4
  %196 = load i64, i64* %10, align 8
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %15, align 4
  store i32 0, i32* %11, align 4
  br label %198

198:                                              ; preds = %216, %182
  %199 = load i32, i32* %11, align 4
  %200 = icmp sle i32 %199, 14
  br i1 %200, label %201, label %221

201:                                              ; preds = %198
  %202 = load i32, i32* %15, align 4
  %203 = and i32 %202, 1
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %215

205:                                              ; preds = %201
  %206 = load i8*, i8** %14, align 8
  %207 = load i32, i32* %11, align 4
  %208 = load i32, i32* %13, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %13, align 4
  %210 = mul nsw i32 4, %208
  %211 = load i32*, i32** %9, align 8
  %212 = load i32, i32* %211, align 4
  %213 = sub nsw i32 %210, %212
  %214 = call i32 @dwarf2out_reg_save(i8* %206, i32 %207, i32 %213)
  br label %215

215:                                              ; preds = %205, %201
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %11, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %11, align 4
  %219 = load i32, i32* %15, align 4
  %220 = ashr i32 %219, 1
  store i32 %220, i32* %15, align 4
  br label %198

221:                                              ; preds = %198
  br label %222

222:                                              ; preds = %33, %153, %221, %179, %176, %171
  ret void
}

declare dso_local i32 @gcc_assert(i64) #1

declare dso_local i32 @thumb_exit(i32*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @asm_fprintf(i32*, i8*, i32) #1

declare dso_local i64 @dwarf2out_do_frame(...) #1

declare dso_local i8* @dwarf2out_cfi_label(...) #1

declare dso_local i32 @dwarf2out_def_cfa(i8*, i32, i32) #1

declare dso_local i32 @dwarf2out_reg_save(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
