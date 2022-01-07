; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloopanal.c_free_graph.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloopanal.c_free_graph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.graph = type { i32, %struct.graph*, %struct.graph*, %struct.graph* }
%struct.edge = type { i32, %struct.edge*, %struct.edge*, %struct.edge* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.graph*)* @free_graph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_graph(%struct.graph* %0) #0 {
  %2 = alloca %struct.graph*, align 8
  %3 = alloca %struct.edge*, align 8
  %4 = alloca %struct.edge*, align 8
  %5 = alloca i32, align 4
  store %struct.graph* %0, %struct.graph** %2, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %35, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.graph*, %struct.graph** %2, align 8
  %9 = getelementptr inbounds %struct.graph, %struct.graph* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %6
  %13 = load %struct.graph*, %struct.graph** %2, align 8
  %14 = getelementptr inbounds %struct.graph, %struct.graph* %13, i32 0, i32 1
  %15 = load %struct.graph*, %struct.graph** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.graph, %struct.graph* %15, i64 %17
  %19 = getelementptr inbounds %struct.graph, %struct.graph* %18, i32 0, i32 3
  %20 = load %struct.graph*, %struct.graph** %19, align 8
  %21 = bitcast %struct.graph* %20 to %struct.edge*
  store %struct.edge* %21, %struct.edge** %3, align 8
  br label %22

22:                                               ; preds = %32, %12
  %23 = load %struct.edge*, %struct.edge** %3, align 8
  %24 = icmp ne %struct.edge* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load %struct.edge*, %struct.edge** %3, align 8
  %27 = getelementptr inbounds %struct.edge, %struct.edge* %26, i32 0, i32 2
  %28 = load %struct.edge*, %struct.edge** %27, align 8
  store %struct.edge* %28, %struct.edge** %4, align 8
  %29 = load %struct.edge*, %struct.edge** %3, align 8
  %30 = bitcast %struct.edge* %29 to %struct.graph*
  %31 = call i32 @free(%struct.graph* %30)
  br label %32

32:                                               ; preds = %25
  %33 = load %struct.edge*, %struct.edge** %4, align 8
  store %struct.edge* %33, %struct.edge** %3, align 8
  br label %22

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %6

38:                                               ; preds = %6
  %39 = load %struct.graph*, %struct.graph** %2, align 8
  %40 = getelementptr inbounds %struct.graph, %struct.graph* %39, i32 0, i32 1
  %41 = load %struct.graph*, %struct.graph** %40, align 8
  %42 = call i32 @free(%struct.graph* %41)
  %43 = load %struct.graph*, %struct.graph** %2, align 8
  %44 = call i32 @free(%struct.graph* %43)
  ret void
}

declare dso_local i32 @free(%struct.graph*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
