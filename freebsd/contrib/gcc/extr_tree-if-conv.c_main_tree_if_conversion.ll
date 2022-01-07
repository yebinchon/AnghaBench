; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-if-conv.c_main_tree_if_conversion.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-if-conv.c_main_tree_if_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.loop** }
%struct.loop = type { i32 }

@current_loops = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @main_tree_if_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @main_tree_if_conversion() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.loop*, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_loops, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %34

8:                                                ; preds = %0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_loops, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %30, %8
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %12
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_loops, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.loop**, %struct.loop*** %18, align 8
  %20 = load i32, i32* %2, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.loop*, %struct.loop** %19, i64 %21
  %23 = load %struct.loop*, %struct.loop** %22, align 8
  store %struct.loop* %23, %struct.loop** %4, align 8
  %24 = load %struct.loop*, %struct.loop** %4, align 8
  %25 = icmp ne %struct.loop* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %16
  br label %30

27:                                               ; preds = %16
  %28 = load %struct.loop*, %struct.loop** %4, align 8
  %29 = call i32 @tree_if_conversion(%struct.loop* %28, i32 1)
  br label %30

30:                                               ; preds = %27, %26
  %31 = load i32, i32* %2, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %2, align 4
  br label %12

33:                                               ; preds = %12
  store i32 0, i32* %1, align 4
  br label %34

34:                                               ; preds = %33, %7
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

declare dso_local i32 @tree_if_conversion(%struct.loop*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
