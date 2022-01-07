; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_emit_float_lib_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_emit_float_lib_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_ARCH64 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"_Qp_feq\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"_Q_feq\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"_Qp_fne\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"_Q_fne\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"_Qp_fgt\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"_Q_fgt\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"_Qp_fge\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"_Q_fge\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"_Qp_flt\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"_Q_flt\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"_Qp_fle\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"_Q_fle\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"_Qp_cmp\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"_Q_cmp\00", align 1
@MEM = common dso_local global i64 0, align 8
@TFmode = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4
@LCT_NORMAL = common dso_local global i32 0, align 4
@DImode = common dso_local global i32 0, align 4
@SImode = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@const1_rtx = common dso_local global i32 0, align 4
@const2_rtx = common dso_local global i32 0, align 4
@TARGET_ARCH32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sparc_emit_float_lib_cmp(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %50 [
    i32 141, label %15
    i32 135, label %20
    i32 139, label %25
    i32 140, label %30
    i32 137, label %35
    i32 138, label %40
    i32 134, label %45
    i32 128, label %45
    i32 131, label %45
    i32 129, label %45
    i32 133, label %45
    i32 132, label %45
    i32 130, label %45
    i32 136, label %45
  ]

15:                                               ; preds = %3
  %16 = load i64, i64* @TARGET_ARCH64, align 8
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  store i8* %19, i8** %7, align 8
  br label %52

20:                                               ; preds = %3
  %21 = load i64, i64* @TARGET_ARCH64, align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  store i8* %24, i8** %7, align 8
  br label %52

25:                                               ; preds = %3
  %26 = load i64, i64* @TARGET_ARCH64, align 8
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  store i8* %29, i8** %7, align 8
  br label %52

30:                                               ; preds = %3
  %31 = load i64, i64* @TARGET_ARCH64, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)
  store i8* %34, i8** %7, align 8
  br label %52

35:                                               ; preds = %3
  %36 = load i64, i64* @TARGET_ARCH64, align 8
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0)
  store i8* %39, i8** %7, align 8
  br label %52

40:                                               ; preds = %3
  %41 = load i64, i64* @TARGET_ARCH64, align 8
  %42 = icmp ne i64 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0)
  store i8* %44, i8** %7, align 8
  br label %52

45:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  %46 = load i64, i64* @TARGET_ARCH64, align 8
  %47 = icmp ne i64 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0)
  store i8* %49, i8** %7, align 8
  br label %52

50:                                               ; preds = %3
  %51 = call i32 (...) @gcc_unreachable()
  br label %52

52:                                               ; preds = %50, %45, %40, %35, %30, %25, %20, %15
  %53 = load i64, i64* @TARGET_ARCH64, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %99

55:                                               ; preds = %52
  %56 = load i32, i32* %4, align 4
  %57 = call i64 @GET_CODE(i32 %56)
  %58 = load i64, i64* @MEM, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load i32, i32* @TFmode, align 4
  %62 = load i32, i32* @TFmode, align 4
  %63 = call i32 @GET_MODE_SIZE(i32 %62)
  %64 = call i32 @assign_stack_temp(i32 %61, i32 %63, i32 0)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @emit_move_insn(i32 %65, i32 %66)
  br label %70

68:                                               ; preds = %55
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %68, %60
  %71 = load i32, i32* %5, align 4
  %72 = call i64 @GET_CODE(i32 %71)
  %73 = load i64, i64* @MEM, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load i32, i32* @TFmode, align 4
  %77 = load i32, i32* @TFmode, align 4
  %78 = call i32 @GET_MODE_SIZE(i32 %77)
  %79 = call i32 @assign_stack_temp(i32 %76, i32 %78, i32 0)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @emit_move_insn(i32 %80, i32 %81)
  br label %85

83:                                               ; preds = %70
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %83, %75
  %86 = load i32, i32* @Pmode, align 4
  %87 = load i8*, i8** %7, align 8
  %88 = call i32 @gen_rtx_SYMBOL_REF(i32 %86, i8* %87)
  %89 = load i32, i32* @LCT_NORMAL, align 4
  %90 = load i32, i32* @DImode, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @XEXP(i32 %91, i32 0)
  %93 = load i32, i32* @Pmode, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @XEXP(i32 %94, i32 0)
  %96 = load i32, i32* @Pmode, align 4
  %97 = call i32 @emit_library_call(i32 %88, i32 %89, i32 %90, i32 2, i32 %92, i32 %93, i32 %95, i32 %96)
  %98 = load i32, i32* @DImode, align 4
  store i32 %98, i32* %13, align 4
  br label %111

99:                                               ; preds = %52
  %100 = load i32, i32* @Pmode, align 4
  %101 = load i8*, i8** %7, align 8
  %102 = call i32 @gen_rtx_SYMBOL_REF(i32 %100, i8* %101)
  %103 = load i32, i32* @LCT_NORMAL, align 4
  %104 = load i32, i32* @SImode, align 4
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @TFmode, align 4
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @TFmode, align 4
  %109 = call i32 @emit_library_call(i32 %102, i32 %103, i32 %104, i32 2, i32 %105, i32 %106, i32 %107, i32 %108)
  %110 = load i32, i32* @SImode, align 4
  store i32 %110, i32* %13, align 4
  br label %111

111:                                              ; preds = %99, %85
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @gen_reg_rtx(i32 %112)
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %13, align 4
  %116 = call i32 @hard_libcall_value(i32 %115)
  %117 = call i32 @emit_move_insn(i32 %114, i32 %116)
  %118 = load i32, i32* %6, align 4
  switch i32 %118, label %119 [
    i32 134, label %125
    i32 128, label %125
    i32 131, label %135
    i32 132, label %135
    i32 130, label %145
    i32 129, label %151
    i32 133, label %174
    i32 136, label %174
  ]

