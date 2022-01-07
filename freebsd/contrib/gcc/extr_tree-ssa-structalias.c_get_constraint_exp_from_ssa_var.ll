; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-structalias.c_get_constraint_exp_from_ssa_var.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-structalias.c_get_constraint_exp_from_ssa_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.constraint_expr = type { i64, i64, i32 }
%struct.TYPE_2__ = type { i64 }

@SSA_NAME = common dso_local global i64 0, align 8
@PARM_DECL = common dso_local global i64 0, align 8
@SCALAR = common dso_local global i32 0, align 4
@anything_id = common dso_local global i64 0, align 8
@ADDRESSOF = common dso_local global i32 0, align 4
@readonly_id = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.constraint_expr*, i64)* @get_constraint_exp_from_ssa_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_constraint_exp_from_ssa_var(%struct.constraint_expr* noalias sret %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.constraint_expr, align 8
  store i64 %1, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i64 @SSA_VAR_P(i64 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @DECL_P(i64 %9)
  %11 = icmp ne i64 %10, 0
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i1 [ true, %2 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @gcc_assert(i32 %14)
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @TREE_CODE(i64 %16)
  %18 = load i64, i64* @SSA_NAME, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %12
  %21 = load i64, i64* %3, align 8
  %22 = call i64 @SSA_NAME_VAR(i64 %21)
  %23 = call i64 @TREE_CODE(i64 %22)
  %24 = load i64, i64* @PARM_DECL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load i64, i64* %3, align 8
  %28 = call i64 @SSA_NAME_VAR(i64 %27)
  %29 = call i64 @default_def(i64 %28)
  %30 = load i64, i64* %3, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i64, i64* %3, align 8
  %34 = call i64 @SSA_NAME_VAR(i64 %33)
  call void @get_constraint_exp_from_ssa_var(%struct.constraint_expr* sret %0, i64 %34)
  br label %60

35:                                               ; preds = %26, %20, %12
  %36 = load i32, i32* @SCALAR, align 4
  %37 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %4, i32 0, i32 2
  store i32 %36, i32* %37, align 8
  %38 = load i64, i64* %3, align 8
  %39 = call %struct.TYPE_2__* @get_vi_for_tree(i64 %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %4, i32 0, i32 0
  store i64 %41, i64* %42, align 8
  %43 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %4, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @anything_id, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %35
  %48 = load i64, i64* %3, align 8
  %49 = call i64 @TREE_READONLY(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i32, i32* @ADDRESSOF, align 4
  %53 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %4, i32 0, i32 2
  store i32 %52, i32* %53, align 8
  %54 = load i64, i64* @readonly_id, align 8
  %55 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %4, i32 0, i32 0
  store i64 %54, i64* %55, align 8
  br label %56

56:                                               ; preds = %51, %47, %35
  %57 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %4, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = bitcast %struct.constraint_expr* %0 to i8*
  %59 = bitcast %struct.constraint_expr* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 24, i1 false)
  br label %60

60:                                               ; preds = %56, %32
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @SSA_VAR_P(i64) #1

declare dso_local i64 @DECL_P(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @SSA_NAME_VAR(i64) #1

declare dso_local i64 @default_def(i64) #1

declare dso_local %struct.TYPE_2__* @get_vi_for_tree(i64) #1

declare dso_local i64 @TREE_READONLY(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
