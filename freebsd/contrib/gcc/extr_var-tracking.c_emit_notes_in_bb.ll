; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_var-tracking.c_emit_notes_in_bb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_var-tracking.c_emit_notes_in_bb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_19__*, %struct.TYPE_16__ }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }

@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@call_used_reg_set = common dso_local global i32 0, align 4
@EMIT_NOTE_AFTER_INSN = common dso_local global i32 0, align 4
@REG = common dso_local global i32 0, align 4
@EMIT_NOTE_BEFORE_INSN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @emit_notes_in_bb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_notes_in_bb(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call %struct.TYPE_17__* @VTI(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @htab_elements(i32 %16)
  %18 = add nsw i64 %17, 3
  %19 = call i32 @dataflow_set_init(%struct.TYPE_20__* %4, i64 %18)
  %20 = load i32, i32* %2, align 4
  %21 = call %struct.TYPE_17__* @VTI(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 2
  %23 = call i32 @dataflow_set_copy(%struct.TYPE_20__* %4, %struct.TYPE_16__* %22)
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %207, %1
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %2, align 4
  %27 = call %struct.TYPE_17__* @VTI(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %210

31:                                               ; preds = %24
  %32 = load i32, i32* %2, align 4
  %33 = call %struct.TYPE_17__* @VTI(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %2, align 4
  %42 = call %struct.TYPE_17__* @VTI(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %206 [
    i32 133, label %50
    i32 129, label %71
    i32 130, label %96
    i32 131, label %120
    i32 128, label %144
    i32 132, label %168
    i32 134, label %192
  ]

50:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %64, %50
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %51
  %56 = load i32, i32* @call_used_reg_set, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @TEST_HARD_REG_BIT(i32 %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @var_regno_delete(%struct.TYPE_20__* %4, i32 %61)
  br label %63

63:                                               ; preds = %60, %55
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %51

67:                                               ; preds = %51
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @EMIT_NOTE_AFTER_INSN, align 4
  %70 = call i32 @emit_notes_for_changes(i32 %68, i32 %69)
  br label %206

71:                                               ; preds = %31
  %72 = load i32, i32* %2, align 4
  %73 = call %struct.TYPE_17__* @VTI(i32 %72)
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @GET_CODE(i32 %82)
  %84 = load i32, i32* @REG, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %71
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @var_reg_set(%struct.TYPE_20__* %4, i32 %87)
  br label %92

89:                                               ; preds = %71
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @var_mem_set(%struct.TYPE_20__* %4, i32 %90)
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @EMIT_NOTE_AFTER_INSN, align 4
  %95 = call i32 @emit_notes_for_changes(i32 %93, i32 %94)
  br label %206

96:                                               ; preds = %31
  %97 = load i32, i32* %2, align 4
  %98 = call %struct.TYPE_17__* @VTI(i32 %97)
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %99, align 8
  %101 = load i32, i32* %3, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @REG_P(i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %96
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @var_reg_delete_and_set(%struct.TYPE_20__* %4, i32 %111, i32 1)
  br label %116

113:                                              ; preds = %96
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @var_mem_delete_and_set(%struct.TYPE_20__* %4, i32 %114, i32 1)
  br label %116

116:                                              ; preds = %113, %110
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* @EMIT_NOTE_BEFORE_INSN, align 4
  %119 = call i32 @emit_notes_for_changes(i32 %117, i32 %118)
  br label %206

120:                                              ; preds = %31
  %121 = load i32, i32* %2, align 4
  %122 = call %struct.TYPE_17__* @VTI(i32 %121)
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %123, align 8
  %125 = load i32, i32* %3, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @REG_P(i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %120
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @var_reg_delete_and_set(%struct.TYPE_20__* %4, i32 %135, i32 0)
  br label %140

137:                                              ; preds = %120
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @var_mem_delete_and_set(%struct.TYPE_20__* %4, i32 %138, i32 0)
  br label %140

140:                                              ; preds = %137, %134
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* @EMIT_NOTE_BEFORE_INSN, align 4
  %143 = call i32 @emit_notes_for_changes(i32 %141, i32 %142)
  br label %206

144:                                              ; preds = %31
  %145 = load i32, i32* %2, align 4
  %146 = call %struct.TYPE_17__* @VTI(i32 %145)
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %147, align 8
  %149 = load i32, i32* %3, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %10, align 4
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @REG_P(i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %144
  %159 = load i32, i32* %10, align 4
  %160 = call i32 @var_reg_delete(%struct.TYPE_20__* %4, i32 %159, i32 0)
  br label %164

161:                                              ; preds = %144
  %162 = load i32, i32* %10, align 4
  %163 = call i32 @var_mem_delete(%struct.TYPE_20__* %4, i32 %162, i32 0)
  br label %164

164:                                              ; preds = %161, %158
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* @EMIT_NOTE_AFTER_INSN, align 4
  %167 = call i32 @emit_notes_for_changes(i32 %165, i32 %166)
  br label %206

168:                                              ; preds = %31
  %169 = load i32, i32* %2, align 4
  %170 = call %struct.TYPE_17__* @VTI(i32 %169)
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %171, align 8
  %173 = load i32, i32* %3, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %11, align 4
  %179 = load i32, i32* %11, align 4
  %180 = call i32 @REG_P(i32 %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %168
  %183 = load i32, i32* %11, align 4
  %184 = call i32 @var_reg_delete(%struct.TYPE_20__* %4, i32 %183, i32 1)
  br label %188

185:                                              ; preds = %168
  %186 = load i32, i32* %11, align 4
  %187 = call i32 @var_mem_delete(%struct.TYPE_20__* %4, i32 %186, i32 1)
  br label %188

188:                                              ; preds = %185, %182
  %189 = load i32, i32* %5, align 4
  %190 = load i32, i32* @EMIT_NOTE_BEFORE_INSN, align 4
  %191 = call i32 @emit_notes_for_changes(i32 %189, i32 %190)
  br label %206

192:                                              ; preds = %31
  %193 = load i32, i32* %2, align 4
  %194 = call %struct.TYPE_17__* @VTI(i32 %193)
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %195, align 8
  %197 = load i32, i32* %3, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %204, %202
  store i32 %205, i32* %203, align 4
  br label %206

206:                                              ; preds = %31, %192, %188, %164, %140, %116, %92, %67
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %3, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %3, align 4
  br label %24

210:                                              ; preds = %24
  %211 = call i32 @dataflow_set_destroy(%struct.TYPE_20__* %4)
  ret void
}

declare dso_local i32 @dataflow_set_init(%struct.TYPE_20__*, i64) #1

declare dso_local i64 @htab_elements(i32) #1

declare dso_local %struct.TYPE_17__* @VTI(i32) #1

declare dso_local i32 @dataflow_set_copy(%struct.TYPE_20__*, %struct.TYPE_16__*) #1

declare dso_local i32 @TEST_HARD_REG_BIT(i32, i32) #1

declare dso_local i32 @var_regno_delete(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @emit_notes_for_changes(i32, i32) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @var_reg_set(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @var_mem_set(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @REG_P(i32) #1

declare dso_local i32 @var_reg_delete_and_set(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @var_mem_delete_and_set(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @var_reg_delete(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @var_mem_delete(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @dataflow_set_destroy(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
