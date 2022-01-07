; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfghooks.c_create_basic_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfghooks.c_create_basic_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i8*, i8*, i32)*, i32 }

@cfg_hooks = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"%s does not support create_basic_block\00", align 1
@dom_computed = common dso_local global i64* null, align 8
@CDI_DOMINATORS = common dso_local global i64 0, align 8
@CDI_POST_DOMINATORS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_basic_block(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg_hooks, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %9, align 8
  %11 = icmp ne i32 (i8*, i8*, i32)* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg_hooks, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @internal_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %12, %3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg_hooks, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %19, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 %20(i8* %21, i8* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i64*, i64** @dom_computed, align 8
  %26 = load i64, i64* @CDI_DOMINATORS, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %17
  %31 = load i64, i64* @CDI_DOMINATORS, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @add_to_dominance_info(i64 %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %17
  %35 = load i64*, i64** @dom_computed, align 8
  %36 = load i64, i64* @CDI_POST_DOMINATORS, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i64, i64* @CDI_POST_DOMINATORS, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @add_to_dominance_info(i64 %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %34
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local i32 @internal_error(i8*, i32) #1

declare dso_local i32 @add_to_dominance_info(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
