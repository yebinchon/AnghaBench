; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloop.c_flow_loop_tree_node_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloop.c_flow_loop_tree_node_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32, i32*, %struct.loop*, %struct.loop*, %struct.loop* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flow_loop_tree_node_remove(%struct.loop* %0) #0 {
  %2 = alloca %struct.loop*, align 8
  %3 = alloca %struct.loop*, align 8
  %4 = alloca %struct.loop*, align 8
  store %struct.loop* %0, %struct.loop** %2, align 8
  %5 = load %struct.loop*, %struct.loop** %2, align 8
  %6 = getelementptr inbounds %struct.loop, %struct.loop* %5, i32 0, i32 4
  %7 = load %struct.loop*, %struct.loop** %6, align 8
  store %struct.loop* %7, %struct.loop** %4, align 8
  %8 = load %struct.loop*, %struct.loop** %2, align 8
  %9 = getelementptr inbounds %struct.loop, %struct.loop* %8, i32 0, i32 4
  store %struct.loop* null, %struct.loop** %9, align 8
  %10 = load %struct.loop*, %struct.loop** %4, align 8
  %11 = getelementptr inbounds %struct.loop, %struct.loop* %10, i32 0, i32 3
  %12 = load %struct.loop*, %struct.loop** %11, align 8
  %13 = load %struct.loop*, %struct.loop** %2, align 8
  %14 = icmp eq %struct.loop* %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.loop*, %struct.loop** %2, align 8
  %17 = getelementptr inbounds %struct.loop, %struct.loop* %16, i32 0, i32 2
  %18 = load %struct.loop*, %struct.loop** %17, align 8
  %19 = load %struct.loop*, %struct.loop** %4, align 8
  %20 = getelementptr inbounds %struct.loop, %struct.loop* %19, i32 0, i32 3
  store %struct.loop* %18, %struct.loop** %20, align 8
  br label %42

21:                                               ; preds = %1
  %22 = load %struct.loop*, %struct.loop** %4, align 8
  %23 = getelementptr inbounds %struct.loop, %struct.loop* %22, i32 0, i32 3
  %24 = load %struct.loop*, %struct.loop** %23, align 8
  store %struct.loop* %24, %struct.loop** %3, align 8
  br label %25

25:                                               ; preds = %32, %21
  %26 = load %struct.loop*, %struct.loop** %3, align 8
  %27 = getelementptr inbounds %struct.loop, %struct.loop* %26, i32 0, i32 2
  %28 = load %struct.loop*, %struct.loop** %27, align 8
  %29 = load %struct.loop*, %struct.loop** %2, align 8
  %30 = icmp ne %struct.loop* %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.loop*, %struct.loop** %3, align 8
  %34 = getelementptr inbounds %struct.loop, %struct.loop* %33, i32 0, i32 2
  %35 = load %struct.loop*, %struct.loop** %34, align 8
  store %struct.loop* %35, %struct.loop** %3, align 8
  br label %25

36:                                               ; preds = %25
  %37 = load %struct.loop*, %struct.loop** %2, align 8
  %38 = getelementptr inbounds %struct.loop, %struct.loop* %37, i32 0, i32 2
  %39 = load %struct.loop*, %struct.loop** %38, align 8
  %40 = load %struct.loop*, %struct.loop** %3, align 8
  %41 = getelementptr inbounds %struct.loop, %struct.loop* %40, i32 0, i32 2
  store %struct.loop* %39, %struct.loop** %41, align 8
  br label %42

42:                                               ; preds = %36, %15
  %43 = load %struct.loop*, %struct.loop** %2, align 8
  %44 = getelementptr inbounds %struct.loop, %struct.loop* %43, i32 0, i32 0
  store i32 -1, i32* %44, align 8
  %45 = load %struct.loop*, %struct.loop** %2, align 8
  %46 = getelementptr inbounds %struct.loop, %struct.loop* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @free(i32* %47)
  %49 = load %struct.loop*, %struct.loop** %2, align 8
  %50 = getelementptr inbounds %struct.loop, %struct.loop* %49, i32 0, i32 1
  store i32* null, i32** %50, align 8
  ret void
}

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
