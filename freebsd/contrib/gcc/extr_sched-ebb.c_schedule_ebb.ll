; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_sched-ebb.c_schedule_ebb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_sched-ebb.c_schedule_ebb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_12__*, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 (i64, i64)* }
%struct.TYPE_14__ = type { i32, i64, i64, i32, i32, i64 }
%struct.deps = type { i32 }

@last_bb = common dso_local global %struct.TYPE_12__* null, align 8
@dont_calc_deps = common dso_local global i32 0, align 4
@targetm = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@current_sched_info = common dso_local global %struct.TYPE_14__* null, align 8
@n_insns = common dso_local global i64 0, align 8
@write_symbols = common dso_local global i64 0, align 8
@NO_DEBUG = common dso_local global i64 0, align 8
@REG_SAVE_NOTE = common dso_local global i64 0, align 8
@sched_n_insns = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (i64, i64)* @schedule_ebb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @schedule_ebb(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.deps, align 4
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call %struct.TYPE_12__* @BLOCK_FOR_INSN(i64 %10)
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %6, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call %struct.TYPE_12__* @BLOCK_FOR_INSN(i64 %12)
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** @last_bb, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @no_real_insns_p(i64 %14, i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = call %struct.TYPE_12__* @BLOCK_FOR_INSN(i64 %19)
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %3, align 8
  br label %180

21:                                               ; preds = %2
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @INSN_P(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i64, i64* %5, align 8
  %27 = call i64 @INSN_P(i64 %26)
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i1 [ false, %21 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @gcc_assert(i32 %31)
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @bitmap_bit_p(i32* @dont_calc_deps, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %60, label %38

38:                                               ; preds = %29
  %39 = call i32 (...) @init_deps_global()
  %40 = call i32 @init_deps(%struct.deps* %8)
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @sched_analyze(%struct.deps* %8, i64 %41, i64 %42)
  %44 = call i32 @free_deps(%struct.deps* %8)
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @compute_forward_dependences(i64 %45, i64 %46)
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @add_deps_for_risky_insns(i64 %48, i64 %49)
  %51 = load i32 (i64, i64)*, i32 (i64, i64)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @targetm, i32 0, i32 0, i32 0), align 8
  %52 = icmp ne i32 (i64, i64)* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %38
  %54 = load i32 (i64, i64)*, i32 (i64, i64)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @targetm, i32 0, i32 0, i32 0), align 8
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* %5, align 8
  %57 = call i32 %54(i64 %55, i64 %56)
  br label %58

58:                                               ; preds = %53, %38
  %59 = call i32 (...) @finish_deps_global()
  br label %66

60:                                               ; preds = %29
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** @last_bb, align 8
  %63 = icmp eq %struct.TYPE_12__* %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @gcc_assert(i32 %64)
  br label %66

66:                                               ; preds = %60, %58
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** @current_sched_info, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 5
  store i64 0, i64* %68, align 8
  %69 = load i64, i64* %4, align 8
  %70 = load i64, i64* %5, align 8
  %71 = call i64 @set_priorities(i64 %69, i64 %70)
  store i64 %71, i64* @n_insns, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** @current_sched_info, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %73, align 8
  %76 = load i64, i64* %4, align 8
  %77 = call i32 @PREV_INSN(i64 %76)
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** @current_sched_info, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 4
  %80 = load i64, i64* %5, align 8
  %81 = call i32 @NEXT_INSN(i64 %80)
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** @current_sched_info, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  %84 = load i64, i64* @write_symbols, align 8
  %85 = load i64, i64* @NO_DEBUG, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %66
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load i64, i64* %4, align 8
  %92 = load i64, i64* %5, align 8
  %93 = call i32 @save_line_notes(i32 %90, i64 %91, i64 %92)
  %94 = load i64, i64* %4, align 8
  %95 = load i64, i64* %5, align 8
  %96 = call i32 @rm_line_notes(i64 %94, i64 %95)
  br label %97

97:                                               ; preds = %87, %66
  %98 = load i64, i64* %4, align 8
  %99 = call i64 @INSN_P(i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %121

101:                                              ; preds = %97
  %102 = load i64, i64* %4, align 8
  %103 = call i64 @REG_NOTES(i64 %102)
  store i64 %103, i64* %9, align 8
  br label %104

104:                                              ; preds = %117, %101
  %105 = load i64, i64* %9, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %104
  %108 = load i64, i64* %9, align 8
  %109 = call i64 @REG_NOTE_KIND(i64 %108)
  %110 = load i64, i64* @REG_SAVE_NOTE, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load i64, i64* %4, align 8
  %114 = load i64, i64* %9, align 8
  %115 = call i32 @remove_note(i64 %113, i64 %114)
  br label %116

116:                                              ; preds = %112, %107
  br label %117

117:                                              ; preds = %116
  %118 = load i64, i64* %9, align 8
  %119 = call i64 @XEXP(i64 %118, i32 1)
  store i64 %119, i64* %9, align 8
  br label %104

120:                                              ; preds = %104
  br label %121

121:                                              ; preds = %120, %97
  %122 = load i64, i64* %4, align 8
  %123 = load i64, i64* %5, align 8
  %124 = call i32 @rm_other_notes(i64 %122, i64 %123)
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** @last_bb, align 8
  %127 = call i32 @unlink_bb_notes(%struct.TYPE_12__* %125, %struct.TYPE_12__* %126)
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** @current_sched_info, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  store i32 1, i32* %129, align 8
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %130, %struct.TYPE_12__** %7, align 8
  %131 = load i64, i64* @n_insns, align 8
  %132 = call i32 @schedule_block(%struct.TYPE_12__** %7, i64 %131)
  %133 = load i64, i64* @sched_n_insns, align 8
  %134 = load i64, i64* @n_insns, align 8
  %135 = icmp eq i64 %133, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 @gcc_assert(i32 %136)
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** @current_sched_info, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %4, align 8
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** @current_sched_info, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %5, align 8
  %144 = load i64, i64* @write_symbols, align 8
  %145 = load i64, i64* @NO_DEBUG, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %121
  %148 = load i64, i64* %4, align 8
  %149 = load i64, i64* %5, align 8
  %150 = call i32 @restore_line_notes(i64 %148, i64 %149)
  br label %151

151:                                              ; preds = %147, %121
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** @last_bb, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = call i64 @EDGE_COUNT(i32 %154)
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %178

157:                                              ; preds = %151
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** @last_bb, align 8
  %160 = icmp ne %struct.TYPE_12__* %158, %159
  br i1 %160, label %161, label %167

161:                                              ; preds = %157
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** @last_bb, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call i64 @EDGE_COUNT(i32 %164)
  %166 = icmp eq i64 %165, 0
  br label %167

167:                                              ; preds = %161, %157
  %168 = phi i1 [ false, %157 ], [ %166, %161 ]
  %169 = zext i1 %168 to i32
  %170 = call i32 @gcc_assert(i32 %169)
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** @last_bb, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %172, align 8
  store %struct.TYPE_12__* %173, %struct.TYPE_12__** @last_bb, align 8
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** @last_bb, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @delete_basic_block(i32 %176)
  br label %178

178:                                              ; preds = %167, %151
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** @last_bb, align 8
  store %struct.TYPE_12__* %179, %struct.TYPE_12__** %3, align 8
  br label %180

180:                                              ; preds = %178, %18
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  ret %struct.TYPE_12__* %181
}

declare dso_local %struct.TYPE_12__* @BLOCK_FOR_INSN(i64) #1

declare dso_local i64 @no_real_insns_p(i64, i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @INSN_P(i64) #1

declare dso_local i32 @bitmap_bit_p(i32*, i32) #1

declare dso_local i32 @init_deps_global(...) #1

declare dso_local i32 @init_deps(%struct.deps*) #1

declare dso_local i32 @sched_analyze(%struct.deps*, i64, i64) #1

declare dso_local i32 @free_deps(%struct.deps*) #1

declare dso_local i32 @compute_forward_dependences(i64, i64) #1

declare dso_local i32 @add_deps_for_risky_insns(i64, i64) #1

declare dso_local i32 @finish_deps_global(...) #1

declare dso_local i64 @set_priorities(i64, i64) #1

declare dso_local i32 @PREV_INSN(i64) #1

declare dso_local i32 @NEXT_INSN(i64) #1

declare dso_local i32 @save_line_notes(i32, i64, i64) #1

declare dso_local i32 @rm_line_notes(i64, i64) #1

declare dso_local i64 @REG_NOTES(i64) #1

declare dso_local i64 @REG_NOTE_KIND(i64) #1

declare dso_local i32 @remove_note(i64, i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @rm_other_notes(i64, i64) #1

declare dso_local i32 @unlink_bb_notes(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @schedule_block(%struct.TYPE_12__**, i64) #1

declare dso_local i32 @restore_line_notes(i64, i64) #1

declare dso_local i64 @EDGE_COUNT(i32) #1

declare dso_local i32 @delete_basic_block(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
