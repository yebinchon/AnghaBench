; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_tree_try_redirect_by_replacing_jump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_tree_try_redirect_by_replacing_jump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@COND_EXPR = common dso_local global i64 0, align 8
@SWITCH_EXPR = common dso_local global i64 0, align 8
@EDGE_FALLTHRU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (%struct.TYPE_12__*, %struct.TYPE_13__*)* @tree_try_redirect_by_replacing_jump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @tree_try_redirect_by_replacing_jump(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %6, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @EDGE_COUNT(i32 %14)
  %16 = icmp ne i32 %15, 2
  br i1 %16, label %29, label %17

17:                                               ; preds = %2
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %20 = call %struct.TYPE_12__* @EDGE_SUCC(%struct.TYPE_13__* %19, i32 0)
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = icmp eq %struct.TYPE_12__* %20, %21
  %23 = zext i1 %22 to i32
  %24 = call %struct.TYPE_12__* @EDGE_SUCC(%struct.TYPE_13__* %18, i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = icmp ne %struct.TYPE_13__* %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %17, %2
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %59

30:                                               ; preds = %17
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %32 = call i32 @bsi_last(%struct.TYPE_13__* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @bsi_end_p(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %59

37:                                               ; preds = %30
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @bsi_stmt(i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @TREE_CODE(i32 %40)
  %42 = load i64, i64* @COND_EXPR, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %49, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @TREE_CODE(i32 %45)
  %47 = load i64, i64* @SWITCH_EXPR, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %44, %37
  %50 = call i32 @bsi_remove(i32* %7, i32 1)
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %53 = call %struct.TYPE_12__* @ssa_redirect_edge(%struct.TYPE_12__* %51, %struct.TYPE_13__* %52)
  store %struct.TYPE_12__* %53, %struct.TYPE_12__** %4, align 8
  %54 = load i32, i32* @EDGE_FALLTHRU, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_12__* %57, %struct.TYPE_12__** %3, align 8
  br label %59

58:                                               ; preds = %44
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %59

59:                                               ; preds = %58, %49, %36, %29
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  ret %struct.TYPE_12__* %60
}

declare dso_local i32 @EDGE_COUNT(i32) #1

declare dso_local %struct.TYPE_12__* @EDGE_SUCC(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @bsi_last(%struct.TYPE_13__*) #1

declare dso_local i64 @bsi_end_p(i32) #1

declare dso_local i32 @bsi_stmt(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @bsi_remove(i32*, i32) #1

declare dso_local %struct.TYPE_12__* @ssa_redirect_edge(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
