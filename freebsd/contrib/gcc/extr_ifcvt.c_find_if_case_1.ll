; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_find_if_case_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_find_if_case_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32, %struct.TYPE_31__*, %struct.TYPE_31__*, %struct.TYPE_29__ }
%struct.TYPE_29__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_31__* }
%struct.TYPE_32__ = type { i32 }

@REG_CROSSING_JUMP = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@EDGE_COMPLEX = common dso_local global i32 0, align 4
@EDGE_FALLTHRU = common dso_local global i32 0, align 4
@num_possible_if_blocks = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"\0AIF-CASE-1 found, start %d, then %d\0A\00", align 1
@BRANCH_COST = common dso_local global i32 0, align 4
@EXIT_BLOCK_PTR = common dso_local global %struct.TYPE_31__* null, align 8
@num_true_changes = common dso_local global i32 0, align 4
@num_updated_if_blocks = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_31__*, %struct.TYPE_30__*, %struct.TYPE_30__*)* @find_if_case_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_if_case_1(%struct.TYPE_31__* %0, %struct.TYPE_30__* %1, %struct.TYPE_30__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca %struct.TYPE_31__*, align 8
  %9 = alloca %struct.TYPE_31__*, align 8
  %10 = alloca %struct.TYPE_31__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %5, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %6, align 8
  store %struct.TYPE_30__* %2, %struct.TYPE_30__** %7, align 8
  %12 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  store %struct.TYPE_31__* %14, %struct.TYPE_31__** %8, align 8
  %15 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  store %struct.TYPE_31__* %17, %struct.TYPE_31__** %9, align 8
  %18 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %19 = call i64 @BB_END(%struct.TYPE_31__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %23 = call i64 @BB_END(%struct.TYPE_31__* %22)
  %24 = load i32, i32* @REG_CROSSING_JUMP, align 4
  %25 = load i32, i32* @NULL_RTX, align 4
  %26 = call i64 @find_reg_note(i64 %23, i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %50, label %28

28:                                               ; preds = %21, %3
  %29 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %30 = call i64 @BB_END(%struct.TYPE_31__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %34 = call i64 @BB_END(%struct.TYPE_31__* %33)
  %35 = load i32, i32* @REG_CROSSING_JUMP, align 4
  %36 = load i32, i32* @NULL_RTX, align 4
  %37 = call i64 @find_reg_note(i64 %34, i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %32, %28
  %40 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %41 = call i64 @BB_END(%struct.TYPE_31__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %45 = call i64 @BB_END(%struct.TYPE_31__* %44)
  %46 = load i32, i32* @REG_CROSSING_JUMP, align 4
  %47 = load i32, i32* @NULL_RTX, align 4
  %48 = call i64 @find_reg_note(i64 %45, i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43, %32, %21
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %4, align 4
  br label %183

52:                                               ; preds = %43, %39
  %53 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %54 = call i32 @single_succ_p(%struct.TYPE_31__* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %4, align 4
  br label %183

58:                                               ; preds = %52
  %59 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %60 = call %struct.TYPE_32__* @single_succ_edge(%struct.TYPE_31__* %59)
  %61 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @EDGE_COMPLEX, align 4
  %64 = load i32, i32* @EDGE_FALLTHRU, align 4
  %65 = or i32 %63, %64
  %66 = and i32 %62, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = load i32, i32* @FALSE, align 4
  store i32 %69, i32* %4, align 4
  br label %183

70:                                               ; preds = %58
  %71 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %72 = call i32 @single_pred_p(%struct.TYPE_31__* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* @FALSE, align 4
  store i32 %75, i32* %4, align 4
  br label %183

76:                                               ; preds = %70
  %77 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %78 = call i64 @forwarder_block_p(%struct.TYPE_31__* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @FALSE, align 4
  store i32 %81, i32* %4, align 4
  br label %183

82:                                               ; preds = %76
  %83 = load i32, i32* @num_possible_if_blocks, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* @num_possible_if_blocks, align 4
  %85 = load i64, i64* @dump_file, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %82
  %88 = load i64, i64* @dump_file, align 8
  %89 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @fprintf(i64 %88, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %87, %82
  %97 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %98 = load i32, i32* @BRANCH_COST, align 4
  %99 = call i32 @COSTS_N_INSNS(i32 %98)
  %100 = call i32 @cheap_bb_rtx_cost_p(%struct.TYPE_31__* %97, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %96
  %103 = load i32, i32* @FALSE, align 4
  store i32 %103, i32* %4, align 4
  br label %183

104:                                              ; preds = %96
  %105 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %106 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %107 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %108 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %109 = call i32 @single_succ(%struct.TYPE_31__* %108)
  %110 = call i32 @dead_or_predicable(%struct.TYPE_31__* %105, %struct.TYPE_31__* %106, %struct.TYPE_31__* %107, i32 %109, i32 1)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %104
  %113 = load i32, i32* @FALSE, align 4
  store i32 %113, i32* %4, align 4
  br label %183

114:                                              ; preds = %104
  %115 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_28__*, %struct.TYPE_28__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_28__*, %struct.TYPE_28__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @bitmap_ior(i32 %120, i32 %126, i32 %132)
  %134 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_31__*, %struct.TYPE_31__** %135, align 8
  %137 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %138 = icmp eq %struct.TYPE_31__* %136, %137
  br i1 %138, label %139, label %154

139:                                              ; preds = %114
  %140 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_31__*, %struct.TYPE_31__** %141, align 8
  %143 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %144 = icmp eq %struct.TYPE_31__* %142, %143
  br i1 %144, label %145, label %154

145:                                              ; preds = %139
  %146 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %147 = load %struct.TYPE_31__*, %struct.TYPE_31__** @EXIT_BLOCK_PTR, align 8
  %148 = icmp ne %struct.TYPE_31__* %146, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %145
  %150 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %151 = call i32 @FALLTHRU_EDGE(%struct.TYPE_31__* %150)
  %152 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %153 = call i32 @redirect_edge_succ(i32 %151, %struct.TYPE_31__* %152)
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %10, align 8
  br label %159

154:                                              ; preds = %145, %139, %114
  %155 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %156 = call i32 @FALLTHRU_EDGE(%struct.TYPE_31__* %155)
  %157 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %158 = call %struct.TYPE_31__* @redirect_edge_and_branch_force(i32 %156, %struct.TYPE_31__* %157)
  store %struct.TYPE_31__* %158, %struct.TYPE_31__** %10, align 8
  br label %159

159:                                              ; preds = %154, %149
  %160 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  store i32 %162, i32* %11, align 4
  %163 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %164 = call i32 @delete_basic_block(%struct.TYPE_31__* %163)
  %165 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %166 = icmp ne %struct.TYPE_31__* %165, null
  br i1 %166, label %167, label %177

167:                                              ; preds = %159
  %168 = load i32, i32* %11, align 4
  %169 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  %171 = load i32, i32* %11, align 4
  %172 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %173 = call i32 @SET_BASIC_BLOCK(i32 %171, %struct.TYPE_31__* %172)
  %174 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %175 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %176 = call i32 @BB_COPY_PARTITION(%struct.TYPE_31__* %174, %struct.TYPE_31__* %175)
  br label %177

177:                                              ; preds = %167, %159
  %178 = load i32, i32* @num_true_changes, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* @num_true_changes, align 4
  %180 = load i32, i32* @num_updated_if_blocks, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* @num_updated_if_blocks, align 4
  %182 = load i32, i32* @TRUE, align 4
  store i32 %182, i32* %4, align 4
  br label %183

183:                                              ; preds = %177, %112, %102, %80, %74, %68, %56, %50
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local i64 @BB_END(%struct.TYPE_31__*) #1

declare dso_local i64 @find_reg_note(i64, i32, i32) #1

declare dso_local i32 @single_succ_p(%struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_32__* @single_succ_edge(%struct.TYPE_31__*) #1

declare dso_local i32 @single_pred_p(%struct.TYPE_31__*) #1

declare dso_local i64 @forwarder_block_p(%struct.TYPE_31__*) #1

declare dso_local i32 @fprintf(i64, i8*, i32, i32) #1

declare dso_local i32 @cheap_bb_rtx_cost_p(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @COSTS_N_INSNS(i32) #1

declare dso_local i32 @dead_or_predicable(%struct.TYPE_31__*, %struct.TYPE_31__*, %struct.TYPE_31__*, i32, i32) #1

declare dso_local i32 @single_succ(%struct.TYPE_31__*) #1

declare dso_local i32 @bitmap_ior(i32, i32, i32) #1

declare dso_local i32 @redirect_edge_succ(i32, %struct.TYPE_31__*) #1

declare dso_local i32 @FALLTHRU_EDGE(%struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_31__* @redirect_edge_and_branch_force(i32, %struct.TYPE_31__*) #1

declare dso_local i32 @delete_basic_block(%struct.TYPE_31__*) #1

declare dso_local i32 @SET_BASIC_BLOCK(i32, %struct.TYPE_31__*) #1

declare dso_local i32 @BB_COPY_PARTITION(%struct.TYPE_31__*, %struct.TYPE_31__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
