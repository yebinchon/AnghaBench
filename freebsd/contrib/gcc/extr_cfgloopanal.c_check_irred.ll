; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloopanal.c_check_irred.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloopanal.c_check_irred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.graph = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.edge = type { i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@EDGE_IRREDUCIBLE_LOOP = common dso_local global i32 0, align 4
@BB_IRREDUCIBLE_LOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.graph*, %struct.edge*)* @check_irred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_irred(%struct.graph* %0, %struct.edge* %1) #0 {
  %3 = alloca %struct.graph*, align 8
  %4 = alloca %struct.edge*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  store %struct.graph* %0, %struct.graph** %3, align 8
  store %struct.edge* %1, %struct.edge** %4, align 8
  %6 = load %struct.edge*, %struct.edge** %4, align 8
  %7 = getelementptr inbounds %struct.edge, %struct.edge* %6, i32 0, i32 2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %5, align 8
  %9 = load %struct.graph*, %struct.graph** %3, align 8
  %10 = getelementptr inbounds %struct.graph, %struct.graph* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = load %struct.edge*, %struct.edge** %4, align 8
  %13 = getelementptr inbounds %struct.edge, %struct.edge* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.graph*, %struct.graph** %3, align 8
  %19 = getelementptr inbounds %struct.graph, %struct.graph* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load %struct.edge*, %struct.edge** %4, align 8
  %22 = getelementptr inbounds %struct.edge, %struct.edge* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %17, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @gcc_assert(i32 %28)
  %30 = load %struct.graph*, %struct.graph** %3, align 8
  %31 = getelementptr inbounds %struct.graph, %struct.graph* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load %struct.edge*, %struct.edge** %4, align 8
  %34 = getelementptr inbounds %struct.edge, %struct.edge* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.graph*, %struct.graph** %3, align 8
  %40 = getelementptr inbounds %struct.graph, %struct.graph* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load %struct.edge*, %struct.edge** %4, align 8
  %43 = getelementptr inbounds %struct.edge, %struct.edge* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %38, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %2
  br label %74

50:                                               ; preds = %2
  %51 = load i32, i32* @EDGE_IRREDUCIBLE_LOOP, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @flow_bb_inside_loop_p(i32 %60, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %50
  %67 = load i32, i32* @BB_IRREDUCIBLE_LOOP, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %67
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %49, %66, %50
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @flow_bb_inside_loop_p(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
