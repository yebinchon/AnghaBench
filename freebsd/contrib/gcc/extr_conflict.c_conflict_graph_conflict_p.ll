; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_conflict.c_conflict_graph_conflict_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_conflict.c_conflict_graph_conflict_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.conflict_graph_arc_def = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @conflict_graph_conflict_p(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.conflict_graph_arc_def, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @MIN(i32 %8, i32 %9)
  %11 = getelementptr inbounds %struct.conflict_graph_arc_def, %struct.conflict_graph_arc_def* %7, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @MAX(i32 %12, i32 %13)
  %15 = getelementptr inbounds %struct.conflict_graph_arc_def, %struct.conflict_graph_arc_def* %7, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = bitcast %struct.conflict_graph_arc_def* %7 to i8*
  %20 = call i32* @htab_find(i32 %18, i8* %19)
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  ret i32 %22
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32* @htab_find(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
