; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloopanal.c_add_edge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloopanal.c_add_edge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.graph = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.edge*, %struct.edge* }
%struct.edge = type { i32, i32, %struct.edge*, %struct.edge*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.graph*, i32, i32, i8*)* @add_edge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_edge(%struct.graph* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.graph*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.edge*, align 8
  store %struct.graph* %0, %struct.graph** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = call %struct.edge* @xmalloc(i32 32)
  store %struct.edge* %10, %struct.edge** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.edge*, %struct.edge** %9, align 8
  %13 = getelementptr inbounds %struct.edge, %struct.edge* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.edge*, %struct.edge** %9, align 8
  %16 = getelementptr inbounds %struct.edge, %struct.edge* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = load %struct.edge*, %struct.edge** %9, align 8
  %19 = getelementptr inbounds %struct.edge, %struct.edge* %18, i32 0, i32 4
  store i8* %17, i8** %19, align 8
  %20 = load %struct.graph*, %struct.graph** %5, align 8
  %21 = getelementptr inbounds %struct.graph, %struct.graph* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load %struct.edge*, %struct.edge** %26, align 8
  %28 = load %struct.edge*, %struct.edge** %9, align 8
  %29 = getelementptr inbounds %struct.edge, %struct.edge* %28, i32 0, i32 3
  store %struct.edge* %27, %struct.edge** %29, align 8
  %30 = load %struct.edge*, %struct.edge** %9, align 8
  %31 = load %struct.graph*, %struct.graph** %5, align 8
  %32 = getelementptr inbounds %struct.graph, %struct.graph* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store %struct.edge* %30, %struct.edge** %37, align 8
  %38 = load %struct.graph*, %struct.graph** %5, align 8
  %39 = getelementptr inbounds %struct.graph, %struct.graph* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.edge*, %struct.edge** %44, align 8
  %46 = load %struct.edge*, %struct.edge** %9, align 8
  %47 = getelementptr inbounds %struct.edge, %struct.edge* %46, i32 0, i32 2
  store %struct.edge* %45, %struct.edge** %47, align 8
  %48 = load %struct.edge*, %struct.edge** %9, align 8
  %49 = load %struct.graph*, %struct.graph** %5, align 8
  %50 = getelementptr inbounds %struct.graph, %struct.graph* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store %struct.edge* %48, %struct.edge** %55, align 8
  ret void
}

declare dso_local %struct.edge* @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
