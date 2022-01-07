; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_thumb_unexpanded_epilogue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_thumb_unexpanded_epilogue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@return_used_this_function = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"no low registers available for popping high registers\00", align 1
@LAST_LO_REGNUM = common dso_local global i32 0, align 4
@asm_out_file = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"\09mov\09%r, %r\0A\00", align 1
@LR_REGNUM = common dso_local global i32 0, align 4
@current_function_pretend_args_size = common dso_local global i64 0, align 8
@TARGET_BACKTRACE = common dso_local global i64 0, align 8
@PC_REGNUM = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IP_REGNUM = common dso_local global i32 0, align 4
@LAST_ARG_REGNUM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"\09add\09%r, %r, #%d\0A\00", align 1
@SP_REGNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @thumb_unexpanded_epilogue() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load i64, i64* @return_used_this_function, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  br label %241

12:                                               ; preds = %0
  %13 = call i32 (...) @arm_current_func_type()
  %14 = call i64 @IS_NAKED(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  br label %241

17:                                               ; preds = %12
  %18 = call i64 (...) @thumb_compute_save_reg_mask()
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* %3, align 8
  %20 = and i64 %19, 3840
  %21 = call i32 @bit_count(i64 %20)
  store i32 %21, i32* %4, align 4
  %22 = call i32 (...) @arm_size_return_regs()
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %142

25:                                               ; preds = %17
  %26 = load i64, i64* %3, align 8
  %27 = and i64 %26, 255
  store i64 %27, i64* %7, align 8
  %28 = load i32, i32* %6, align 4
  %29 = icmp sle i32 %28, 12
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i64, i64* %7, align 8
  %32 = or i64 %31, 8
  store i64 %32, i64* %7, align 8
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i32, i32* %6, align 4
  %35 = icmp sle i32 %34, 8
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i64, i64* %7, align 8
  %38 = or i64 %37, 4
  store i64 %38, i64* %7, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i64, i64* %7, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i32 @internal_error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %39
  store i32 8, i32* %8, align 4
  br label %45

45:                                               ; preds = %57, %44
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 13
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = load i64, i64* %3, align 8
  %50 = load i32, i32* %8, align 4
  %51 = shl i32 1, %50
  %52 = sext i32 %51 to i64
  %53 = and i64 %49, %52
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %60

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %45

60:                                               ; preds = %55, %45
  br label %61

61:                                               ; preds = %138, %60
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %139

64:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %84, %64
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* @LAST_LO_REGNUM, align 4
  %68 = icmp sle i32 %66, %67
  br i1 %68, label %69, label %87

69:                                               ; preds = %65
  %70 = load i64, i64* %7, align 8
  %71 = load i32, i32* %2, align 4
  %72 = shl i32 1, %71
  %73 = sext i32 %72 to i64
  %74 = and i64 %70, %73
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %76, %69
  %80 = load i32, i32* %4, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %87

83:                                               ; preds = %79
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %2, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %2, align 4
  br label %65

87:                                               ; preds = %82, %65
  %88 = load i32, i32* %2, align 4
  %89 = shl i32 2, %88
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* %7, align 8
  %93 = and i64 %92, %91
  store i64 %93, i64* %7, align 8
  %94 = load i32, i32* @asm_out_file, align 4
  %95 = load i64, i64* %7, align 8
  %96 = trunc i64 %95 to i32
  %97 = load i64, i64* %7, align 8
  %98 = trunc i64 %97 to i32
  %99 = call i32 @thumb_pushpop(i32 %94, i32 %96, i32 0, i32* null, i32 %98)
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %135, %87
  %101 = load i32, i32* %2, align 4
  %102 = load i32, i32* @LAST_LO_REGNUM, align 4
  %103 = icmp sle i32 %101, %102
  br i1 %103, label %104, label %138

104:                                              ; preds = %100
  %105 = load i64, i64* %7, align 8
  %106 = load i32, i32* %2, align 4
  %107 = shl i32 1, %106
  %108 = sext i32 %107 to i64
  %109 = and i64 %105, %108
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %134

111:                                              ; preds = %104
  %112 = load i32, i32* @asm_out_file, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %2, align 4
  %115 = call i32 (i32, i8*, i32, i32, ...) @asm_fprintf(i32 %112, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %113, i32 %114)
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %130, %111
  %119 = load i32, i32* %8, align 4
  %120 = icmp slt i32 %119, 13
  br i1 %120, label %121, label %133

121:                                              ; preds = %118
  %122 = load i64, i64* %3, align 8
  %123 = load i32, i32* %8, align 4
  %124 = shl i32 1, %123
  %125 = sext i32 %124 to i64
  %126 = and i64 %122, %125
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  br label %133

129:                                              ; preds = %121
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  br label %118

133:                                              ; preds = %128, %118
  br label %134

134:                                              ; preds = %133, %104
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %2, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %2, align 4
  br label %100

138:                                              ; preds = %100
  br label %61

139:                                              ; preds = %61
  %140 = load i64, i64* %3, align 8
  %141 = and i64 %140, -3841
  store i64 %141, i64* %3, align 8
  br label %142

142:                                              ; preds = %139, %17
  %143 = load i64, i64* %3, align 8
  %144 = load i32, i32* @LR_REGNUM, align 4
  %145 = shl i32 1, %144
  %146 = sext i32 %145 to i64
  %147 = and i64 %143, %146
  %148 = icmp ne i64 %147, 0
  %149 = zext i1 %148 to i32
  store i32 %149, i32* %5, align 4
  %150 = load i64, i64* %3, align 8
  %151 = and i64 %150, 255
  store i64 %151, i64* %3, align 8
  %152 = load i64, i64* @current_function_pretend_args_size, align 8
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %142
  %155 = load i64, i64* @TARGET_BACKTRACE, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %185

157:                                              ; preds = %154, %142
  %158 = load i32, i32* %5, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %157
  %161 = load i32, i32* @PC_REGNUM, align 4
  %162 = shl i32 1, %161
  %163 = sext i32 %162 to i64
  %164 = load i64, i64* %3, align 8
  %165 = or i64 %164, %163
  store i64 %165, i64* %3, align 8
  br label %166

166:                                              ; preds = %160, %157
  %167 = load i64, i64* %3, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %166
  %170 = load i32, i32* @asm_out_file, align 4
  %171 = load i64, i64* %3, align 8
  %172 = trunc i64 %171 to i32
  %173 = load i32, i32* @FALSE, align 4
  %174 = load i64, i64* %3, align 8
  %175 = trunc i64 %174 to i32
  %176 = call i32 @thumb_pushpop(i32 %170, i32 %172, i32 %173, i32* null, i32 %175)
  br label %177

177:                                              ; preds = %169, %166
  %178 = load i32, i32* %5, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %184, label %180

180:                                              ; preds = %177
  %181 = load i32, i32* @asm_out_file, align 4
  %182 = load i32, i32* @LR_REGNUM, align 4
  %183 = call i32 @thumb_exit(i32 %181, i32 %182)
  br label %184

184:                                              ; preds = %180, %177
  br label %240

185:                                              ; preds = %154
  %186 = load i64, i64* %3, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %185
  %189 = load i32, i32* @asm_out_file, align 4
  %190 = load i64, i64* %3, align 8
  %191 = trunc i64 %190 to i32
  %192 = load i32, i32* @FALSE, align 4
  %193 = load i64, i64* %3, align 8
  %194 = trunc i64 %193 to i32
  %195 = call i32 @thumb_pushpop(i32 %189, i32 %191, i32 %192, i32* null, i32 %194)
  br label %196

196:                                              ; preds = %188, %185
  %197 = load i32, i32* %5, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %229

199:                                              ; preds = %196
  %200 = load i32, i32* %6, align 4
  %201 = icmp sgt i32 %200, 12
  br i1 %201, label %202, label %207

202:                                              ; preds = %199
  %203 = load i32, i32* @asm_out_file, align 4
  %204 = load i32, i32* @IP_REGNUM, align 4
  %205 = load i32, i32* @LAST_ARG_REGNUM, align 4
  %206 = call i32 (i32, i8*, i32, i32, ...) @asm_fprintf(i32 %203, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %204, i32 %205)
  br label %207

207:                                              ; preds = %202, %199
  %208 = load i32, i32* @asm_out_file, align 4
  %209 = load i32, i32* @LAST_ARG_REGNUM, align 4
  %210 = shl i32 1, %209
  %211 = load i32, i32* @LAST_ARG_REGNUM, align 4
  %212 = shl i32 1, %211
  %213 = call i32 @thumb_pushpop(i32 %208, i32 %210, i32 0, i32* null, i32 %212)
  %214 = load i32, i32* %6, align 4
  %215 = icmp sgt i32 %214, 12
  br i1 %215, label %216, label %226

216:                                              ; preds = %207
  %217 = load i32, i32* @asm_out_file, align 4
  %218 = load i32, i32* @LR_REGNUM, align 4
  %219 = load i32, i32* @LAST_ARG_REGNUM, align 4
  %220 = call i32 (i32, i8*, i32, i32, ...) @asm_fprintf(i32 %217, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %218, i32 %219)
  %221 = load i32, i32* @asm_out_file, align 4
  %222 = load i32, i32* @LAST_ARG_REGNUM, align 4
  %223 = load i32, i32* @IP_REGNUM, align 4
  %224 = call i32 (i32, i8*, i32, i32, ...) @asm_fprintf(i32 %221, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %222, i32 %223)
  %225 = load i32, i32* @LR_REGNUM, align 4
  store i32 %225, i32* %2, align 4
  br label %228

226:                                              ; preds = %207
  %227 = load i32, i32* @LAST_ARG_REGNUM, align 4
  store i32 %227, i32* %2, align 4
  br label %228

228:                                              ; preds = %226, %216
  br label %231

229:                                              ; preds = %196
  %230 = load i32, i32* @LR_REGNUM, align 4
  store i32 %230, i32* %2, align 4
  br label %231

231:                                              ; preds = %229, %228
  %232 = load i32, i32* @asm_out_file, align 4
  %233 = load i32, i32* @SP_REGNUM, align 4
  %234 = load i32, i32* @SP_REGNUM, align 4
  %235 = load i64, i64* @current_function_pretend_args_size, align 8
  %236 = call i32 (i32, i8*, i32, i32, ...) @asm_fprintf(i32 %232, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %233, i32 %234, i64 %235)
  %237 = load i32, i32* @asm_out_file, align 4
  %238 = load i32, i32* %2, align 4
  %239 = call i32 @thumb_exit(i32 %237, i32 %238)
  br label %240

240:                                              ; preds = %231, %184
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  br label %241

241:                                              ; preds = %240, %16, %11
  %242 = load i8*, i8** %1, align 8
  ret i8* %242
}

declare dso_local i64 @IS_NAKED(i32) #1

declare dso_local i32 @arm_current_func_type(...) #1

declare dso_local i64 @thumb_compute_save_reg_mask(...) #1

declare dso_local i32 @bit_count(i64) #1

declare dso_local i32 @arm_size_return_regs(...) #1

declare dso_local i32 @internal_error(i8*) #1

declare dso_local i32 @thumb_pushpop(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @asm_fprintf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @thumb_exit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
