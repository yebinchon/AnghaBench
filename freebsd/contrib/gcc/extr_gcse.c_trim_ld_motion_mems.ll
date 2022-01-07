; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_trim_ld_motion_mems.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_trim_ld_motion_mems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ls_expr = type { i32, %struct.ls_expr*, %struct.expr*, i32, i32 }
%struct.expr = type { i32, %struct.expr* }
%struct.TYPE_2__ = type { i32, %struct.expr** }

@pre_ldst_mems = common dso_local global %struct.ls_expr* null, align 8
@expr_hash_table = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@pre_ldst_table = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @trim_ld_motion_mems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trim_ld_motion_mems() #0 {
  %1 = alloca %struct.ls_expr**, align 8
  %2 = alloca %struct.ls_expr*, align 8
  %3 = alloca %struct.expr*, align 8
  %4 = alloca i32, align 4
  store %struct.ls_expr** @pre_ldst_mems, %struct.ls_expr*** %1, align 8
  %5 = load %struct.ls_expr*, %struct.ls_expr** @pre_ldst_mems, align 8
  store %struct.ls_expr* %5, %struct.ls_expr** %2, align 8
  br label %6

6:                                                ; preds = %72, %0
  %7 = load %struct.ls_expr*, %struct.ls_expr** %2, align 8
  %8 = icmp ne %struct.ls_expr* %7, null
  br i1 %8, label %9, label %73

9:                                                ; preds = %6
  %10 = load %struct.ls_expr*, %struct.ls_expr** %2, align 8
  %11 = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %44, label %14

14:                                               ; preds = %9
  %15 = load %struct.ls_expr*, %struct.ls_expr** %2, align 8
  %16 = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @expr_hash_table, i32 0, i32 0), align 8
  %19 = urem i32 %17, %18
  store i32 %19, i32* %4, align 4
  %20 = load %struct.expr**, %struct.expr*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @expr_hash_table, i32 0, i32 1), align 8
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.expr*, %struct.expr** %20, i64 %22
  %24 = load %struct.expr*, %struct.expr** %23, align 8
  store %struct.expr* %24, %struct.expr** %3, align 8
  br label %25

25:                                               ; preds = %39, %14
  %26 = load %struct.expr*, %struct.expr** %3, align 8
  %27 = icmp ne %struct.expr* %26, null
  br i1 %27, label %28, label %43

28:                                               ; preds = %25
  %29 = load %struct.expr*, %struct.expr** %3, align 8
  %30 = getelementptr inbounds %struct.expr, %struct.expr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ls_expr*, %struct.ls_expr** %2, align 8
  %33 = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @expr_equiv_p(i32 %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %43

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.expr*, %struct.expr** %3, align 8
  %41 = getelementptr inbounds %struct.expr, %struct.expr* %40, i32 0, i32 1
  %42 = load %struct.expr*, %struct.expr** %41, align 8
  store %struct.expr* %42, %struct.expr** %3, align 8
  br label %25

43:                                               ; preds = %37, %25
  br label %45

44:                                               ; preds = %9
  store %struct.expr* null, %struct.expr** %3, align 8
  br label %45

45:                                               ; preds = %44, %43
  %46 = load %struct.expr*, %struct.expr** %3, align 8
  %47 = icmp ne %struct.expr* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load %struct.expr*, %struct.expr** %3, align 8
  %50 = load %struct.ls_expr*, %struct.ls_expr** %2, align 8
  %51 = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %50, i32 0, i32 2
  store %struct.expr* %49, %struct.expr** %51, align 8
  %52 = load %struct.ls_expr*, %struct.ls_expr** %2, align 8
  %53 = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %52, i32 0, i32 1
  store %struct.ls_expr** %53, %struct.ls_expr*** %1, align 8
  %54 = load %struct.ls_expr*, %struct.ls_expr** %2, align 8
  %55 = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %54, i32 0, i32 1
  %56 = load %struct.ls_expr*, %struct.ls_expr** %55, align 8
  store %struct.ls_expr* %56, %struct.ls_expr** %2, align 8
  br label %72

57:                                               ; preds = %45
  %58 = load %struct.ls_expr*, %struct.ls_expr** %2, align 8
  %59 = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %58, i32 0, i32 1
  %60 = load %struct.ls_expr*, %struct.ls_expr** %59, align 8
  %61 = load %struct.ls_expr**, %struct.ls_expr*** %1, align 8
  store %struct.ls_expr* %60, %struct.ls_expr** %61, align 8
  %62 = load i32, i32* @pre_ldst_table, align 4
  %63 = load %struct.ls_expr*, %struct.ls_expr** %2, align 8
  %64 = load %struct.ls_expr*, %struct.ls_expr** %2, align 8
  %65 = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @htab_remove_elt_with_hash(i32 %62, %struct.ls_expr* %63, i32 %66)
  %68 = load %struct.ls_expr*, %struct.ls_expr** %2, align 8
  %69 = call i32 @free_ldst_entry(%struct.ls_expr* %68)
  %70 = load %struct.ls_expr**, %struct.ls_expr*** %1, align 8
  %71 = load %struct.ls_expr*, %struct.ls_expr** %70, align 8
  store %struct.ls_expr* %71, %struct.ls_expr** %2, align 8
  br label %72

72:                                               ; preds = %57, %48
  br label %6

73:                                               ; preds = %6
  %74 = load i64, i64* @dump_file, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load %struct.ls_expr*, %struct.ls_expr** @pre_ldst_mems, align 8
  %78 = icmp ne %struct.ls_expr* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i64, i64* @dump_file, align 8
  %81 = call i32 @print_ldst_list(i64 %80)
  br label %82

82:                                               ; preds = %79, %76, %73
  ret void
}

declare dso_local i64 @expr_equiv_p(i32, i32) #1

declare dso_local i32 @htab_remove_elt_with_hash(i32, %struct.ls_expr*, i32) #1

declare dso_local i32 @free_ldst_entry(%struct.ls_expr*) #1

declare dso_local i32 @print_ldst_list(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
