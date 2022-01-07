; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgexpand.c_construct_init_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgexpand.c_construct_init_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i64, i32, i32 }

@ENTRY_BLOCK_PTR = common dso_local global %struct.TYPE_18__* null, align 8
@EXIT_BLOCK_PTR = common dso_local global %struct.TYPE_18__* null, align 8
@BB_RTL = common dso_local global i32 0, align 4
@EDGE_FALLTHRU = common dso_local global i32 0, align 4
@REG_BR_PROB_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_18__* ()* @construct_init_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_18__* @construct_init_block() #0 {
  %1 = alloca %struct.TYPE_18__*, align 8
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %3, align 8
  %6 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ENTRY_BLOCK_PTR, align 8
  %7 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @EDGE_COUNT(i32 %8)
  %10 = icmp eq i32 %9, 1
  %11 = zext i1 %10 to i32
  %12 = call i32 @gcc_assert(i32 %11)
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ENTRY_BLOCK_PTR, align 8
  %14 = call i32 @init_rtl_bb_info(%struct.TYPE_18__* %13)
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** @EXIT_BLOCK_PTR, align 8
  %16 = call i32 @init_rtl_bb_info(%struct.TYPE_18__* %15)
  %17 = load i32, i32* @BB_RTL, align 4
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ENTRY_BLOCK_PTR, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load i32, i32* @BB_RTL, align 4
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** @EXIT_BLOCK_PTR, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ENTRY_BLOCK_PTR, align 8
  %28 = call %struct.TYPE_17__* @EDGE_SUCC(%struct.TYPE_18__* %27, i32 0)
  store %struct.TYPE_17__* %28, %struct.TYPE_17__** %3, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %30 = icmp ne %struct.TYPE_17__* %29, null
  br i1 %30, label %31, label %47

31:                                               ; preds = %0
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ENTRY_BLOCK_PTR, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %31
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @tree_block_label(i64 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @label_rtx(i32 %44)
  %46 = call i32 @emit_jump(i32 %45)
  store i32 0, i32* %4, align 4
  br label %49

47:                                               ; preds = %31, %0
  %48 = load i32, i32* @EDGE_FALLTHRU, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %39
  %50 = call i32 (...) @get_insns()
  %51 = call i32 @NEXT_INSN(i32 %50)
  %52 = call i32 (...) @get_last_insn()
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ENTRY_BLOCK_PTR, align 8
  %54 = call %struct.TYPE_18__* @create_basic_block(i32 %51, i32 %52, %struct.TYPE_18__* %53)
  store %struct.TYPE_18__* %54, %struct.TYPE_18__** %1, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ENTRY_BLOCK_PTR, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %1, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ENTRY_BLOCK_PTR, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %1, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %66 = icmp ne %struct.TYPE_17__* %65, null
  br i1 %66, label %67, label %79

67:                                               ; preds = %49
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %71, %struct.TYPE_18__** %2, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %1, align 8
  %74 = call i32 @redirect_edge_succ(%struct.TYPE_17__* %72, %struct.TYPE_18__* %73)
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %1, align 8
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call %struct.TYPE_17__* @make_edge(%struct.TYPE_18__* %75, %struct.TYPE_18__* %76, i32 %77)
  store %struct.TYPE_17__* %78, %struct.TYPE_17__** %3, align 8
  br label %84

79:                                               ; preds = %49
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %1, align 8
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** @EXIT_BLOCK_PTR, align 8
  %82 = load i32, i32* @EDGE_FALLTHRU, align 4
  %83 = call %struct.TYPE_17__* @make_edge(%struct.TYPE_18__* %80, %struct.TYPE_18__* %81, i32 %82)
  store %struct.TYPE_17__* %83, %struct.TYPE_17__** %3, align 8
  br label %84

84:                                               ; preds = %79, %67
  %85 = load i32, i32* @REG_BR_PROB_BASE, align 4
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ENTRY_BLOCK_PTR, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %1, align 8
  %94 = call i32 @update_bb_for_insn(%struct.TYPE_18__* %93)
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %1, align 8
  ret %struct.TYPE_18__* %95
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @EDGE_COUNT(i32) #1

declare dso_local i32 @init_rtl_bb_info(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_17__* @EDGE_SUCC(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @tree_block_label(i64) #1

declare dso_local i32 @emit_jump(i32) #1

declare dso_local i32 @label_rtx(i32) #1

declare dso_local %struct.TYPE_18__* @create_basic_block(i32, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @NEXT_INSN(i32) #1

declare dso_local i32 @get_insns(...) #1

declare dso_local i32 @get_last_insn(...) #1

declare dso_local i32 @redirect_edge_succ(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_17__* @make_edge(%struct.TYPE_18__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @update_bb_for_insn(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
