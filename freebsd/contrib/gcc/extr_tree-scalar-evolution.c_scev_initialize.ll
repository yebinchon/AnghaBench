; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_scev_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_scev_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loops = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@current_loops = common dso_local global %struct.loops* null, align 8
@hash_scev_info = common dso_local global i32 0, align 4
@eq_scev_info = common dso_local global i32 0, align 4
@del_scev_info = common dso_local global i32 0, align 4
@scalar_evolution_info = common dso_local global i32 0, align 4
@already_instantiated = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scev_initialize(%struct.loops* %0) #0 {
  %2 = alloca %struct.loops*, align 8
  %3 = alloca i32, align 4
  store %struct.loops* %0, %struct.loops** %2, align 8
  %4 = load %struct.loops*, %struct.loops** %2, align 8
  store %struct.loops* %4, %struct.loops** @current_loops, align 8
  %5 = load i32, i32* @hash_scev_info, align 4
  %6 = load i32, i32* @eq_scev_info, align 4
  %7 = load i32, i32* @del_scev_info, align 4
  %8 = call i32 @htab_create(i32 100, i32 %5, i32 %6, i32 %7)
  store i32 %8, i32* @scalar_evolution_info, align 4
  %9 = call i32 @BITMAP_ALLOC(i32* null)
  store i32 %9, i32* @already_instantiated, align 4
  %10 = call i32 (...) @initialize_scalar_evolutions_analyzer()
  store i32 1, i32* %3, align 4
  br label %11

11:                                               ; preds = %37, %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.loops*, %struct.loops** %2, align 8
  %14 = getelementptr inbounds %struct.loops, %struct.loops* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %11
  %18 = load %struct.loops*, %struct.loops** %2, align 8
  %19 = getelementptr inbounds %struct.loops, %struct.loops* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %20, i64 %22
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %17
  %27 = load i32, i32* @NULL_TREE, align 4
  %28 = load %struct.loops*, %struct.loops** %2, align 8
  %29 = getelementptr inbounds %struct.loops, %struct.loops* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %30, i64 %32
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %27, i32* %35, align 4
  br label %36

36:                                               ; preds = %26, %17
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %3, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %11

40:                                               ; preds = %11
  ret void
}

declare dso_local i32 @htab_create(i32, i32, i32, i32) #1

declare dso_local i32 @BITMAP_ALLOC(i32*) #1

declare dso_local i32 @initialize_scalar_evolutions_analyzer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
