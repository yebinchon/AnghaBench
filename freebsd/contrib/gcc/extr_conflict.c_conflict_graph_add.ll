; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_conflict.c_conflict_graph_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_conflict.c_conflict_graph_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__**, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.conflict_graph_arc_def = type { i32, i32 }

@INSERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @conflict_graph_add(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.conflict_graph_arc_def, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i8**, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @MIN(i32 %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @MAX(i32 %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @gcc_assert(i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = getelementptr inbounds %struct.conflict_graph_arc_def, %struct.conflict_graph_arc_def* %10, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %9, align 4
  %27 = getelementptr inbounds %struct.conflict_graph_arc_def, %struct.conflict_graph_arc_def* %10, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = bitcast %struct.conflict_graph_arc_def* %10 to i8*
  %32 = load i32, i32* @INSERT, align 4
  %33 = call i8** @htab_find_slot(i32 %30, i8* %31, i32 %32)
  store i8** %33, i8*** %12, align 8
  %34 = load i8**, i8*** %12, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %83

38:                                               ; preds = %3
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = call %struct.TYPE_5__* @obstack_alloc(i32* %40, i32 8)
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %11, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %50, i64 %52
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  store %struct.TYPE_5__* %54, %struct.TYPE_5__** %56, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %60, i64 %62
  store %struct.TYPE_5__* %57, %struct.TYPE_5__** %63, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %66, i64 %68
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  store %struct.TYPE_5__* %70, %struct.TYPE_5__** %72, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %76, i64 %78
  store %struct.TYPE_5__* %73, %struct.TYPE_5__** %79, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %81 = bitcast %struct.TYPE_5__* %80 to i8*
  %82 = load i8**, i8*** %12, align 8
  store i8* %81, i8** %82, align 8
  store i32 1, i32* %4, align 4
  br label %83

83:                                               ; preds = %38, %37
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i8** @htab_find_slot(i32, i8*, i32) #1

declare dso_local %struct.TYPE_5__* @obstack_alloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
