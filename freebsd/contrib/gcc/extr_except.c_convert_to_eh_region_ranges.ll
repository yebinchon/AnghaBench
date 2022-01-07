; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_convert_to_eh_region_ranges.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_convert_to_eh_region_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32* }
%struct.eh_region = type { i64, %struct.eh_region* }

@NULL_RTX = common dso_local global i64 0, align 8
@USING_SJLJ_EXCEPTIONS = common dso_local global i64 0, align 8
@cfun = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"action_record_data\00", align 1
@action_record_hash = common dso_local global i32 0, align 4
@action_record_eq = common dso_local global i32 0, align 4
@free = common dso_local global i32 0, align 4
@SEQUENCE = common dso_local global i64 0, align 8
@REG_EH_REGION = common dso_local global i32 0, align 4
@flag_non_call_exceptions = common dso_local global i64 0, align 8
@eh_region = common dso_local global i32 0, align 4
@NOTE_INSN_EH_REGION_BEG = common dso_local global i32 0, align 4
@NOTE_INSN_EH_REGION_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @convert_to_eh_region_ranges() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.eh_region*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.eh_region*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 -3, i32* %6, align 4
  %19 = load i64, i64* @NULL_RTX, align 8
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* @NULL_RTX, align 8
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* @NULL_RTX, align 8
  store i64 %21, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %22 = load i64, i64* @USING_SJLJ_EXCEPTIONS, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %24, %0
  store i32 0, i32* %1, align 4
  br label %208

