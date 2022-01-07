; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_dw2_build_landing_pads.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_dw2_build_landing_pads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 (...)* }
%struct.eh_region = type { i32, i64, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@cfun = common dso_local global %struct.TYPE_13__* null, align 8
@eh_region = common dso_local global i32 0, align 4
@ERT_CLEANUP = common dso_local global i64 0, align 8
@ERT_TRY = common dso_local global i64 0, align 8
@ERT_ALLOWED_EXCEPTIONS = common dso_local global i64 0, align 8
@ptr_mode = common dso_local global i32 0, align 4
@targetm = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@EDGE_FALLTHRU = common dso_local global i32 0, align 4
@REG_BR_PROB_BASE = common dso_local global i32 0, align 4
@HAVE_exception_receiver = common dso_local global i64 0, align 8
@HAVE_nonlocal_goto_receiver = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dw2_build_landing_pads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw2_build_landing_pads() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.eh_region*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cfun, align 8
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %1, align 4
  br label %11

11:                                               ; preds = %100, %0
  %12 = load i32, i32* %1, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %103

14:                                               ; preds = %11
  %15 = load i32, i32* @eh_region, align 4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cfun, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %1, align 4
  %22 = call %struct.eh_region* @VEC_index(i32 %15, i32 %20, i32 %21)
  store %struct.eh_region* %22, %struct.eh_region** %2, align 8
  %23 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %24 = icmp ne %struct.eh_region* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %14
  %26 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %27 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %1, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %14
  br label %100

32:                                               ; preds = %25
  %33 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %34 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ERT_CLEANUP, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %40 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ERT_TRY, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %46 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ERT_ALLOWED_EXCEPTIONS, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %100

51:                                               ; preds = %44, %38, %32
  %52 = call i32 (...) @start_sequence()
  %53 = call i32 (...) @gen_label_rtx()
  %54 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %55 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %57 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @emit_label(i32 %58)
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cfun, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @ptr_mode, align 4
  %66 = call i32 @EH_RETURN_DATA_REGNO(i32 0)
  %67 = call i32 @gen_rtx_REG(i32 %65, i32 %66)
  %68 = call i32 @emit_move_insn(i32 %64, i32 %67)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cfun, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @targetm, i32 0, i32 0), align 8
  %75 = call i32 (...) %74()
  %76 = call i32 @EH_RETURN_DATA_REGNO(i32 1)
  %77 = call i32 @gen_rtx_REG(i32 %75, i32 %76)
  %78 = call i32 @emit_move_insn(i32 %73, i32 %77)
  %79 = call i32 (...) @get_insns()
  store i32 %79, i32* %3, align 4
  %80 = call i32 (...) @end_sequence()
  %81 = load i32, i32* %3, align 4
  %82 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %83 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call %struct.TYPE_11__* @emit_to_new_bb_before(i32 %81, i32 %84)
  store %struct.TYPE_11__* %85, %struct.TYPE_11__** %4, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @EDGE_FALLTHRU, align 4
  %91 = call %struct.TYPE_10__* @make_edge(%struct.TYPE_11__* %86, i32 %89, i32 %90)
  store %struct.TYPE_10__* %91, %struct.TYPE_10__** %5, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @REG_BR_PROB_BASE, align 4
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %51, %50, %31
  %101 = load i32, i32* %1, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %1, align 4
  br label %11

103:                                              ; preds = %11
  ret void
}

declare dso_local %struct.eh_region* @VEC_index(i32, i32, i32) #1

declare dso_local i32 @start_sequence(...) #1

declare dso_local i32 @gen_label_rtx(...) #1

declare dso_local i32 @emit_label(i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @EH_RETURN_DATA_REGNO(i32) #1

declare dso_local i32 @get_insns(...) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local %struct.TYPE_11__* @emit_to_new_bb_before(i32, i32) #1

declare dso_local %struct.TYPE_10__* @make_edge(%struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
