; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloopmanip.c_unloop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloopmanip.c_unloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loops = type { i32** }
%struct.loop = type { i32, i64, i32, %struct.loop*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.loop* }
%struct.TYPE_10__ = type { i32 }

@EDGE_IRREDUCIBLE_LOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.loops*, %struct.loop*, i32*)* @unloop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unloop(%struct.loops* %0, %struct.loop* %1, i32* %2) #0 {
  %4 = alloca %struct.loops*, align 8
  %5 = alloca %struct.loop*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__**, align 8
  %8 = alloca %struct.loop*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  store %struct.loops* %0, %struct.loops** %4, align 8
  store %struct.loop* %1, %struct.loop** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.loop*, %struct.loop** %5, align 8
  %14 = getelementptr inbounds %struct.loop, %struct.loop* %13, i32 0, i32 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %11, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.loop*, %struct.loop** %5, align 8
  %17 = call %struct.TYPE_10__* @loop_preheader_edge(%struct.loop* %16)
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @EDGE_IRREDUCIBLE_LOOP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32*, i32** %6, align 8
  store i32 1, i32* %24, align 4
  br label %25

25:                                               ; preds = %23, %3
  %26 = load %struct.loop*, %struct.loop** %5, align 8
  %27 = call %struct.TYPE_9__** @get_loop_body(%struct.loop* %26)
  store %struct.TYPE_9__** %27, %struct.TYPE_9__*** %7, align 8
  %28 = load %struct.loop*, %struct.loop** %5, align 8
  %29 = getelementptr inbounds %struct.loop, %struct.loop* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %62, %25
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %65

35:                                               ; preds = %31
  %36 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %37 = load i32, i32* %9, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %36, i64 %38
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load %struct.loop*, %struct.loop** %41, align 8
  %43 = load %struct.loop*, %struct.loop** %5, align 8
  %44 = icmp eq %struct.loop* %42, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %35
  %46 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %47 = load i32, i32* %9, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %46, i64 %48
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = call i32 @remove_bb_from_loops(%struct.TYPE_9__* %50)
  %52 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %53 = load i32, i32* %9, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %52, i64 %54
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = load %struct.loop*, %struct.loop** %5, align 8
  %58 = getelementptr inbounds %struct.loop, %struct.loop* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @add_bb_to_loop(%struct.TYPE_9__* %56, i32 %59)
  br label %61

61:                                               ; preds = %45, %35
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %9, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %31

65:                                               ; preds = %31
  %66 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %67 = call i32 @free(%struct.TYPE_9__** %66)
  br label %68

68:                                               ; preds = %73, %65
  %69 = load %struct.loop*, %struct.loop** %5, align 8
  %70 = getelementptr inbounds %struct.loop, %struct.loop* %69, i32 0, i32 3
  %71 = load %struct.loop*, %struct.loop** %70, align 8
  %72 = icmp ne %struct.loop* %71, null
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = load %struct.loop*, %struct.loop** %5, align 8
  %75 = getelementptr inbounds %struct.loop, %struct.loop* %74, i32 0, i32 3
  %76 = load %struct.loop*, %struct.loop** %75, align 8
  store %struct.loop* %76, %struct.loop** %8, align 8
  %77 = load %struct.loop*, %struct.loop** %8, align 8
  %78 = call i32 @flow_loop_tree_node_remove(%struct.loop* %77)
  %79 = load %struct.loop*, %struct.loop** %5, align 8
  %80 = getelementptr inbounds %struct.loop, %struct.loop* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.loop*, %struct.loop** %8, align 8
  %83 = call i32 @flow_loop_tree_node_add(i32 %81, %struct.loop* %82)
  br label %68

84:                                               ; preds = %68
  %85 = load %struct.loop*, %struct.loop** %5, align 8
  %86 = call i32 @flow_loop_tree_node_remove(%struct.loop* %85)
  %87 = load %struct.loops*, %struct.loops** %4, align 8
  %88 = getelementptr inbounds %struct.loops, %struct.loops* %87, i32 0, i32 0
  %89 = load i32**, i32*** %88, align 8
  %90 = load %struct.loop*, %struct.loop** %5, align 8
  %91 = getelementptr inbounds %struct.loop, %struct.loop* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds i32*, i32** %89, i64 %92
  store i32* null, i32** %93, align 8
  %94 = load %struct.loop*, %struct.loop** %5, align 8
  %95 = call i32 @flow_loop_free(%struct.loop* %94)
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %97 = call i32 @single_succ_edge(%struct.TYPE_9__* %96)
  %98 = call i32 @remove_edge(i32 %97)
  %99 = load %struct.loops*, %struct.loops** %4, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %101 = call i32 @fix_bb_placements(%struct.loops* %99, %struct.TYPE_9__* %100, i32* %12)
  ret void
}

declare dso_local %struct.TYPE_10__* @loop_preheader_edge(%struct.loop*) #1

declare dso_local %struct.TYPE_9__** @get_loop_body(%struct.loop*) #1

declare dso_local i32 @remove_bb_from_loops(%struct.TYPE_9__*) #1

declare dso_local i32 @add_bb_to_loop(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_9__**) #1

declare dso_local i32 @flow_loop_tree_node_remove(%struct.loop*) #1

declare dso_local i32 @flow_loop_tree_node_add(i32, %struct.loop*) #1

declare dso_local i32 @flow_loop_free(%struct.loop*) #1

declare dso_local i32 @remove_edge(i32) #1

declare dso_local i32 @single_succ_edge(%struct.TYPE_9__*) #1

declare dso_local i32 @fix_bb_placements(%struct.loops*, %struct.TYPE_9__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