32:                                               ; preds = %24
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @VARRAY_UCHAR_INIT(i32 %37, i32 64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @action_record_hash, align 4
  %40 = load i32, i32* @action_record_eq, align 4
  %41 = load i32, i32* @free, align 4
  %42 = call i32 @htab_create(i32 31, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = call i64 (...) @get_insns()
  store i64 %43, i64* %3, align 8
  br label %44

44:                                               ; preds = %191, %32
  %45 = load i64, i64* %3, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %194

47:                                               ; preds = %44
  %48 = load i64, i64* %3, align 8
  %49 = call i64 @INSN_P(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %190

51:                                               ; preds = %47
  %52 = load i64, i64* %3, align 8
  store i64 %52, i64* %2, align 8
  %53 = load i64, i64* %2, align 8
  %54 = call i64 @NONJUMP_INSN_P(i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load i64, i64* %2, align 8
  %58 = call i32 @PATTERN(i64 %57)
  %59 = call i64 @GET_CODE(i32 %58)
  %60 = load i64, i64* @SEQUENCE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i64, i64* %2, align 8
  %64 = call i32 @PATTERN(i64 %63)
  %65 = call i64 @XVECEXP(i32 %64, i32 0, i32 0)
  store i64 %65, i64* %2, align 8
  br label %66

66:                                               ; preds = %62, %56, %51
  %67 = load i64, i64* %2, align 8
  %68 = load i32, i32* @REG_EH_REGION, align 4
  %69 = load i64, i64* @NULL_RTX, align 8
  %70 = call i64 @find_reg_note(i64 %67, i32 %68, i64 %69)
  store i64 %70, i64* %4, align 8
  %71 = load i64, i64* %4, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %87, label %73

73:                                               ; preds = %66
  %74 = load i64, i64* %2, align 8
  %75 = call i64 @CALL_P(i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %73
  %78 = load i64, i64* @flag_non_call_exceptions, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i64, i64* %2, align 8
  %82 = call i32 @PATTERN(i64 %81)
  %83 = call i64 @may_trap_p(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %80, %77
  br label %191

86:                                               ; preds = %80, %73
  store i32 -1, i32* %12, align 4
  store %struct.eh_region* null, %struct.eh_region** %11, align 8
  br label %107

87:                                               ; preds = %66
  %88 = load i64, i64* %4, align 8
  %89 = call i32 @XEXP(i64 %88, i32 0)
  %90 = call i64 @INTVAL(i32 %89)
  %91 = icmp sle i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %191

93:                                               ; preds = %87
  %94 = load i32, i32* @eh_region, align 4
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i64, i64* %4, align 8
  %101 = call i32 @XEXP(i64 %100, i32 0)
  %102 = call i64 @INTVAL(i32 %101)
  %103 = call %struct.eh_region* @VEC_index(i32 %94, i32 %99, i64 %102)
  store %struct.eh_region* %103, %struct.eh_region** %11, align 8
  %104 = load i32, i32* %5, align 4
  %105 = load %struct.eh_region*, %struct.eh_region** %11, align 8
  %106 = call i32 @collect_one_action_chain(i32 %104, %struct.eh_region* %105)
  store i32 %106, i32* %12, align 4
  br label %107

107:                                              ; preds = %93, %86
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, -1
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  store i32 1, i32* %112, align 8
  br label %119

113:                                              ; preds = %107
  %114 = load i32, i32* %6, align 4
  %115 = icmp eq i32 %114, -3
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i64, i64* %3, align 8
  store i64 %117, i64* %9, align 8
  store i32 -1, i32* %6, align 4
  br label %118

118:                                              ; preds = %116, %113
  br label %119

119:                                              ; preds = %118, %110
  %120 = load i32, i32* %12, align 4
  %121 = icmp sge i32 %120, 0
  br i1 %121, label %122, label %139

122:                                              ; preds = %119
  %123 = load %struct.eh_region*, %struct.eh_region** %11, align 8
  store %struct.eh_region* %123, %struct.eh_region** %14, align 8
  br label %124

124:                                              ; preds = %131, %122
  %125 = load %struct.eh_region*, %struct.eh_region** %14, align 8
  %126 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  %129 = xor i1 %128, true
  br i1 %129, label %130, label %135

130:                                              ; preds = %124
  br label %131

131:                                              ; preds = %130
  %132 = load %struct.eh_region*, %struct.eh_region** %14, align 8
  %133 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %132, i32 0, i32 1
  %134 = load %struct.eh_region*, %struct.eh_region** %133, align 8
  store %struct.eh_region* %134, %struct.eh_region** %14, align 8
  br label %124

135:                                              ; preds = %124
  %136 = load %struct.eh_region*, %struct.eh_region** %14, align 8
  %137 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* %13, align 8
  br label %141

139:                                              ; preds = %119
  %140 = load i64, i64* @NULL_RTX, align 8
  store i64 %140, i64* %13, align 8
  br label %141

141:                                              ; preds = %139, %135
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* %12, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %149, label %145

145:                                              ; preds = %141
  %146 = load i64, i64* %8, align 8
  %147 = load i64, i64* %13, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %188

149:                                              ; preds = %145, %141
  %150 = load i32, i32* %6, align 4
  %151 = icmp sge i32 %150, -1
  br i1 %151, label %152, label %168

152:                                              ; preds = %149
  %153 = load i64, i64* %9, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %152
  %156 = load i64, i64* @NULL_RTX, align 8
  %157 = call i32 @add_call_site(i64 %156, i32 0)
  store i32 %157, i32* %10, align 4
  %158 = load i32, i32* @NOTE_INSN_EH_REGION_BEG, align 4
  %159 = load i64, i64* %9, align 8
  %160 = call i64 @emit_note_before(i32 %158, i64 %159)
  store i64 %160, i64* %4, align 8
  %161 = load i32, i32* %10, align 4
  store i32 %161, i32* %15, align 4
  %162 = load i64, i64* @NULL_RTX, align 8
  store i64 %162, i64* %9, align 8
  br label %163

163:                                              ; preds = %155, %152
  %164 = load i32, i32* @NOTE_INSN_EH_REGION_END, align 4
  %165 = load i64, i64* %7, align 8
  %166 = call i64 @emit_note_after(i32 %164, i64 %165)
  store i64 %166, i64* %4, align 8
  %167 = load i32, i32* %10, align 4
  store i32 %167, i32* %16, align 4
  br label %168

168:                                              ; preds = %163, %149
  %169 = load i32, i32* %12, align 4
  %170 = icmp sge i32 %169, -1
  br i1 %170, label %171, label %185

171:                                              ; preds = %168
  %172 = load i64, i64* %13, align 8
  %173 = load i32, i32* %12, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  br label %178

176:                                              ; preds = %171
  %177 = load i32, i32* %12, align 4
  br label %178

178:                                              ; preds = %176, %175
  %179 = phi i32 [ 0, %175 ], [ %177, %176 ]
  %180 = call i32 @add_call_site(i64 %172, i32 %179)
  store i32 %180, i32* %10, align 4
  %181 = load i32, i32* @NOTE_INSN_EH_REGION_BEG, align 4
  %182 = load i64, i64* %3, align 8
  %183 = call i64 @emit_note_before(i32 %181, i64 %182)
  store i64 %183, i64* %4, align 8
  %184 = load i32, i32* %10, align 4
  store i32 %184, i32* %17, align 4
  br label %185

185:                                              ; preds = %178, %168
  %186 = load i32, i32* %12, align 4
  store i32 %186, i32* %6, align 4
  %187 = load i64, i64* %13, align 8
  store i64 %187, i64* %8, align 8
  br label %188

188:                                              ; preds = %185, %145
  %189 = load i64, i64* %3, align 8
  store i64 %189, i64* %7, align 8
  br label %190

190:                                              ; preds = %188, %47
  br label %191

191:                                              ; preds = %190, %92, %85
  %192 = load i64, i64* %3, align 8
  %193 = call i64 @NEXT_INSN(i64 %192)
  store i64 %193, i64* %3, align 8
  br label %44

194:                                              ; preds = %44
  %195 = load i32, i32* %6, align 4
  %196 = icmp sge i32 %195, -1
  br i1 %196, label %197, label %205

197:                                              ; preds = %194
  %198 = load i64, i64* %9, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %205, label %200

200:                                              ; preds = %197
  %201 = load i32, i32* @NOTE_INSN_EH_REGION_END, align 4
  %202 = load i64, i64* %7, align 8
  %203 = call i64 @emit_note_after(i32 %201, i64 %202)
  store i64 %203, i64* %4, align 8
  %204 = load i32, i32* %10, align 4
  store i32 %204, i32* %18, align 4
  br label %205

205:                                              ; preds = %200, %197, %194
  %206 = load i32, i32* %5, align 4
  %207 = call i32 @htab_delete(i32 %206)
  store i32 0, i32* %1, align 4
  br label %208

208:                                              ; preds = %205, %31
  %209 = load i32, i32* %1, align 4
  ret i32 %209
}

declare dso_local i32 @VARRAY_UCHAR_INIT(i32, i32, i8*) #1

declare dso_local i32 @htab_create(i32, i32, i32, i32) #1

declare dso_local i64 @get_insns(...) #1

declare dso_local i64 @INSN_P(i64) #1

declare dso_local i64 @NONJUMP_INSN_P(i64) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @PATTERN(i64) #1

declare dso_local i64 @XVECEXP(i32, i32, i32) #1

declare dso_local i64 @find_reg_note(i64, i32, i64) #1

declare dso_local i64 @CALL_P(i64) #1

declare dso_local i64 @may_trap_p(i32) #1

declare dso_local i64 @INTVAL(i32) #1

declare dso_local i32 @XEXP(i64, i32) #1

declare dso_local %struct.eh_region* @VEC_index(i32, i32, i64) #1

declare dso_local i32 @collect_one_action_chain(i32, %struct.eh_region*) #1

declare dso_local i32 @add_call_site(i64, i32) #1

declare dso_local i64 @emit_note_before(i32, i64) #1

declare dso_local i64 @emit_note_after(i32, i64) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i32 @htab_delete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
