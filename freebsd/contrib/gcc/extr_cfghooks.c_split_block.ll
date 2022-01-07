; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfghooks.c_split_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfghooks.c_split_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__* (%struct.TYPE_13__*, i8*)*, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }

@cfg_hooks = common dso_local global %struct.TYPE_12__* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"%s does not support split_block\00", align 1
@CDI_DOMINATORS = common dso_local global i32 0, align 4
@EDGE_FALLTHRU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @split_block(%struct.TYPE_13__* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** @cfg_hooks, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_13__* (%struct.TYPE_13__*, i8*)*, %struct.TYPE_13__* (%struct.TYPE_13__*, i8*)** %8, align 8
  %10 = icmp ne %struct.TYPE_13__* (%struct.TYPE_13__*, i8*)* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** @cfg_hooks, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @internal_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %11, %2
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** @cfg_hooks, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_13__* (%struct.TYPE_13__*, i8*)*, %struct.TYPE_13__* (%struct.TYPE_13__*, i8*)** %18, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call %struct.TYPE_13__* %19(%struct.TYPE_13__* %20, i8* %21)
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %6, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %24 = icmp ne %struct.TYPE_13__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  store i32* null, i32** %3, align 8
  br label %59

26:                                               ; preds = %16
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @CDI_DOMINATORS, align 4
  %43 = call i64 @dom_info_available_p(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %26
  %46 = load i32, i32* @CDI_DOMINATORS, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %49 = call i32 @redirect_immediate_dominators(i32 %46, %struct.TYPE_13__* %47, %struct.TYPE_13__* %48)
  %50 = load i32, i32* @CDI_DOMINATORS, align 4
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %53 = call i32 @set_immediate_dominator(i32 %50, %struct.TYPE_13__* %51, %struct.TYPE_13__* %52)
  br label %54

54:                                               ; preds = %45, %26
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %57 = load i32, i32* @EDGE_FALLTHRU, align 4
  %58 = call i32* @make_single_succ_edge(%struct.TYPE_13__* %55, %struct.TYPE_13__* %56, i32 %57)
  store i32* %58, i32** %3, align 8
  br label %59

59:                                               ; preds = %54, %25
  %60 = load i32*, i32** %3, align 8
  ret i32* %60
}

declare dso_local i32 @internal_error(i8*, i32) #1

declare dso_local i64 @dom_info_available_p(i32) #1

declare dso_local i32 @redirect_immediate_dominators(i32, %struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @set_immediate_dominator(i32, %struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32* @make_single_succ_edge(%struct.TYPE_13__*, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
