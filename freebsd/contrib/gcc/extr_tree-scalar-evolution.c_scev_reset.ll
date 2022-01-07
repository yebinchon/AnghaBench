; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_scev_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_scev_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.loop** }
%struct.loop = type { i32 }

@scalar_evolution_info = common dso_local global i32 0, align 4
@current_loops = common dso_local global %struct.TYPE_2__* null, align 8
@NULL_TREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scev_reset() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.loop*, align 8
  %3 = load i32, i32* @scalar_evolution_info, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_loops, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %5, %0
  br label %36

9:                                                ; preds = %5
  %10 = load i32, i32* @scalar_evolution_info, align 4
  %11 = call i32 @htab_empty(i32 %10)
  store i32 1, i32* %1, align 4
  br label %12

12:                                               ; preds = %33, %9
  %13 = load i32, i32* %1, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_loops, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %12
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_loops, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.loop**, %struct.loop*** %20, align 8
  %22 = load i32, i32* %1, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.loop*, %struct.loop** %21, i64 %23
  %25 = load %struct.loop*, %struct.loop** %24, align 8
  store %struct.loop* %25, %struct.loop** %2, align 8
  %26 = load %struct.loop*, %struct.loop** %2, align 8
  %27 = icmp ne %struct.loop* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = load i32, i32* @NULL_TREE, align 4
  %30 = load %struct.loop*, %struct.loop** %2, align 8
  %31 = getelementptr inbounds %struct.loop, %struct.loop* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %28, %18
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %1, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %1, align 4
  br label %12

36:                                               ; preds = %8, %12
  ret void
}

declare dso_local i32 @htab_empty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
