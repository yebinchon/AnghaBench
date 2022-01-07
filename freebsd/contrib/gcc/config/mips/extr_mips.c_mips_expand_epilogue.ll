; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_expand_epilogue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_expand_epilogue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i32, i32 }

@cfun = common dso_local global %struct.TYPE_6__* null, align 8
@frame_pointer_needed = common dso_local global i32 0, align 4
@stack_pointer_rtx = common dso_local global i64 0, align 8
@hard_frame_pointer_rtx = common dso_local global i64 0, align 8
@TARGET_MIPS16 = common dso_local global i64 0, align 8
@MIPS_MAX_FIRST_STACK_STEP = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4
@TARGET_ABICALLS = common dso_local global i64 0, align 8
@TARGET_NEWABI = common dso_local global i64 0, align 8
@TARGET_EXPLICIT_RELOCS = common dso_local global i32 0, align 4
@mips_restore_reg = common dso_local global i32 0, align 4
@current_function_calls_eh_return = common dso_local global i64 0, align 8
@EH_RETURN_STACKADJ_RTX = common dso_local global i64 0, align 8
@RA_MASK = common dso_local global i32 0, align 4
@GP_REG_FIRST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mips_expand_epilogue(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = call i64 (...) @mips_can_use_return_insn()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = call i32 (...) @gen_return()
  %15 = call i32 @emit_jump_insn(i32 %14)
  br label %191

16:                                               ; preds = %10, %1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %23 = load i32, i32* @frame_pointer_needed, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %16
  %26 = load i64, i64* @stack_pointer_rtx, align 8
  store i64 %26, i64* %5, align 8
  br label %41

27:                                               ; preds = %16
  %28 = load i64, i64* @hard_frame_pointer_rtx, align 8
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* @TARGET_MIPS16, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %3, align 8
  %39 = sub nsw i64 %38, %37
  store i64 %39, i64* %3, align 8
  br label %40

40:                                               ; preds = %31, %27
  br label %41

41:                                               ; preds = %40, %25
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %47, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %41
  %57 = load i64, i64* %3, align 8
  %58 = load i32, i32* @MIPS_MAX_FIRST_STACK_STEP, align 4
  %59 = call i64 @MIN(i64 %57, i32 %58)
  store i64 %59, i64* %4, align 8
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* %3, align 8
  %62 = sub nsw i64 %61, %60
  store i64 %62, i64* %3, align 8
  br label %63

63:                                               ; preds = %56, %41
  %64 = load i64, i64* %5, align 8
  store i64 %64, i64* %6, align 8
  %65 = load i64, i64* %3, align 8
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %91

67:                                               ; preds = %63
  %68 = load i64, i64* %3, align 8
  %69 = call i64 @GEN_INT(i64 %68)
  store i64 %69, i64* %7, align 8
  %70 = load i64, i64* %3, align 8
  %71 = call i32 @SMALL_OPERAND(i64 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* @Pmode, align 4
  %75 = call i64 @MIPS_EPILOGUE_TEMP(i32 %74)
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @emit_move_insn(i64 %75, i64 %76)
  %78 = load i32, i32* @Pmode, align 4
  %79 = call i64 @MIPS_EPILOGUE_TEMP(i32 %78)
  store i64 %79, i64* %7, align 8
  br label %80

80:                                               ; preds = %73, %67
  %81 = load i64, i64* @TARGET_MIPS16, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = load i64, i64* @stack_pointer_rtx, align 8
  store i64 %84, i64* %6, align 8
  br label %85

85:                                               ; preds = %83, %80
  %86 = load i64, i64* %6, align 8
  %87 = load i64, i64* %5, align 8
  %88 = load i64, i64* %7, align 8
  %89 = call i32 @gen_add3_insn(i64 %86, i64 %87, i64 %88)
  %90 = call i32 @emit_insn(i32 %89)
  br label %91

91:                                               ; preds = %85, %63
  %92 = load i64, i64* %6, align 8
  %93 = load i64, i64* @stack_pointer_rtx, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load i64, i64* @stack_pointer_rtx, align 8
  %97 = load i64, i64* %6, align 8
  %98 = call i32 @emit_move_insn(i64 %96, i64 %97)
  br label %99

99:                                               ; preds = %95, %91
  %100 = load i64, i64* @TARGET_ABICALLS, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %99
  %103 = load i64, i64* @TARGET_NEWABI, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load i32, i32* @TARGET_EXPLICIT_RELOCS, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = call i32 (...) @gen_blockage()
  %110 = call i32 @emit_insn(i32 %109)
  br label %111

111:                                              ; preds = %108, %105, %102, %99
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %4, align 8
  %119 = sub nsw i64 %117, %118
  %120 = load i32, i32* @mips_restore_reg, align 4
  %121 = call i32 @mips_for_each_saved_reg(i64 %119, i32 %120)
  %122 = load i64, i64* %4, align 8
  %123 = icmp sgt i64 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %111
  %125 = load i64, i64* @stack_pointer_rtx, align 8
  %126 = load i64, i64* @stack_pointer_rtx, align 8
  %127 = load i64, i64* %4, align 8
  %128 = call i64 @GEN_INT(i64 %127)
  %129 = call i32 @gen_add3_insn(i64 %125, i64 %126, i64 %128)
  %130 = call i32 @emit_insn(i32 %129)
  br label %131

131:                                              ; preds = %124, %111
  %132 = load i64, i64* @current_function_calls_eh_return, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %160

134:                                              ; preds = %131
  %135 = load i64, i64* @TARGET_MIPS16, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %153

137:                                              ; preds = %134
  %138 = load i32, i32* @Pmode, align 4
  %139 = call i64 @MIPS_EPILOGUE_TEMP(i32 %138)
  %140 = load i64, i64* @stack_pointer_rtx, align 8
  %141 = call i32 @emit_move_insn(i64 %139, i64 %140)
  %142 = load i32, i32* @Pmode, align 4
  %143 = call i64 @MIPS_EPILOGUE_TEMP(i32 %142)
  %144 = load i32, i32* @Pmode, align 4
  %145 = call i64 @MIPS_EPILOGUE_TEMP(i32 %144)
  %146 = load i64, i64* @EH_RETURN_STACKADJ_RTX, align 8
  %147 = call i32 @gen_add3_insn(i64 %143, i64 %145, i64 %146)
  %148 = call i32 @emit_insn(i32 %147)
  %149 = load i64, i64* @stack_pointer_rtx, align 8
  %150 = load i32, i32* @Pmode, align 4
  %151 = call i64 @MIPS_EPILOGUE_TEMP(i32 %150)
  %152 = call i32 @emit_move_insn(i64 %149, i64 %151)
  br label %159

153:                                              ; preds = %134
  %154 = load i64, i64* @stack_pointer_rtx, align 8
  %155 = load i64, i64* @stack_pointer_rtx, align 8
  %156 = load i64, i64* @EH_RETURN_STACKADJ_RTX, align 8
  %157 = call i32 @gen_add3_insn(i64 %154, i64 %155, i64 %156)
  %158 = call i32 @emit_insn(i32 %157)
  br label %159

159:                                              ; preds = %153, %137
  br label %160

160:                                              ; preds = %159, %131
  %161 = load i32, i32* %2, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %191, label %163

163:                                              ; preds = %160
  %164 = load i64, i64* @TARGET_MIPS16, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %183

166:                                              ; preds = %163
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @RA_MASK, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %166
  %177 = load i32, i32* @Pmode, align 4
  %178 = load i64, i64* @GP_REG_FIRST, align 8
  %179 = add nsw i64 %178, 7
  %180 = call i32 @gen_rtx_REG(i32 %177, i64 %179)
  %181 = call i32 @gen_return_internal(i32 %180)
  %182 = call i32 @emit_jump_insn(i32 %181)
  br label %190

183:                                              ; preds = %166, %163
  %184 = load i32, i32* @Pmode, align 4
  %185 = load i64, i64* @GP_REG_FIRST, align 8
  %186 = add nsw i64 %185, 31
  %187 = call i32 @gen_rtx_REG(i32 %184, i64 %186)
  %188 = call i32 @gen_return_internal(i32 %187)
  %189 = call i32 @emit_jump_insn(i32 %188)
  br label %190

190:                                              ; preds = %183, %176
  br label %191

191:                                              ; preds = %13, %190, %160
  ret void
}

declare dso_local i64 @mips_can_use_return_insn(...) #1

declare dso_local i32 @emit_jump_insn(i32) #1

declare dso_local i32 @gen_return(...) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i64 @GEN_INT(i64) #1

declare dso_local i32 @SMALL_OPERAND(i64) #1

declare dso_local i32 @emit_move_insn(i64, i64) #1

declare dso_local i64 @MIPS_EPILOGUE_TEMP(i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_add3_insn(i64, i64, i64) #1

declare dso_local i32 @gen_blockage(...) #1

declare dso_local i32 @mips_for_each_saved_reg(i64, i32) #1

declare dso_local i32 @gen_return_internal(i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
