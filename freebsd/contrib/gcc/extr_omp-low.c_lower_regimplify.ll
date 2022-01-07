; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_lower_regimplify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_lower_regimplify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.walk_stmt_info = type { i32, i64, i64 }

@is_gimple_lvalue = common dso_local global i32 0, align 4
@fb_lvalue = common dso_local global i32 0, align 4
@is_gimple_val = common dso_local global i32 0, align 4
@fb_rvalue = common dso_local global i32 0, align 4
@is_gimple_formal_tmp_var = common dso_local global i32 0, align 4
@GS_ALL_DONE = common dso_local global i32 0, align 4
@TSI_SAME_STMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, %struct.walk_stmt_info*)* @lower_regimplify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lower_regimplify(i32** %0, %struct.walk_stmt_info* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.walk_stmt_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32** %0, i32*** %3, align 8
  store %struct.walk_stmt_info* %1, %struct.walk_stmt_info** %4, align 8
  store i32* null, i32** %6, align 8
  %7 = load %struct.walk_stmt_info*, %struct.walk_stmt_info** %4, align 8
  %8 = getelementptr inbounds %struct.walk_stmt_info, %struct.walk_stmt_info* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32**, i32*** %3, align 8
  %13 = load i32, i32* @is_gimple_lvalue, align 4
  %14 = load i32, i32* @fb_lvalue, align 4
  %15 = call i32 @gimplify_expr(i32** %12, i32** %6, i32* null, i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  br label %32

16:                                               ; preds = %2
  %17 = load %struct.walk_stmt_info*, %struct.walk_stmt_info** %4, align 8
  %18 = getelementptr inbounds %struct.walk_stmt_info, %struct.walk_stmt_info* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i32**, i32*** %3, align 8
  %23 = load i32, i32* @is_gimple_val, align 4
  %24 = load i32, i32* @fb_rvalue, align 4
  %25 = call i32 @gimplify_expr(i32** %22, i32** %6, i32* null, i32 %23, i32 %24)
  store i32 %25, i32* %5, align 4
  br label %31

26:                                               ; preds = %16
  %27 = load i32**, i32*** %3, align 8
  %28 = load i32, i32* @is_gimple_formal_tmp_var, align 4
  %29 = load i32, i32* @fb_rvalue, align 4
  %30 = call i32 @gimplify_expr(i32** %27, i32** %6, i32* null, i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %26, %21
  br label %32

32:                                               ; preds = %31, %11
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @GS_ALL_DONE, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @gcc_assert(i32 %36)
  %38 = load i32*, i32** %6, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load %struct.walk_stmt_info*, %struct.walk_stmt_info** %4, align 8
  %42 = getelementptr inbounds %struct.walk_stmt_info, %struct.walk_stmt_info* %41, i32 0, i32 0
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* @TSI_SAME_STMT, align 4
  %45 = call i32 @tsi_link_before(i32* %42, i32* %43, i32 %44)
  br label %46

46:                                               ; preds = %40, %32
  ret void
}

declare dso_local i32 @gimplify_expr(i32**, i32**, i32*, i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @tsi_link_before(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
