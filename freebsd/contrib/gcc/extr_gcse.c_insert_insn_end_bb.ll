; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_insert_insn_end_bb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_insert_insn_end_bb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { i64, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32 }

@NULL_RTX = common dso_local global i64 0, align 8
@EDGE_ABNORMAL = common dso_local global i32 0, align 4
@antloc = common dso_local global i32* null, align 8
@transp = common dso_local global i32* null, align 8
@ADDR_VEC = common dso_local global i64 0, align 8
@ADDR_DIFF_VEC = common dso_local global i64 0, align 8
@record_set_info = common dso_local global i32 0, align 4
@gcse_create_count = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"PRE/HOIST: end of bb %d, insn %d, \00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"copying expression %d to reg %d\0A\00", align 1
@REG_CC_SETTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.expr*, %struct.TYPE_8__*, i32)* @insert_insn_end_bb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_insn_end_bb(%struct.expr* %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca %struct.expr*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.expr* %0, %struct.expr** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = call i64 @BB_END(%struct.TYPE_8__* %13)
  store i64 %14, i64* %7, align 8
  %15 = load %struct.expr*, %struct.expr** %4, align 8
  %16 = getelementptr inbounds %struct.expr, %struct.expr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @REGNO(i64 %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.expr*, %struct.expr** %4, align 8
  %21 = call i64 @process_insert_insn(%struct.expr* %20)
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i64, i64* %11, align 8
  %26 = call i64 @INSN_P(i64 %25)
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %24, %3
  %29 = phi i1 [ false, %3 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @gcc_assert(i32 %30)
  %32 = load i64, i64* %11, align 8
  store i64 %32, i64* %12, align 8
  br label %33

33:                                               ; preds = %38, %28
  %34 = load i64, i64* %12, align 8
  %35 = call i64 @NEXT_INSN(i64 %34)
  %36 = load i64, i64* @NULL_RTX, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i64, i64* %12, align 8
  %40 = call i64 @NEXT_INSN(i64 %39)
  store i64 %40, i64* %12, align 8
  br label %33

41:                                               ; preds = %33
  %42 = load i64, i64* %7, align 8
  %43 = call i64 @JUMP_P(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %61, label %45

45:                                               ; preds = %41
  %46 = load i64, i64* %7, align 8
  %47 = call i64 @NONJUMP_INSN_P(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %114

49:                                               ; preds = %45
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = call i32 @single_succ_p(%struct.TYPE_8__* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = call %struct.TYPE_9__* @single_succ_edge(%struct.TYPE_8__* %54)
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @EDGE_ABNORMAL, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %114

61:                                               ; preds = %53, %49, %41
  %62 = load i64, i64* %7, align 8
  %63 = call i64 @NONJUMP_INSN_P(i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %92

65:                                               ; preds = %61
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %92

68:                                               ; preds = %65
  %69 = load i32*, i32** @antloc, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.expr*, %struct.expr** %4, align 8
  %76 = getelementptr inbounds %struct.expr, %struct.expr* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @TEST_BIT(i32 %74, i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %92, label %80

80:                                               ; preds = %68
  %81 = load i32*, i32** @transp, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.expr*, %struct.expr** %4, align 8
  %88 = getelementptr inbounds %struct.expr, %struct.expr* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @TEST_BIT(i32 %86, i64 %89)
  %91 = icmp ne i64 %90, 0
  br label %92

92:                                               ; preds = %80, %68, %65, %61
  %93 = phi i1 [ true, %68 ], [ true, %65 ], [ true, %61 ], [ %91, %80 ]
  %94 = zext i1 %93 to i32
  %95 = call i32 @gcc_assert(i32 %94)
  %96 = load i64, i64* %7, align 8
  %97 = call i32 @PATTERN(i64 %96)
  %98 = call i64 @GET_CODE(i32 %97)
  %99 = load i64, i64* @ADDR_VEC, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %107, label %101

101:                                              ; preds = %92
  %102 = load i64, i64* %7, align 8
  %103 = call i32 @PATTERN(i64 %102)
  %104 = call i64 @GET_CODE(i32 %103)
  %105 = load i64, i64* @ADDR_DIFF_VEC, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %101, %92
  %108 = load i64, i64* %7, align 8
  %109 = call i64 @prev_real_insn(i64 %108)
  store i64 %109, i64* %7, align 8
  br label %110

110:                                              ; preds = %107, %101
  %111 = load i64, i64* %11, align 8
  %112 = load i64, i64* %7, align 8
  %113 = call i64 @emit_insn_before_noloc(i64 %111, i64 %112)
  store i64 %113, i64* %8, align 8
  br label %187

114:                                              ; preds = %53, %45
  %115 = load i64, i64* %7, align 8
  %116 = call i64 @CALL_P(i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %182

118:                                              ; preds = %114
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %120 = call i32 @single_succ_p(%struct.TYPE_8__* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %118
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %124 = call %struct.TYPE_9__* @single_succ_edge(%struct.TYPE_8__* %123)
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @EDGE_ABNORMAL, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %182

130:                                              ; preds = %122, %118
  %131 = load i32, i32* %6, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %157

133:                                              ; preds = %130
  %134 = load i32*, i32** @antloc, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.expr*, %struct.expr** %4, align 8
  %141 = getelementptr inbounds %struct.expr, %struct.expr* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = call i64 @TEST_BIT(i32 %139, i64 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %157, label %145

145:                                              ; preds = %133
  %146 = load i32*, i32** @transp, align 8
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds i32, i32* %146, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.expr*, %struct.expr** %4, align 8
  %153 = getelementptr inbounds %struct.expr, %struct.expr* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = call i64 @TEST_BIT(i32 %151, i64 %154)
  %156 = icmp ne i64 %155, 0
  br label %157

157:                                              ; preds = %145, %133, %130
  %158 = phi i1 [ true, %133 ], [ true, %130 ], [ %156, %145 ]
  %159 = zext i1 %158 to i32
  %160 = call i32 @gcc_assert(i32 %159)
  %161 = load i64, i64* %7, align 8
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %163 = call i32 @BB_HEAD(%struct.TYPE_8__* %162)
  %164 = call i64 @find_first_parameter_load(i64 %161, i32 %163)
  store i64 %164, i64* %7, align 8
  br label %165

165:                                              ; preds = %175, %157
  %166 = load i64, i64* %7, align 8
  %167 = call i64 @LABEL_P(i64 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %165
  %170 = load i64, i64* %7, align 8
  %171 = call i64 @NOTE_INSN_BASIC_BLOCK_P(i64 %170)
  %172 = icmp ne i64 %171, 0
  br label %173

173:                                              ; preds = %169, %165
  %174 = phi i1 [ true, %165 ], [ %172, %169 ]
  br i1 %174, label %175, label %178

175:                                              ; preds = %173
  %176 = load i64, i64* %7, align 8
  %177 = call i64 @NEXT_INSN(i64 %176)
  store i64 %177, i64* %7, align 8
  br label %165

178:                                              ; preds = %173
  %179 = load i64, i64* %11, align 8
  %180 = load i64, i64* %7, align 8
  %181 = call i64 @emit_insn_before_noloc(i64 %179, i64 %180)
  store i64 %181, i64* %8, align 8
  br label %186

182:                                              ; preds = %122, %114
  %183 = load i64, i64* %11, align 8
  %184 = load i64, i64* %7, align 8
  %185 = call i64 @emit_insn_after_noloc(i64 %183, i64 %184)
  store i64 %185, i64* %8, align 8
  br label %186

186:                                              ; preds = %182, %178
  br label %187

187:                                              ; preds = %186, %110
  br label %188

188:                                              ; preds = %187, %207
  %189 = load i64, i64* %11, align 8
  %190 = call i64 @INSN_P(i64 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %202

192:                                              ; preds = %188
  %193 = load i64, i64* %11, align 8
  %194 = call i32 @PATTERN(i64 %193)
  %195 = load i64, i64* %8, align 8
  %196 = call i32 @add_label_notes(i32 %194, i64 %195)
  %197 = load i64, i64* %11, align 8
  %198 = call i32 @PATTERN(i64 %197)
  %199 = load i32, i32* @record_set_info, align 4
  %200 = load i64, i64* %11, align 8
  %201 = call i32 @note_stores(i32 %198, i32 %199, i64 %200)
  br label %202

202:                                              ; preds = %192, %188
  %203 = load i64, i64* %11, align 8
  %204 = load i64, i64* %12, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %202
  br label %210

207:                                              ; preds = %202
  %208 = load i64, i64* %11, align 8
  %209 = call i64 @NEXT_INSN(i64 %208)
  store i64 %209, i64* %11, align 8
  br label %188

210:                                              ; preds = %206
  %211 = load i32, i32* @gcse_create_count, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* @gcse_create_count, align 4
  %213 = load i64, i64* @dump_file, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %229

215:                                              ; preds = %210
  %216 = load i64, i64* @dump_file, align 8
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* %8, align 8
  %221 = call i32 @INSN_UID(i64 %220)
  %222 = call i32 @fprintf(i64 %216, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %219, i32 %221)
  %223 = load i64, i64* @dump_file, align 8
  %224 = load %struct.expr*, %struct.expr** %4, align 8
  %225 = getelementptr inbounds %struct.expr, %struct.expr* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = load i32, i32* %10, align 4
  %228 = call i32 @fprintf(i64 %223, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %226, i32 %227)
  br label %229

229:                                              ; preds = %215, %210
  ret void
}

declare dso_local i64 @BB_END(%struct.TYPE_8__*) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i64 @process_insert_insn(%struct.expr*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @INSN_P(i64) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i64 @JUMP_P(i64) #1

declare dso_local i64 @NONJUMP_INSN_P(i64) #1

declare dso_local i32 @single_succ_p(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_9__* @single_succ_edge(%struct.TYPE_8__*) #1

declare dso_local i64 @TEST_BIT(i32, i64) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @PATTERN(i64) #1

declare dso_local i64 @prev_real_insn(i64) #1

declare dso_local i64 @emit_insn_before_noloc(i64, i64) #1

declare dso_local i64 @CALL_P(i64) #1

declare dso_local i64 @find_first_parameter_load(i64, i32) #1

declare dso_local i32 @BB_HEAD(%struct.TYPE_8__*) #1

declare dso_local i64 @LABEL_P(i64) #1

declare dso_local i64 @NOTE_INSN_BASIC_BLOCK_P(i64) #1

declare dso_local i64 @emit_insn_after_noloc(i64, i64) #1

declare dso_local i32 @add_label_notes(i32, i64) #1

declare dso_local i32 @note_stores(i32, i32, i64) #1

declare dso_local i32 @fprintf(i64, i8*, i64, i32) #1

declare dso_local i32 @INSN_UID(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
