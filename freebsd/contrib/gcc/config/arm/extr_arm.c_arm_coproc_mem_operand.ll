; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_coproc_mem_operand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_coproc_mem_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reload_in_progress = common dso_local global i64 0, align 8
@reload_completed = common dso_local global i64 0, align 8
@frame_pointer_rtx = common dso_local global i32 0, align 4
@arg_pointer_rtx = common dso_local global i32 0, align 4
@virtual_incoming_args_rtx = common dso_local global i32 0, align 4
@virtual_outgoing_args_rtx = common dso_local global i32 0, align 4
@virtual_stack_dynamic_rtx = common dso_local global i32 0, align 4
@virtual_stack_vars_rtx = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MEM = common dso_local global i64 0, align 8
@LABEL_REF = common dso_local global i64 0, align 8
@CONST = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@REG = common dso_local global i64 0, align 8
@PRE_INC = common dso_local global i64 0, align 8
@POST_INC = common dso_local global i64 0, align 8
@PRE_DEC = common dso_local global i64 0, align 8
@POST_DEC = common dso_local global i64 0, align 8
@POST_MODIFY = common dso_local global i64 0, align 8
@PRE_MODIFY = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arm_coproc_mem_operand(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* @reload_in_progress, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %44, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* @reload_completed, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %44, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* @frame_pointer_rtx, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @reg_mentioned_p(i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %42, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @arg_pointer_rtx, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @reg_mentioned_p(i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %42, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @virtual_incoming_args_rtx, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @reg_mentioned_p(i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @virtual_outgoing_args_rtx, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @reg_mentioned_p(i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @virtual_stack_dynamic_rtx, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i64 @reg_mentioned_p(i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @virtual_stack_vars_rtx, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @reg_mentioned_p(i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37, %32, %27, %22, %17, %12
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %3, align 4
  br label %201

44:                                               ; preds = %37, %9, %2
  %45 = load i32, i32* %4, align 4
  %46 = call i64 @GET_CODE(i32 %45)
  %47 = load i64, i64* @MEM, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %3, align 4
  br label %201

51:                                               ; preds = %44
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @XEXP(i32 %52, i32 0)
  store i32 %53, i32* %6, align 4
  %54 = load i64, i64* @reload_completed, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %88

56:                                               ; preds = %51
  %57 = load i32, i32* %6, align 4
  %58 = call i64 @GET_CODE(i32 %57)
  %59 = load i64, i64* @LABEL_REF, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %86, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %6, align 4
  %63 = call i64 @GET_CODE(i32 %62)
  %64 = load i64, i64* @CONST, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %88

66:                                               ; preds = %61
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @XEXP(i32 %67, i32 0)
  %69 = call i64 @GET_CODE(i32 %68)
  %70 = load i64, i64* @PLUS, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %66
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @XEXP(i32 %73, i32 0)
  %75 = call i32 @XEXP(i32 %74, i32 0)
  %76 = call i64 @GET_CODE(i32 %75)
  %77 = load i64, i64* @LABEL_REF, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %72
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @XEXP(i32 %80, i32 0)
  %82 = call i32 @XEXP(i32 %81, i32 1)
  %83 = call i64 @GET_CODE(i32 %82)
  %84 = load i64, i64* @CONST_INT, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %79, %56
  %87 = load i32, i32* @TRUE, align 4
  store i32 %87, i32* %3, align 4
  br label %201

88:                                               ; preds = %79, %72, %66, %61, %51
  %89 = load i32, i32* %6, align 4
  %90 = call i64 @GET_CODE(i32 %89)
  %91 = load i64, i64* @REG, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @arm_address_register_rtx_p(i32 %94, i32 0)
  store i32 %95, i32* %3, align 4
  br label %201

96:                                               ; preds = %88
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %123

99:                                               ; preds = %96
  %100 = load i32, i32* %6, align 4
  %101 = call i64 @GET_CODE(i32 %100)
  %102 = load i64, i64* @PRE_INC, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %119, label %104

104:                                              ; preds = %99
  %105 = load i32, i32* %6, align 4
  %106 = call i64 @GET_CODE(i32 %105)
  %107 = load i64, i64* @POST_INC, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %119, label %109

109:                                              ; preds = %104
  %110 = load i32, i32* %6, align 4
  %111 = call i64 @GET_CODE(i32 %110)
  %112 = load i64, i64* @PRE_DEC, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* %6, align 4
  %116 = call i64 @GET_CODE(i32 %115)
  %117 = load i64, i64* @POST_DEC, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %114, %109, %104, %99
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @XEXP(i32 %120, i32 0)
  %122 = call i32 @arm_address_register_rtx_p(i32 %121, i32 0)
  store i32 %122, i32* %3, align 4
  br label %201

123:                                              ; preds = %114, %96
  %124 = load i32, i32* %5, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %158

126:                                              ; preds = %123
  %127 = load i32, i32* %6, align 4
  %128 = call i64 @GET_CODE(i32 %127)
  %129 = load i64, i64* @POST_MODIFY, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %136, label %131

131:                                              ; preds = %126
  %132 = load i32, i32* %6, align 4
  %133 = call i64 @GET_CODE(i32 %132)
  %134 = load i64, i64* @PRE_MODIFY, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %158

136:                                              ; preds = %131, %126
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @XEXP(i32 %137, i32 0)
  %139 = call i32 @arm_address_register_rtx_p(i32 %138, i32 0)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %158

141:                                              ; preds = %136
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @XEXP(i32 %142, i32 1)
  %144 = call i64 @GET_CODE(i32 %143)
  %145 = load i64, i64* @PLUS, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %158

147:                                              ; preds = %141
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @XEXP(i32 %148, i32 1)
  %150 = call i32 @XEXP(i32 %149, i32 0)
  %151 = load i32, i32* %6, align 4
  %152 = call i32 @XEXP(i32 %151, i32 0)
  %153 = call i64 @rtx_equal_p(i32 %150, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %147
  %156 = load i32, i32* %6, align 4
  %157 = call i32 @XEXP(i32 %156, i32 1)
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %155, %147, %141, %136, %131, %123
  %159 = load i32, i32* %6, align 4
  %160 = call i64 @GET_CODE(i32 %159)
  %161 = load i64, i64* @PLUS, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %199

163:                                              ; preds = %158
  %164 = load i32, i32* %6, align 4
  %165 = call i32 @XEXP(i32 %164, i32 0)
  %166 = call i64 @GET_CODE(i32 %165)
  %167 = load i64, i64* @REG, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %199

169:                                              ; preds = %163
  %170 = load i32, i32* %6, align 4
  %171 = call i32 @XEXP(i32 %170, i32 0)
  %172 = load i32, i32* @VOIDmode, align 4
  %173 = call i64 @REG_MODE_OK_FOR_BASE_P(i32 %171, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %199

175:                                              ; preds = %169
  %176 = load i32, i32* %6, align 4
  %177 = call i32 @XEXP(i32 %176, i32 1)
  %178 = call i64 @GET_CODE(i32 %177)
  %179 = load i64, i64* @CONST_INT, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %199

181:                                              ; preds = %175
  %182 = load i32, i32* %6, align 4
  %183 = call i32 @XEXP(i32 %182, i32 1)
  %184 = call i32 @INTVAL(i32 %183)
  %185 = icmp sgt i32 %184, -1024
  br i1 %185, label %186, label %199

186:                                              ; preds = %181
  %187 = load i32, i32* %6, align 4
  %188 = call i32 @XEXP(i32 %187, i32 1)
  %189 = call i32 @INTVAL(i32 %188)
  %190 = icmp slt i32 %189, 1024
  br i1 %190, label %191, label %199

191:                                              ; preds = %186
  %192 = load i32, i32* %6, align 4
  %193 = call i32 @XEXP(i32 %192, i32 1)
  %194 = call i32 @INTVAL(i32 %193)
  %195 = and i32 %194, 3
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %191
  %198 = load i32, i32* @TRUE, align 4
  store i32 %198, i32* %3, align 4
  br label %201

199:                                              ; preds = %191, %186, %181, %175, %169, %163, %158
  %200 = load i32, i32* @FALSE, align 4
  store i32 %200, i32* %3, align 4
  br label %201

201:                                              ; preds = %199, %197, %119, %93, %86, %49, %42
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

declare dso_local i64 @reg_mentioned_p(i32, i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @arm_address_register_rtx_p(i32, i32) #1

declare dso_local i64 @rtx_equal_p(i32, i32) #1

declare dso_local i64 @REG_MODE_OK_FOR_BASE_P(i32, i32) #1

declare dso_local i32 @INTVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
