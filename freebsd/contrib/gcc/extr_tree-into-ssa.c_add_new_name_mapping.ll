; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-into-ssa.c_add_new_name_mapping.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-into-ssa.c_add_new_name_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@TV_TREE_SSA_INCREMENTAL = common dso_local global i32 0, align 4
@new_ssa_names = common dso_local global %struct.TYPE_8__* null, align 8
@num_ssa_names = common dso_local global i32 0, align 4
@NAME_SETS_GROWTH_FACTOR = common dso_local global i32 0, align 4
@old_ssa_names = common dso_local global %struct.TYPE_8__* null, align 8
@need_to_update_vops_p = common dso_local global i32 0, align 4
@update_ssa_stats = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @add_new_name_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_new_name_mapping(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32, i32* @TV_TREE_SSA_INCREMENTAL, align 4
  %9 = call i32 @timevar_push(i32 %8)
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @SSA_NAME_VAR(i64 %14)
  %16 = load i64, i64* %4, align 8
  %17 = call i64 @SSA_NAME_VAR(i64 %16)
  %18 = icmp eq i64 %15, %17
  br label %19

19:                                               ; preds = %13, %2
  %20 = phi i1 [ false, %2 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @gcc_assert(i32 %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** @new_ssa_names, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @num_ssa_names, align 4
  %27 = sub nsw i32 %26, 1
  %28 = icmp sle i32 %25, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %19
  %30 = load i32, i32* @num_ssa_names, align 4
  %31 = load i32, i32* @NAME_SETS_GROWTH_FACTOR, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %5, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** @new_ssa_names, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call %struct.TYPE_8__* @sbitmap_resize(%struct.TYPE_8__* %33, i32 %34, i32 0)
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** @new_ssa_names, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @old_ssa_names, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call %struct.TYPE_8__* @sbitmap_resize(%struct.TYPE_8__* %36, i32 %37, i32 0)
  store %struct.TYPE_8__* %38, %struct.TYPE_8__** @old_ssa_names, align 8
  br label %39

39:                                               ; preds = %29, %19
  %40 = load i64, i64* %3, align 8
  %41 = call i32 @is_gimple_reg(i64 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %61, label %43

43:                                               ; preds = %39
  store i32 1, i32* @need_to_update_vops_p, align 4
  %44 = load i64, i64* %3, align 8
  %45 = call i64 @SSA_NAME_VAR(i64 %44)
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i64 @DECL_UID(i64 %46)
  store i64 %47, i64* %7, align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @update_ssa_stats, i32 0, i32 3), align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @update_ssa_stats, i32 0, i32 3), align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @update_ssa_stats, i32 0, i32 2), align 4
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @bitmap_bit_p(i32 %50, i64 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %43
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @update_ssa_stats, i32 0, i32 2), align 4
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @bitmap_set_bit(i32 %55, i64 %56)
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @update_ssa_stats, i32 0, i32 1), align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @update_ssa_stats, i32 0, i32 1), align 4
  br label %60

60:                                               ; preds = %54, %43
  br label %61

61:                                               ; preds = %60, %39
  %62 = load i64, i64* %3, align 8
  %63 = load i64, i64* %4, align 8
  %64 = call i32 @add_to_repl_tbl(i64 %62, i64 %63)
  %65 = load i64, i64* %4, align 8
  %66 = call i64 @is_new_name(i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load i64, i64* %3, align 8
  %70 = call i32 @names_replaced_by(i64 %69)
  %71 = load i64, i64* %4, align 8
  %72 = call i32 @names_replaced_by(i64 %71)
  %73 = call i32 @bitmap_ior_into(i32 %70, i32 %72)
  br label %74

74:                                               ; preds = %68, %61
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** @new_ssa_names, align 8
  %76 = load i64, i64* %3, align 8
  %77 = call i32 @SSA_NAME_VERSION(i64 %76)
  %78 = call i32 @SET_BIT(%struct.TYPE_8__* %75, i32 %77)
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** @old_ssa_names, align 8
  %80 = load i64, i64* %4, align 8
  %81 = call i32 @SSA_NAME_VERSION(i64 %80)
  %82 = call i32 @SET_BIT(%struct.TYPE_8__* %79, i32 %81)
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @update_ssa_stats, i32 0, i32 0), align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @update_ssa_stats, i32 0, i32 0), align 4
  %85 = load i32, i32* @TV_TREE_SSA_INCREMENTAL, align 4
  %86 = call i32 @timevar_pop(i32 %85)
  ret void
}

declare dso_local i32 @timevar_push(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @SSA_NAME_VAR(i64) #1

declare dso_local %struct.TYPE_8__* @sbitmap_resize(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @is_gimple_reg(i64) #1

declare dso_local i64 @DECL_UID(i64) #1

declare dso_local i32 @bitmap_bit_p(i32, i64) #1

declare dso_local i32 @bitmap_set_bit(i32, i64) #1

declare dso_local i32 @add_to_repl_tbl(i64, i64) #1

declare dso_local i64 @is_new_name(i64) #1

declare dso_local i32 @bitmap_ior_into(i32, i32) #1

declare dso_local i32 @names_replaced_by(i64) #1

declare dso_local i32 @SET_BIT(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @SSA_NAME_VERSION(i64) #1

declare dso_local i32 @timevar_pop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
