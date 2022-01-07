; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_sjlj_emit_dispatch_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_sjlj_emit_dispatch_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.sjlj_lp_info = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.eh_region = type { i32 }

@cfun = common dso_local global %struct.TYPE_11__* null, align 8
@integer_type_node = common dso_local global i32 0, align 4
@sjlj_fc_call_site_ofs = common dso_local global i64 0, align 8
@word_mode = common dso_local global i64 0, align 8
@sjlj_fc_data_ofs = common dso_local global i64 0, align 8
@ptr_mode = common dso_local global i64 0, align 8
@UNITS_PER_WORD = common dso_local global i64 0, align 8
@EQ = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@eh_region = common dso_local global i32 0, align 4
@EDGE_FALLTHRU = common dso_local global i32 0, align 4
@REG_BR_PROB_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sjlj_lp_info*)* @sjlj_emit_dispatch_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sjlj_emit_dispatch_table(i32 %0, %struct.sjlj_lp_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sjlj_lp_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.sjlj_lp_info* %1, %struct.sjlj_lp_info** %4, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cfun, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = call i32 (...) @start_sequence()
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @emit_label(i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @expand_builtin_setjmp_receiver(i32 %22)
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @integer_type_node, align 4
  %26 = call i64 @TYPE_MODE(i32 %25)
  %27 = load i64, i64* @sjlj_fc_call_site_ofs, align 8
  %28 = call i32 @adjust_address(i32 %24, i64 %26, i64 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @copy_to_reg(i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i64, i64* @word_mode, align 8
  %33 = load i64, i64* @sjlj_fc_data_ofs, align 8
  %34 = call i32 @adjust_address(i32 %31, i64 %32, i64 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i64, i64* @word_mode, align 8
  %36 = load i64, i64* @ptr_mode, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %2
  %39 = load i64, i64* @ptr_mode, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @convert_to_mode(i64 %39, i32 %40, i32 0)
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %38, %2
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cfun, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @emit_move_insn(i32 %47, i32 %48)
  %50 = load i32, i32* %10, align 4
  %51 = load i64, i64* @word_mode, align 8
  %52 = load i64, i64* @sjlj_fc_data_ofs, align 8
  %53 = load i64, i64* @UNITS_PER_WORD, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @adjust_address(i32 %50, i64 %51, i64 %54)
  store i32 %55, i32* %7, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cfun, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @emit_move_insn(i32 %60, i32 %61)
  store i32 0, i32* %6, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cfun, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %110, %42
  %69 = load i32, i32* %5, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %113

71:                                               ; preds = %68
  %72 = load %struct.sjlj_lp_info*, %struct.sjlj_lp_info** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.sjlj_lp_info, %struct.sjlj_lp_info* %72, i64 %74
  %76 = getelementptr inbounds %struct.sjlj_lp_info, %struct.sjlj_lp_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %71
  br label %110

80:                                               ; preds = %71
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* %6, align 4
  br label %110

85:                                               ; preds = %80
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.sjlj_lp_info*, %struct.sjlj_lp_info** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.sjlj_lp_info, %struct.sjlj_lp_info* %87, i64 %89
  %91 = getelementptr inbounds %struct.sjlj_lp_info, %struct.sjlj_lp_info* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @GEN_INT(i32 %92)
  %94 = load i32, i32* @EQ, align 4
  %95 = load i32, i32* @NULL_RTX, align 4
  %96 = load i32, i32* @integer_type_node, align 4
  %97 = call i64 @TYPE_MODE(i32 %96)
  %98 = load i32, i32* @eh_region, align 4
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cfun, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %5, align 4
  %105 = call i64 @VEC_index(i32 %98, i32 %103, i32 %104)
  %106 = inttoptr i64 %105 to %struct.eh_region*
  %107 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @emit_cmp_and_jump_insns(i32 %86, i32 %93, i32 %94, i32 %95, i64 %97, i32 0, i32 %108)
  br label %110

110:                                              ; preds = %85, %83, %79
  %111 = load i32, i32* %5, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %5, align 4
  br label %68

113:                                              ; preds = %68
  %114 = call i32 (...) @get_insns()
  store i32 %114, i32* %9, align 4
  %115 = call i32 (...) @end_sequence()
  %116 = load i32, i32* @eh_region, align 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cfun, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %6, align 4
  %123 = call i64 @VEC_index(i32 %116, i32 %121, i32 %122)
  %124 = inttoptr i64 %123 to %struct.eh_region*
  %125 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %11, align 4
  %129 = call %struct.TYPE_10__* @emit_to_new_bb_before(i32 %127, i32 %128)
  store %struct.TYPE_10__* %129, %struct.TYPE_10__** %12, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @EDGE_FALLTHRU, align 4
  %135 = call %struct.TYPE_9__* @make_edge(%struct.TYPE_10__* %130, i32 %133, i32 %134)
  store %struct.TYPE_9__* %135, %struct.TYPE_9__** %13, align 8
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* @REG_BR_PROB_BASE, align 4
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 4
  ret void
}

declare dso_local i32 @start_sequence(...) #1

declare dso_local i32 @emit_label(i32) #1

declare dso_local i32 @expand_builtin_setjmp_receiver(i32) #1

declare dso_local i32 @adjust_address(i32, i64, i64) #1

declare dso_local i64 @TYPE_MODE(i32) #1

declare dso_local i32 @copy_to_reg(i32) #1

declare dso_local i32 @convert_to_mode(i64, i32, i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @emit_cmp_and_jump_insns(i32, i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i64 @VEC_index(i32, i32, i32) #1

declare dso_local i32 @get_insns(...) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local %struct.TYPE_10__* @emit_to_new_bb_before(i32, i32) #1

declare dso_local %struct.TYPE_9__* @make_edge(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
