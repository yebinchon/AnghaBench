; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-dse.c_dse_record_phis.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-dse.c_dse_record_phis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dom_walk_data = type { %struct.dse_global_data*, i32 }
%struct.dse_global_data = type { i32 }
%struct.dse_block_local_data = type { i32 }

@void_p = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dom_walk_data*, i32)* @dse_record_phis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dse_record_phis(%struct.dom_walk_data* %0, i32 %1) #0 {
  %3 = alloca %struct.dom_walk_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dse_block_local_data*, align 8
  %6 = alloca %struct.dse_global_data*, align 8
  %7 = alloca i64, align 8
  store %struct.dom_walk_data* %0, %struct.dom_walk_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @void_p, align 4
  %9 = load %struct.dom_walk_data*, %struct.dom_walk_data** %3, align 8
  %10 = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.dse_block_local_data* @VEC_last(i32 %8, i32 %11)
  store %struct.dse_block_local_data* %12, %struct.dse_block_local_data** %5, align 8
  %13 = load %struct.dom_walk_data*, %struct.dom_walk_data** %3, align 8
  %14 = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %13, i32 0, i32 0
  %15 = load %struct.dse_global_data*, %struct.dse_global_data** %14, align 8
  store %struct.dse_global_data* %15, %struct.dse_global_data** %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @phi_nodes(i32 %16)
  store i64 %17, i64* %7, align 8
  br label %18

18:                                               ; preds = %36, %2
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %18
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @PHI_RESULT(i64 %22)
  %24 = call i32 @is_gimple_reg(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %21
  %27 = load %struct.dse_global_data*, %struct.dse_global_data** %6, align 8
  %28 = getelementptr inbounds %struct.dse_global_data, %struct.dse_global_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dse_block_local_data*, %struct.dse_block_local_data** %5, align 8
  %31 = getelementptr inbounds %struct.dse_block_local_data, %struct.dse_block_local_data* %30, i32 0, i32 0
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @get_stmt_uid(i64 %32)
  %34 = call i32 @record_voperand_set(i32 %29, i32* %31, i32 %33)
  br label %35

35:                                               ; preds = %26, %21
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %7, align 8
  %38 = call i64 @PHI_CHAIN(i64 %37)
  store i64 %38, i64* %7, align 8
  br label %18

39:                                               ; preds = %18
  ret void
}

declare dso_local %struct.dse_block_local_data* @VEC_last(i32, i32) #1

declare dso_local i64 @phi_nodes(i32) #1

declare dso_local i32 @is_gimple_reg(i32) #1

declare dso_local i32 @PHI_RESULT(i64) #1

declare dso_local i32 @record_voperand_set(i32, i32*, i32) #1

declare dso_local i32 @get_stmt_uid(i64) #1

declare dso_local i64 @PHI_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
