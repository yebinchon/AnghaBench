; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-outof-ssa.c_rewrite_out_of_ssa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-outof-ssa.c_rewrite_out_of_ssa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flag_tree_live_range_split = common dso_local global i32 0, align 4
@SSANORM_COALESCE_PARTITIONS = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@flag_tree_ter = common dso_local global i64 0, align 8
@flag_mudflap = common dso_local global i32 0, align 4
@SSA_VAR_MAP_REF_COUNT = common dso_local global i32 0, align 4
@flag_tree_combine_temps = common dso_local global i64 0, align 8
@SSANORM_COMBINE_TEMPS = common dso_local global i32 0, align 4
@SSANORM_PERFORM_TER = common dso_local global i32 0, align 4
@in_ssa_p = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @rewrite_out_of_ssa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rewrite_out_of_ssa() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = call i32 (...) @insert_backedge_copies()
  %5 = load i32, i32* @flag_tree_live_range_split, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @SSANORM_COALESCE_PARTITIONS, align 4
  %9 = load i32, i32* %3, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %7, %0
  %12 = call i32 (...) @eliminate_virtual_phis()
  %13 = load i64, i64* @dump_file, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = load i32, i32* @dump_flags, align 4
  %17 = load i32, i32* @TDF_DETAILS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load i64, i64* @dump_file, align 8
  %22 = load i32, i32* @dump_flags, align 4
  %23 = load i32, i32* @TDF_DETAILS, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = call i32 @dump_tree_cfg(i64 %21, i32 %25)
  br label %27

27:                                               ; preds = %20, %15, %11
  %28 = load i64, i64* @flag_tree_ter, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* @flag_mudflap, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @SSA_VAR_MAP_REF_COUNT, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %30, %27
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @create_ssa_var_map(i32 %36)
  store i32 %37, i32* %1, align 4
  %38 = load i64, i64* @flag_tree_combine_temps, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @SSANORM_COMBINE_TEMPS, align 4
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %35
  %45 = load i64, i64* @flag_tree_ter, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i32, i32* @flag_mudflap, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* @SSANORM_PERFORM_TER, align 4
  %52 = load i32, i32* %3, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %50, %47, %44
  %55 = load i32, i32* %1, align 4
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @remove_ssa_form(i32 %55, i32 %56)
  %58 = load i64, i64* @dump_file, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %54
  %61 = load i32, i32* @dump_flags, align 4
  %62 = load i32, i32* @TDF_DETAILS, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load i64, i64* @dump_file, align 8
  %67 = load i32, i32* @dump_flags, align 4
  %68 = load i32, i32* @TDF_DETAILS, align 4
  %69 = xor i32 %68, -1
  %70 = and i32 %67, %69
  %71 = call i32 @dump_tree_cfg(i64 %66, i32 %70)
  br label %72

72:                                               ; preds = %65, %60, %54
  %73 = load i32, i32* %1, align 4
  %74 = call i32 @delete_var_map(i32 %73)
  store i32 0, i32* @in_ssa_p, align 4
  ret i32 0
}

declare dso_local i32 @insert_backedge_copies(...) #1

declare dso_local i32 @eliminate_virtual_phis(...) #1

declare dso_local i32 @dump_tree_cfg(i64, i32) #1

declare dso_local i32 @create_ssa_var_map(i32) #1

declare dso_local i32 @remove_ssa_form(i32, i32) #1

declare dso_local i32 @delete_var_map(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
