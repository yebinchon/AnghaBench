; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgcleanup.c_try_simplify_condjump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgcleanup.c_try_simplify_condjump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_25__* }

@EXIT_BLOCK_PTR = common dso_local global i64 0, align 8
@EDGE_CROSSING = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Simplifying condjump %i around jump %i\0A\00", align 1
@EDGE_FALLTHRU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*)* @try_simplify_condjump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_simplify_condjump(%struct.TYPE_25__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  %10 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @EDGE_COUNT(i32 %12)
  %14 = icmp ne i32 %13, 2
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %119

16:                                               ; preds = %1
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %18 = call i32 @BB_END(%struct.TYPE_25__* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @any_condjump_p(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %119

23:                                               ; preds = %16
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %25 = call %struct.TYPE_24__* @FALLTHRU_EDGE(%struct.TYPE_25__* %24)
  store %struct.TYPE_24__* %25, %struct.TYPE_24__** %8, align 8
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %27 = call %struct.TYPE_24__* @BRANCH_EDGE(%struct.TYPE_25__* %26)
  store %struct.TYPE_24__* %27, %struct.TYPE_24__** %7, align 8
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %29, align 8
  store %struct.TYPE_25__* %30, %struct.TYPE_25__** %4, align 8
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %32 = call i32 @single_pred_p(%struct.TYPE_25__* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %23
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @EXIT_BLOCK_PTR, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %42 = call i32 @FORWARDER_BLOCK_P(%struct.TYPE_25__* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40, %34, %23
  store i32 0, i32* %2, align 4
  br label %119

45:                                               ; preds = %40
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %47 = call %struct.TYPE_25__* @single_succ(%struct.TYPE_25__* %46)
  store %struct.TYPE_25__* %47, %struct.TYPE_25__** %5, align 8
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %49 = call i64 @BB_PARTITION(%struct.TYPE_25__* %48)
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %51 = call i64 @BB_PARTITION(%struct.TYPE_25__* %50)
  %52 = icmp ne i64 %49, %51
  br i1 %52, label %60, label %53

53:                                               ; preds = %45
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @EDGE_CROSSING, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53, %45
  store i32 0, i32* %2, align 4
  br label %119

61:                                               ; preds = %53
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %63, align 8
  store %struct.TYPE_25__* %64, %struct.TYPE_25__** %6, align 8
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %66 = load i64, i64* @EXIT_BLOCK_PTR, align 8
  %67 = inttoptr i64 %66 to %struct.TYPE_25__*
  %68 = icmp eq %struct.TYPE_25__* %65, %67
  br i1 %68, label %74, label %69

69:                                               ; preds = %61
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %72 = call i32 @can_fallthru(%struct.TYPE_25__* %70, %struct.TYPE_25__* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69, %61
  store i32 0, i32* %2, align 4
  br label %119

75:                                               ; preds = %69
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %78 = call i32 @block_label(%struct.TYPE_25__* %77)
  %79 = call i32 @invert_jump(i32 %76, i32 %78, i32 0)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  store i32 0, i32* %2, align 4
  br label %119

82:                                               ; preds = %75
  %83 = load i64, i64* @dump_file, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load i64, i64* @dump_file, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @INSN_UID(i32 %87)
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %90 = call i32 @BB_END(%struct.TYPE_25__* %89)
  %91 = call i32 @INSN_UID(i32 %90)
  %92 = call i32 @fprintf(i64 %86, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %91)
  br label %93

93:                                               ; preds = %85, %82
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %96 = call %struct.TYPE_24__* @redirect_edge_succ_nodup(%struct.TYPE_24__* %94, %struct.TYPE_25__* %95)
  store %struct.TYPE_24__* %96, %struct.TYPE_24__** %7, align 8
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %99 = call %struct.TYPE_24__* @redirect_edge_succ_nodup(%struct.TYPE_24__* %97, %struct.TYPE_25__* %98)
  store %struct.TYPE_24__* %99, %struct.TYPE_24__** %8, align 8
  %100 = load i32, i32* @EDGE_FALLTHRU, align 4
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = load i32, i32* @EDGE_FALLTHRU, align 4
  %106 = xor i32 %105, -1
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %112 = call i32 @update_br_prob_note(%struct.TYPE_25__* %111)
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %114 = call i32 @delete_basic_block(%struct.TYPE_25__* %113)
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %116 = call i32 @tidy_fallthru_edge(%struct.TYPE_24__* %115)
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %118 = call i32 @update_forwarder_flag(%struct.TYPE_25__* %117)
  store i32 1, i32* %2, align 4
  br label %119

119:                                              ; preds = %93, %81, %74, %60, %44, %22, %15
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @EDGE_COUNT(i32) #1

declare dso_local i32 @BB_END(%struct.TYPE_25__*) #1

declare dso_local i32 @any_condjump_p(i32) #1

declare dso_local %struct.TYPE_24__* @FALLTHRU_EDGE(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_24__* @BRANCH_EDGE(%struct.TYPE_25__*) #1

declare dso_local i32 @single_pred_p(%struct.TYPE_25__*) #1

declare dso_local i32 @FORWARDER_BLOCK_P(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_25__* @single_succ(%struct.TYPE_25__*) #1

declare dso_local i64 @BB_PARTITION(%struct.TYPE_25__*) #1

declare dso_local i32 @can_fallthru(%struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i32 @invert_jump(i32, i32, i32) #1

declare dso_local i32 @block_label(%struct.TYPE_25__*) #1

declare dso_local i32 @fprintf(i64, i8*, i32, i32) #1

declare dso_local i32 @INSN_UID(i32) #1

declare dso_local %struct.TYPE_24__* @redirect_edge_succ_nodup(%struct.TYPE_24__*, %struct.TYPE_25__*) #1

declare dso_local i32 @update_br_prob_note(%struct.TYPE_25__*) #1

declare dso_local i32 @delete_basic_block(%struct.TYPE_25__*) #1

declare dso_local i32 @tidy_fallthru_edge(%struct.TYPE_24__*) #1

declare dso_local i32 @update_forwarder_flag(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
