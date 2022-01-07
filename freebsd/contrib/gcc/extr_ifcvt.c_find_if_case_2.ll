; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_find_if_case_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_find_if_case_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_24__* }

@REG_CROSSING_JUMP = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@EDGE_COMPLEX = common dso_local global i32 0, align 4
@NUM_FIXED_BLOCKS = common dso_local global i64 0, align 8
@REG_BR_PROB = common dso_local global i32 0, align 4
@REG_BR_PROB_BASE = common dso_local global i32 0, align 4
@CDI_POST_DOMINATORS = common dso_local global i32 0, align 4
@num_possible_if_blocks = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"\0AIF-CASE-2 found, start %d, else %d\0A\00", align 1
@BRANCH_COST = common dso_local global i32 0, align 4
@num_true_changes = common dso_local global i32 0, align 4
@num_updated_if_blocks = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_23__*)* @find_if_case_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_if_case_2(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1, %struct.TYPE_23__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %7, align 8
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  store %struct.TYPE_24__* %14, %struct.TYPE_24__** %8, align 8
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  store %struct.TYPE_24__* %17, %struct.TYPE_24__** %9, align 8
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %19 = call i64 @BB_END(%struct.TYPE_24__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %23 = call i64 @BB_END(%struct.TYPE_24__* %22)
  %24 = load i32, i32* @REG_CROSSING_JUMP, align 4
  %25 = load i32, i32* @NULL_RTX, align 4
  %26 = call i64 @find_reg_note(i64 %23, i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %50, label %28

28:                                               ; preds = %21, %3
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %30 = call i64 @BB_END(%struct.TYPE_24__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %34 = call i64 @BB_END(%struct.TYPE_24__* %33)
  %35 = load i32, i32* @REG_CROSSING_JUMP, align 4
  %36 = load i32, i32* @NULL_RTX, align 4
  %37 = call i64 @find_reg_note(i64 %34, i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %32, %28
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %41 = call i64 @BB_END(%struct.TYPE_24__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %45 = call i64 @BB_END(%struct.TYPE_24__* %44)
  %46 = load i32, i32* @REG_CROSSING_JUMP, align 4
  %47 = load i32, i32* @NULL_RTX, align 4
  %48 = call i64 @find_reg_note(i64 %45, i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43, %32, %21
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %4, align 4
  br label %180

52:                                               ; preds = %43, %39
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %54 = call i32 @single_succ_p(%struct.TYPE_24__* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %4, align 4
  br label %180

58:                                               ; preds = %52
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %60 = call %struct.TYPE_23__* @single_succ_edge(%struct.TYPE_24__* %59)
  store %struct.TYPE_23__* %60, %struct.TYPE_23__** %10, align 8
  br label %61

61:                                               ; preds = %58
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @EDGE_COMPLEX, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* @FALSE, align 4
  store i32 %69, i32* %4, align 4
  br label %180

70:                                               ; preds = %61
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %72 = call i32 @single_pred_p(%struct.TYPE_24__* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* @FALSE, align 4
  store i32 %75, i32* %4, align 4
  br label %180

76:                                               ; preds = %70
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @NUM_FIXED_BLOCKS, align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i32, i32* @FALSE, align 4
  store i32 %83, i32* %4, align 4
  br label %180

84:                                               ; preds = %76
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %86 = call i64 @BB_END(%struct.TYPE_24__* %85)
  %87 = load i32, i32* @REG_BR_PROB, align 4
  %88 = load i32, i32* @NULL_RTX, align 4
  %89 = call i64 @find_reg_note(i64 %86, i32 %87, i32 %88)
  store i64 %89, i64* %11, align 8
  %90 = load i64, i64* %11, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %84
  %93 = load i64, i64* %11, align 8
  %94 = call i32 @XEXP(i64 %93, i32 0)
  %95 = call i32 @INTVAL(i32 %94)
  %96 = load i32, i32* @REG_BR_PROB_BASE, align 4
  %97 = sdiv i32 %96, 2
  %98 = icmp sge i32 %95, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %120

100:                                              ; preds = %92, %84
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @NUM_FIXED_BLOCKS, align 8
  %107 = icmp slt i64 %105, %106
  br i1 %107, label %116, label %108

108:                                              ; preds = %100
  %109 = load i32, i32* @CDI_POST_DOMINATORS, align 4
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %112, align 8
  %114 = call i64 @dominated_by_p(i32 %109, %struct.TYPE_24__* %110, %struct.TYPE_24__* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %108, %100
  br label %119

117:                                              ; preds = %108
  %118 = load i32, i32* @FALSE, align 4
  store i32 %118, i32* %4, align 4
  br label %180

119:                                              ; preds = %116
  br label %120

120:                                              ; preds = %119, %99
  %121 = load i32, i32* @num_possible_if_blocks, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* @num_possible_if_blocks, align 4
  %123 = load i64, i64* @dump_file, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %120
  %126 = load i64, i64* @dump_file, align 8
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @fprintf(i64 %126, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %129, i64 %132)
  br label %134

134:                                              ; preds = %125, %120
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %136 = load i32, i32* @BRANCH_COST, align 4
  %137 = call i32 @COSTS_N_INSNS(i32 %136)
  %138 = call i32 @cheap_bb_rtx_cost_p(%struct.TYPE_24__* %135, i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %134
  %141 = load i32, i32* @FALSE, align 4
  store i32 %141, i32* %4, align 4
  br label %180

142:                                              ; preds = %134
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_24__*, %struct.TYPE_24__** %147, align 8
  %149 = call i32 @dead_or_predicable(%struct.TYPE_24__* %143, %struct.TYPE_24__* %144, %struct.TYPE_24__* %145, %struct.TYPE_24__* %148, i32 0)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %142
  %152 = load i32, i32* @FALSE, align 4
  store i32 %152, i32* %4, align 4
  br label %180

153:                                              ; preds = %142
  %154 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @bitmap_ior(i32 %159, i32 %165, i32 %171)
  %173 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %174 = call i32 @delete_basic_block(%struct.TYPE_24__* %173)
  %175 = load i32, i32* @num_true_changes, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* @num_true_changes, align 4
  %177 = load i32, i32* @num_updated_if_blocks, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* @num_updated_if_blocks, align 4
  %179 = load i32, i32* @TRUE, align 4
  store i32 %179, i32* %4, align 4
  br label %180

180:                                              ; preds = %153, %151, %140, %117, %82, %74, %68, %56, %50
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local i64 @BB_END(%struct.TYPE_24__*) #1

declare dso_local i64 @find_reg_note(i64, i32, i32) #1

declare dso_local i32 @single_succ_p(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_23__* @single_succ_edge(%struct.TYPE_24__*) #1

declare dso_local i32 @single_pred_p(%struct.TYPE_24__*) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @XEXP(i64, i32) #1

declare dso_local i64 @dominated_by_p(i32, %struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i32 @fprintf(i64, i8*, i64, i64) #1

declare dso_local i32 @cheap_bb_rtx_cost_p(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @COSTS_N_INSNS(i32) #1

declare dso_local i32 @dead_or_predicable(%struct.TYPE_24__*, %struct.TYPE_24__*, %struct.TYPE_24__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @bitmap_ior(i32, i32, i32) #1

declare dso_local i32 @delete_basic_block(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
