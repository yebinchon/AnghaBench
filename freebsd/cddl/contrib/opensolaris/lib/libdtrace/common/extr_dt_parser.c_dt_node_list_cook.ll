; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_node_list_cook.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_node_list_cook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__*, i32 }

@_dtrace_defattr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dt_node_list_cook(%struct.TYPE_5__** %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @_dtrace_defattr, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %10 = icmp ne %struct.TYPE_5__** %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  br label %15

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %11
  %16 = phi %struct.TYPE_5__* [ %13, %11 ], [ null, %14 ]
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %6, align 8
  br label %17

17:                                               ; preds = %38, %15
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = icmp ne %struct.TYPE_5__* %18, null
  br i1 %19, label %20, label %40

20:                                               ; preds = %17
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %7, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call %struct.TYPE_5__* @dt_node_cook(%struct.TYPE_5__* %24, i32 %25)
  %27 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %27, align 8
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %6, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dt_attr_min(i32 %28, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %35, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store %struct.TYPE_5__** %37, %struct.TYPE_5__*** %3, align 8
  br label %38

38:                                               ; preds = %20
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %6, align 8
  br label %17

40:                                               ; preds = %17
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local %struct.TYPE_5__* @dt_node_cook(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @dt_attr_min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
