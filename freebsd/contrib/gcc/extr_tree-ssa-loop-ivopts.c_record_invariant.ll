; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_record_invariant.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_record_invariant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivopts_data = type { i32, i64, i32 }
%struct.version_info = type { i32, i64, i32 }

@SSA_NAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivopts_data*, i32, i32)* @record_invariant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @record_invariant(%struct.ivopts_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ivopts_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.version_info*, align 8
  store %struct.ivopts_data* %0, %struct.ivopts_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @TREE_CODE(i32 %9)
  %11 = load i64, i64* @SSA_NAME, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @is_gimple_reg(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13, %3
  br label %62

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @SSA_NAME_DEF_STMT(i32 %19)
  %21 = call i64 @bb_for_stmt(i32 %20)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load %struct.ivopts_data*, %struct.ivopts_data** %4, align 8
  %26 = getelementptr inbounds %struct.ivopts_data, %struct.ivopts_data* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @flow_bb_inside_loop_p(i32 %27, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %62

32:                                               ; preds = %24, %18
  %33 = load %struct.ivopts_data*, %struct.ivopts_data** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call %struct.version_info* @name_info(%struct.ivopts_data* %33, i32 %34)
  store %struct.version_info* %35, %struct.version_info** %8, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.version_info*, %struct.version_info** %8, align 8
  %38 = getelementptr inbounds %struct.version_info, %struct.version_info* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.version_info*, %struct.version_info** %8, align 8
  %41 = getelementptr inbounds %struct.version_info, %struct.version_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.version_info*, %struct.version_info** %8, align 8
  %45 = getelementptr inbounds %struct.version_info, %struct.version_info* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %32
  %49 = load %struct.ivopts_data*, %struct.ivopts_data** %4, align 8
  %50 = getelementptr inbounds %struct.ivopts_data, %struct.ivopts_data* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %50, align 8
  %53 = load %struct.version_info*, %struct.version_info** %8, align 8
  %54 = getelementptr inbounds %struct.version_info, %struct.version_info* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %48, %32
  %56 = load %struct.ivopts_data*, %struct.ivopts_data** %4, align 8
  %57 = getelementptr inbounds %struct.ivopts_data, %struct.ivopts_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @SSA_NAME_VERSION(i32 %59)
  %61 = call i32 @bitmap_set_bit(i32 %58, i32 %60)
  br label %62

62:                                               ; preds = %55, %31, %17
  ret void
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @is_gimple_reg(i32) #1

declare dso_local i64 @bb_for_stmt(i32) #1

declare dso_local i32 @SSA_NAME_DEF_STMT(i32) #1

declare dso_local i64 @flow_bb_inside_loop_p(i32, i64) #1

declare dso_local %struct.version_info* @name_info(%struct.ivopts_data*, i32) #1

declare dso_local i32 @bitmap_set_bit(i32, i32) #1

declare dso_local i32 @SSA_NAME_VERSION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