119:                                              ; preds = %111
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @const0_rtx, align 4
  %122 = load i32, i32* @NULL_RTX, align 4
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @emit_cmp_insn(i32 %120, i32 %121, i32 135, i32 %122, i32 %123, i32 0)
  br label %218

125:                                              ; preds = %111, %111
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @GEN_INT(i32 3)
  %128 = load i32, i32* %6, align 4
  %129 = icmp eq i32 %128, 128
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i32 141, i32 135
  %132 = load i32, i32* @NULL_RTX, align 4
  %133 = load i32, i32* %13, align 4
  %134 = call i32 @emit_cmp_insn(i32 %126, i32 %127, i32 %131, i32 %132, i32 %133, i32 0)
  br label %218

135:                                              ; preds = %111, %111
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* @const1_rtx, align 4
  %138 = load i32, i32* %6, align 4
  %139 = icmp eq i32 %138, 131
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i32 139, i32 135
  %142 = load i32, i32* @NULL_RTX, align 4
  %143 = load i32, i32* %13, align 4
  %144 = call i32 @emit_cmp_insn(i32 %136, i32 %137, i32 %141, i32 %142, i32 %143, i32 0)
  br label %218

145:                                              ; preds = %111
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* @const2_rtx, align 4
  %148 = load i32, i32* @NULL_RTX, align 4
  %149 = load i32, i32* %13, align 4
  %150 = call i32 @emit_cmp_insn(i32 %146, i32 %147, i32 135, i32 %148, i32 %149, i32 0)
  br label %218

151:                                              ; preds = %111
  %152 = load i32, i32* %13, align 4
  %153 = call i32 @gen_reg_rtx(i32 %152)
  store i32 %153, i32* %11, align 4
  %154 = load i32, i32* @TARGET_ARCH32, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %151
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* @const1_rtx, align 4
  %160 = call i32 @gen_andsi3(i32 %157, i32 %158, i32 %159)
  %161 = call i32 @emit_insn(i32 %160)
  br label %168

162:                                              ; preds = %151
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* @const1_rtx, align 4
  %166 = call i32 @gen_anddi3(i32 %163, i32 %164, i32 %165)
  %167 = call i32 @emit_insn(i32 %166)
  br label %168

168:                                              ; preds = %162, %156
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* @const0_rtx, align 4
  %171 = load i32, i32* @NULL_RTX, align 4
  %172 = load i32, i32* %13, align 4
  %173 = call i32 @emit_cmp_insn(i32 %169, i32 %170, i32 135, i32 %171, i32 %172, i32 0)
  br label %218

174:                                              ; preds = %111, %111
  %175 = load i32, i32* %13, align 4
  %176 = call i32 @gen_reg_rtx(i32 %175)
  store i32 %176, i32* %11, align 4
  %177 = load i32, i32* @TARGET_ARCH32, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %174
  %180 = load i32, i32* %11, align 4
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* @const1_rtx, align 4
  %183 = call i32 @gen_addsi3(i32 %180, i32 %181, i32 %182)
  %184 = call i32 @emit_insn(i32 %183)
  br label %191

185:                                              ; preds = %174
  %186 = load i32, i32* %11, align 4
  %187 = load i32, i32* %10, align 4
  %188 = load i32, i32* @const1_rtx, align 4
  %189 = call i32 @gen_adddi3(i32 %186, i32 %187, i32 %188)
  %190 = call i32 @emit_insn(i32 %189)
  br label %191

191:                                              ; preds = %185, %179
  %192 = load i32, i32* %13, align 4
  %193 = call i32 @gen_reg_rtx(i32 %192)
  store i32 %193, i32* %12, align 4
  %194 = load i32, i32* @TARGET_ARCH32, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %191
  %197 = load i32, i32* %12, align 4
  %198 = load i32, i32* %11, align 4
  %199 = load i32, i32* @const2_rtx, align 4
  %200 = call i32 @gen_andsi3(i32 %197, i32 %198, i32 %199)
  %201 = call i32 @emit_insn(i32 %200)
  br label %208

202:                                              ; preds = %191
  %203 = load i32, i32* %12, align 4
  %204 = load i32, i32* %11, align 4
  %205 = load i32, i32* @const2_rtx, align 4
  %206 = call i32 @gen_anddi3(i32 %203, i32 %204, i32 %205)
  %207 = call i32 @emit_insn(i32 %206)
  br label %208

208:                                              ; preds = %202, %196
  %209 = load i32, i32* %12, align 4
  %210 = load i32, i32* @const0_rtx, align 4
  %211 = load i32, i32* %6, align 4
  %212 = icmp eq i32 %211, 133
  %213 = zext i1 %212 to i64
  %214 = select i1 %212, i32 141, i32 135
  %215 = load i32, i32* @NULL_RTX, align 4
  %216 = load i32, i32* %13, align 4
  %217 = call i32 @emit_cmp_insn(i32 %209, i32 %210, i32 %214, i32 %215, i32 %216, i32 0)
  br label %218

218:                                              ; preds = %208, %168, %145, %135, %125, %119
  ret void
}

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @assign_stack_temp(i32, i32, i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @emit_library_call(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gen_rtx_SYMBOL_REF(i32, i8*) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @hard_libcall_value(i32) #1

declare dso_local i32 @emit_cmp_insn(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_andsi3(i32, i32, i32) #1

declare dso_local i32 @gen_anddi3(i32, i32, i32) #1

declare dso_local i32 @gen_addsi3(i32, i32, i32) #1

declare dso_local i32 @gen_adddi3(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
