; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-im.c_force_move_till.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-im.c_force_move_till.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmt_data = type { i32, i32 }

@ARRAY_REF = common dso_local global i64 0, align 8
@SSA_NAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*)* @force_move_till to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @force_move_till(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fmt_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.fmt_data*
  store %struct.fmt_data* %13, %struct.fmt_data** %9, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @TREE_CODE(i32 %14)
  %16 = load i64, i64* @ARRAY_REF, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @array_ref_element_size(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @array_ref_low_bound(i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.fmt_data*, %struct.fmt_data** %9, align 8
  %25 = getelementptr inbounds %struct.fmt_data, %struct.fmt_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.fmt_data*, %struct.fmt_data** %9, align 8
  %28 = getelementptr inbounds %struct.fmt_data, %struct.fmt_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @force_move_till_expr(i32 %23, i32 %26, i32 %29)
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.fmt_data*, %struct.fmt_data** %9, align 8
  %33 = getelementptr inbounds %struct.fmt_data, %struct.fmt_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.fmt_data*, %struct.fmt_data** %9, align 8
  %36 = getelementptr inbounds %struct.fmt_data, %struct.fmt_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @force_move_till_expr(i32 %31, i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %18, %3
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @TREE_CODE(i32 %41)
  %43 = load i64, i64* @SSA_NAME, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 1, i32* %4, align 4
  br label %63

46:                                               ; preds = %39
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @SSA_NAME_DEF_STMT(i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @IS_EMPTY_STMT(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i32 1, i32* %4, align 4
  br label %63

54:                                               ; preds = %46
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.fmt_data*, %struct.fmt_data** %9, align 8
  %57 = getelementptr inbounds %struct.fmt_data, %struct.fmt_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.fmt_data*, %struct.fmt_data** %9, align 8
  %60 = getelementptr inbounds %struct.fmt_data, %struct.fmt_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @set_level(i32 %55, i32 %58, i32 %61)
  store i32 1, i32* %4, align 4
  br label %63

63:                                               ; preds = %54, %53, %45
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @array_ref_element_size(i32) #1

declare dso_local i32 @array_ref_low_bound(i32) #1

declare dso_local i32 @force_move_till_expr(i32, i32, i32) #1

declare dso_local i32 @SSA_NAME_DEF_STMT(i32) #1

declare dso_local i64 @IS_EMPTY_STMT(i32) #1

declare dso_local i32 @set_level(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
