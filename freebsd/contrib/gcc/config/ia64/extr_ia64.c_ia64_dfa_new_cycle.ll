; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_dfa_new_cycle.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_dfa_new_cycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@reload_completed = common dso_local global i64 0, align 8
@last_scheduled_insn = common dso_local global i64 0, align 8
@CALL_INSN = common dso_local global i64 0, align 8
@ASM_INPUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"//    Stop should be before %d%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c" + cycle advance\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stop_before_p = common dso_local global i32 0, align 4
@curr_state = common dso_local global i32 0, align 4
@dfa_stop_insn = common dso_local global i32* null, align 8
@TARGET_EARLY_STOP_BITS = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@prev_cycle_state = common dso_local global i32 0, align 4
@dfa_state_size = common dso_local global i32 0, align 4
@dfa_pre_cycle_insn = common dso_local global i32* null, align 8
@ia64_tune = common dso_local global i64 0, align 8
@PROCESSOR_ITANIUM = common dso_local global i64 0, align 8
@ITANIUM_CLASS_MMMUL = common dso_local global i32 0, align 4
@ITANIUM_CLASS_MMSHF = common dso_local global i32 0, align 4
@clocks = common dso_local global i32* null, align 8
@add_cycles = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64, i32, i32, i32*)* @ia64_dfa_new_cycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ia64_dfa_new_cycle(i32* %0, i32 %1, i64 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %14, align 4
  %21 = load i64, i64* %10, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %6
  %24 = load i64, i64* %10, align 8
  %25 = call i64 @INSN_P(i64 %24)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %23, %6
  %28 = phi i1 [ false, %6 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @gcc_assert(i32 %29)
  %31 = load i64, i64* @reload_completed, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i64, i64* %10, align 8
  %35 = call i64 @safe_group_barrier_needed(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %56, label %37

37:                                               ; preds = %33, %27
  %38 = load i64, i64* @last_scheduled_insn, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %133

40:                                               ; preds = %37
  %41 = load i64, i64* @last_scheduled_insn, align 8
  %42 = call i64 @GET_CODE(i64 %41)
  %43 = load i64, i64* @CALL_INSN, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %56, label %45

45:                                               ; preds = %40
  %46 = load i64, i64* @last_scheduled_insn, align 8
  %47 = call i64 @PATTERN(i64 %46)
  %48 = call i64 @GET_CODE(i64 %47)
  %49 = load i64, i64* @ASM_INPUT, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %56, label %51

51:                                               ; preds = %45
  %52 = load i64, i64* @last_scheduled_insn, align 8
  %53 = call i64 @PATTERN(i64 %52)
  %54 = call i64 @asm_noperands(i64 %53)
  %55 = icmp sge i64 %54, 0
  br i1 %55, label %56, label %133

56:                                               ; preds = %51, %45, %40, %33
  %57 = call i32 (...) @init_insn_group_barriers()
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = load i32*, i32** %8, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %60
  %64 = load i32*, i32** %8, align 8
  %65 = load i64, i64* %10, align 8
  %66 = call i64 @INSN_UID(i64 %65)
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %72 = call i32 @fprintf(i32* %64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %66, i8* %71)
  br label %73

73:                                               ; preds = %63, %60, %56
  store i32 1, i32* @stop_before_p, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %99

77:                                               ; preds = %73
  %78 = load i32, i32* @curr_state, align 4
  %79 = load i32*, i32** @dfa_stop_insn, align 8
  %80 = call i32 @state_transition(i32 %78, i32* %79)
  %81 = load i64, i64* @TARGET_EARLY_STOP_BITS, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %77
  %84 = load i64, i64* @last_scheduled_insn, align 8
  %85 = load i64, i64* @NULL_RTX, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %92, label %87

87:                                               ; preds = %83
  %88 = load i64, i64* @last_scheduled_insn, align 8
  %89 = call i64 @GET_CODE(i64 %88)
  %90 = load i64, i64* @CALL_INSN, align 8
  %91 = icmp ne i64 %89, %90
  br label %92

92:                                               ; preds = %87, %83
  %93 = phi i1 [ true, %83 ], [ %91, %87 ]
  %94 = zext i1 %93 to i32
  %95 = load i32*, i32** %13, align 8
  store i32 %94, i32* %95, align 4
  br label %98

96:                                               ; preds = %77
  %97 = load i32*, i32** %13, align 8
  store i32 0, i32* %97, align 4
  br label %98

98:                                               ; preds = %96, %92
  store i32 1, i32* %7, align 4
  br label %237

99:                                               ; preds = %73
  %100 = load i64, i64* @reload_completed, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i32, i32* @TRUE, align 4
  store i32 %103, i32* %14, align 4
  br label %104

104:                                              ; preds = %102, %99
  br label %105

105:                                              ; preds = %104
  %106 = load i64, i64* @last_scheduled_insn, align 8
  %107 = call i64 @PATTERN(i64 %106)
  %108 = call i64 @GET_CODE(i64 %107)
  %109 = load i64, i64* @ASM_INPUT, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %116, label %111

111:                                              ; preds = %105
  %112 = load i64, i64* @last_scheduled_insn, align 8
  %113 = call i64 @PATTERN(i64 %112)
  %114 = call i64 @asm_noperands(i64 %113)
  %115 = icmp sge i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111, %105
  %117 = load i32, i32* @curr_state, align 4
  %118 = call i32 @state_reset(i32 %117)
  br label %132

119:                                              ; preds = %111
  %120 = load i32, i32* @curr_state, align 4
  %121 = load i32, i32* @prev_cycle_state, align 4
  %122 = load i32, i32* @dfa_state_size, align 4
  %123 = call i32 @memcpy(i32 %120, i32 %121, i32 %122)
  %124 = load i32, i32* @curr_state, align 4
  %125 = load i32*, i32** @dfa_stop_insn, align 8
  %126 = call i32 @state_transition(i32 %124, i32* %125)
  %127 = load i32, i32* @curr_state, align 4
  %128 = load i32*, i32** @dfa_pre_cycle_insn, align 8
  %129 = call i32 @state_transition(i32 %127, i32* %128)
  %130 = load i32, i32* @curr_state, align 4
  %131 = call i32 @state_transition(i32 %130, i32* null)
  br label %132

132:                                              ; preds = %119, %116
  br label %139

133:                                              ; preds = %51, %37
  %134 = load i64, i64* @reload_completed, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  %137 = load i32, i32* @TRUE, align 4
  store i32 %137, i32* %14, align 4
  br label %138

138:                                              ; preds = %136, %133
  br label %139

139:                                              ; preds = %138, %132
  %140 = load i32, i32* %14, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %236

142:                                              ; preds = %139
  %143 = load i64, i64* @ia64_tune, align 8
  %144 = load i64, i64* @PROCESSOR_ITANIUM, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %236

146:                                              ; preds = %142
  %147 = load i64, i64* %10, align 8
  %148 = call i64 @PATTERN(i64 %147)
  %149 = call i64 @GET_CODE(i64 %148)
  %150 = load i64, i64* @ASM_INPUT, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %236

152:                                              ; preds = %146
  %153 = load i64, i64* %10, align 8
  %154 = call i64 @PATTERN(i64 %153)
  %155 = call i64 @asm_noperands(i64 %154)
  %156 = icmp slt i64 %155, 0
  br i1 %156, label %157, label %236

157:                                              ; preds = %152
  %158 = load i64, i64* %10, align 8
  %159 = call i32 @ia64_safe_itanium_class(i64 %158)
  store i32 %159, i32* %15, align 4
  %160 = load i32, i32* %15, align 4
  %161 = load i32, i32* @ITANIUM_CLASS_MMMUL, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %235

163:                                              ; preds = %157
  %164 = load i32, i32* %15, align 4
  %165 = load i32, i32* @ITANIUM_CLASS_MMSHF, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %235

167:                                              ; preds = %163
  store i32 -1, i32* %17, align 4
  %168 = load i64, i64* %10, align 8
  %169 = call i64 @LOG_LINKS(i64 %168)
  store i64 %169, i64* %16, align 8
  br label %170

170:                                              ; preds = %221, %167
  %171 = load i64, i64* %16, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %224

173:                                              ; preds = %170
  %174 = load i64, i64* %16, align 8
  %175 = call i64 @REG_NOTE_KIND(i64 %174)
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %220

177:                                              ; preds = %173
  %178 = load i64, i64* %16, align 8
  %179 = call i64 @XEXP(i64 %178, i32 0)
  store i64 %179, i64* %19, align 8
  %180 = load i64, i64* %19, align 8
  %181 = call i32 @ia64_safe_itanium_class(i64 %180)
  store i32 %181, i32* %18, align 4
  %182 = load i32, i32* %18, align 4
  %183 = load i32, i32* @ITANIUM_CLASS_MMMUL, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %189, label %185

185:                                              ; preds = %177
  %186 = load i32, i32* %18, align 4
  %187 = load i32, i32* @ITANIUM_CLASS_MMSHF, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %219

189:                                              ; preds = %185, %177
  %190 = load i32, i32* %11, align 4
  %191 = load i32*, i32** @clocks, align 8
  %192 = load i64, i64* %19, align 8
  %193 = call i64 @INSN_UID(i64 %192)
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = sub nsw i32 %190, %195
  %197 = icmp slt i32 %196, 4
  br i1 %197, label %198, label %219

198:                                              ; preds = %189
  %199 = load i32, i32* %17, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %211, label %201

201:                                              ; preds = %198
  %202 = load i32, i32* %11, align 4
  %203 = load i32*, i32** @clocks, align 8
  %204 = load i64, i64* %19, align 8
  %205 = call i64 @INSN_UID(i64 %204)
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = sub nsw i32 %202, %207
  %209 = load i32, i32* %17, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %219

211:                                              ; preds = %201, %198
  %212 = load i32, i32* %11, align 4
  %213 = load i32*, i32** @clocks, align 8
  %214 = load i64, i64* %19, align 8
  %215 = call i64 @INSN_UID(i64 %214)
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = sub nsw i32 %212, %217
  store i32 %218, i32* %17, align 4
  br label %219

219:                                              ; preds = %211, %201, %189, %185
  br label %220

220:                                              ; preds = %219, %173
  br label %221

221:                                              ; preds = %220
  %222 = load i64, i64* %16, align 8
  %223 = call i64 @XEXP(i64 %222, i32 1)
  store i64 %223, i64* %16, align 8
  br label %170

224:                                              ; preds = %170
  %225 = load i32, i32* %17, align 4
  %226 = icmp sge i32 %225, 0
  br i1 %226, label %227, label %234

227:                                              ; preds = %224
  %228 = load i32, i32* %17, align 4
  %229 = sub nsw i32 3, %228
  %230 = load i32*, i32** @add_cycles, align 8
  %231 = load i64, i64* %10, align 8
  %232 = call i64 @INSN_UID(i64 %231)
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  store i32 %229, i32* %233, align 4
  br label %234

234:                                              ; preds = %227, %224
  br label %235

235:                                              ; preds = %234, %163, %157
  br label %236

236:                                              ; preds = %235, %152, %146, %142, %139
  store i32 0, i32* %7, align 4
  br label %237

237:                                              ; preds = %236, %98
  %238 = load i32, i32* %7, align 4
  ret i32 %238
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @INSN_P(i64) #1

declare dso_local i64 @safe_group_barrier_needed(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @PATTERN(i64) #1

declare dso_local i64 @asm_noperands(i64) #1

declare dso_local i32 @init_insn_group_barriers(...) #1

declare dso_local i32 @fprintf(i32*, i8*, i64, i8*) #1

declare dso_local i64 @INSN_UID(i64) #1

declare dso_local i32 @state_transition(i32, i32*) #1

declare dso_local i32 @state_reset(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ia64_safe_itanium_class(i64) #1

declare dso_local i64 @LOG_LINKS(i64) #1

declare dso_local i64 @REG_NOTE_KIND(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
