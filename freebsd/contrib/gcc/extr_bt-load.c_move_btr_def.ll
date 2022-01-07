; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bt-load.c_move_btr_def.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bt-load.c_move_btr_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32, i32, %struct.TYPE_12__*, i32, i32, i64, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_12__* }

@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"migrating to basic block %d, using reg %d\0A\00", align 1
@btrs_live = common dso_local global i32* null, align 8
@regs_ever_live = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"New pt is insn %d, inserted after insn %d\0A\00", align 1
@VOIDmode = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32, %struct.TYPE_13__*, i32, i32*)* @move_btr_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @move_btr_def(%struct.TYPE_14__* %0, i32 %1, %struct.TYPE_13__* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_12__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %11, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %23 = call i64 @BB_HEAD(%struct.TYPE_14__* %22)
  store i64 %23, i64* %12, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %13, align 8
  %27 = load i64, i64* @dump_file, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %5
  %30 = load i64, i64* @dump_file, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @fprintf(i64 %30, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %29, %5
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %38 = call i32 @clear_btr_from_live_range(%struct.TYPE_13__* %37)
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 7
  store %struct.TYPE_14__* %42, %struct.TYPE_14__** %44, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 6
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %48 = call i32 @basic_block_freq(%struct.TYPE_14__* %47)
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @bitmap_copy(i32 %53, i32 %54)
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @combine_btr_defs(%struct.TYPE_13__* %56, i32* %57)
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %7, align 4
  %62 = load i32*, i32** @btrs_live, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i64 @TEST_HARD_REG_BIT(i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 1, i32 0
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %77 = call i32 @add_btr_to_live_range(%struct.TYPE_13__* %76, i32 1)
  %78 = load i64, i64* %12, align 8
  %79 = call i64 @LABEL_P(i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %36
  %82 = load i64, i64* %12, align 8
  %83 = call i64 @NEXT_INSN(i64 %82)
  store i64 %83, i64* %12, align 8
  br label %84

84:                                               ; preds = %81, %36
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %121

89:                                               ; preds = %84
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %91 = call i64 @BB_END(%struct.TYPE_14__* %90)
  store i64 %91, i64* %12, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %93 = call i64 @BB_END(%struct.TYPE_14__* %92)
  store i64 %93, i64* %12, align 8
  br label %94

94:                                               ; preds = %106, %89
  %95 = load i64, i64* %12, align 8
  %96 = call i32 @INSN_P(i64 %95)
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  br i1 %98, label %99, label %109

99:                                               ; preds = %94
  %100 = load i64, i64* %12, align 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %102 = call i64 @BB_HEAD(%struct.TYPE_14__* %101)
  %103 = icmp ne i64 %100, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @gcc_assert(i32 %104)
  br label %106

106:                                              ; preds = %99
  %107 = load i64, i64* %12, align 8
  %108 = call i64 @PREV_INSN(i64 %107)
  store i64 %108, i64* %12, align 8
  br label %94

109:                                              ; preds = %94
  %110 = load i64, i64* %12, align 8
  %111 = call i64 @JUMP_P(i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = load i64, i64* %12, align 8
  %115 = call i64 @can_throw_internal(i64 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %113, %109
  %118 = load i64, i64* %12, align 8
  %119 = call i64 @PREV_INSN(i64 %118)
  store i64 %119, i64* %12, align 8
  br label %120

120:                                              ; preds = %117, %113
  br label %121

121:                                              ; preds = %120, %84
  %122 = load i64, i64* %13, align 8
  %123 = call i64 @single_set(i64 %122)
  store i64 %123, i64* %19, align 8
  %124 = load i64, i64* %19, align 8
  %125 = call i64 @SET_SRC(i64 %124)
  store i64 %125, i64* %14, align 8
  %126 = load i64, i64* %19, align 8
  %127 = call i64 @SET_DEST(i64 %126)
  %128 = call i64 @GET_MODE(i64 %127)
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %17, align 4
  %130 = load i32, i32* %17, align 4
  %131 = zext i32 %130 to i64
  %132 = load i32, i32* %7, align 4
  %133 = call i64 @gen_rtx_REG(i64 %131, i32 %132)
  store i64 %133, i64* %15, align 8
  %134 = load i64, i64* %15, align 8
  %135 = load i64, i64* %14, align 8
  %136 = call i64 @gen_move_insn(i64 %134, i64 %135)
  store i64 %136, i64* %16, align 8
  %137 = load i64, i64* %16, align 8
  %138 = load i64, i64* %12, align 8
  %139 = call i64 @emit_insn_after(i64 %137, i64 %138)
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  store i64 %139, i64* %141, align 8
  %142 = load i32*, i32** @regs_ever_live, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 1, i32* %145, align 4
  %146 = load i64, i64* @dump_file, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %121
  %149 = load i64, i64* @dump_file, align 8
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @INSN_UID(i64 %152)
  %154 = load i64, i64* %12, align 8
  %155 = call i32 @INSN_UID(i64 %154)
  %156 = call i32 @fprintf(i64 %149, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %153, i32 %155)
  br label %157

157:                                              ; preds = %148, %121
  %158 = load i64, i64* %13, align 8
  %159 = call i32 @delete_insn(i64 %158)
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 3
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %161, align 8
  store %struct.TYPE_12__* %162, %struct.TYPE_12__** %18, align 8
  br label %163

163:                                              ; preds = %202, %157
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %165 = icmp ne %struct.TYPE_12__* %164, null
  br i1 %165, label %166, label %206

166:                                              ; preds = %163
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = call i64 @GET_MODE(i64 %169)
  %171 = load i64, i64* %15, align 8
  %172 = call i64 @GET_MODE(i64 %171)
  %173 = icmp eq i64 %170, %172
  br i1 %173, label %181, label %174

174:                                              ; preds = %166
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = call i64 @GET_MODE(i64 %177)
  %179 = load i64, i64* @VOIDmode, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %174, %166
  %182 = load i64, i64* %15, align 8
  store i64 %182, i64* %20, align 8
  br label %190

183:                                              ; preds = %174
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = call i64 @GET_MODE(i64 %186)
  %188 = load i32, i32* %7, align 4
  %189 = call i64 @gen_rtx_REG(i64 %187, i32 %188)
  store i64 %189, i64* %20, align 8
  br label %190

190:                                              ; preds = %183, %181
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* %20, align 8
  %198 = call i32 @replace_rtx(i32 %193, i64 %196, i64 %197)
  %199 = load i64, i64* %20, align 8
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 0
  store i64 %199, i64* %201, align 8
  br label %202

202:                                              ; preds = %190
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 2
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %204, align 8
  store %struct.TYPE_12__* %205, %struct.TYPE_12__** %18, align 8
  br label %163

206:                                              ; preds = %163
  ret void
}

declare dso_local i64 @BB_HEAD(%struct.TYPE_14__*) #1

declare dso_local i32 @fprintf(i64, i8*, i32, i32) #1

declare dso_local i32 @clear_btr_from_live_range(%struct.TYPE_13__*) #1

declare dso_local i32 @basic_block_freq(%struct.TYPE_14__*) #1

declare dso_local i32 @bitmap_copy(i32, i32) #1

declare dso_local i32 @combine_btr_defs(%struct.TYPE_13__*, i32*) #1

declare dso_local i64 @TEST_HARD_REG_BIT(i32, i32) #1

declare dso_local i32 @add_btr_to_live_range(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @LABEL_P(i64) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i64 @BB_END(%struct.TYPE_14__*) #1

declare dso_local i32 @INSN_P(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @PREV_INSN(i64) #1

declare dso_local i64 @JUMP_P(i64) #1

declare dso_local i64 @can_throw_internal(i64) #1

declare dso_local i64 @single_set(i64) #1

declare dso_local i64 @SET_SRC(i64) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i64 @SET_DEST(i64) #1

declare dso_local i64 @gen_rtx_REG(i64, i32) #1

declare dso_local i64 @gen_move_insn(i64, i64) #1

declare dso_local i64 @emit_insn_after(i64, i64) #1

declare dso_local i32 @INSN_UID(i64) #1

declare dso_local i32 @delete_insn(i64) #1

declare dso_local i32 @replace_rtx(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
