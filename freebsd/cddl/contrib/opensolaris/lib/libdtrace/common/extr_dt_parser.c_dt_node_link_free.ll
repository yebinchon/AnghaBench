; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_node_link_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_node_link_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dt_node_link_free(%struct.TYPE_5__** %0) #0 {
  %2 = alloca %struct.TYPE_5__**, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %2, align 8
  %5 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %6 = icmp ne %struct.TYPE_5__** %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  br label %11

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %10, %7
  %12 = phi %struct.TYPE_5__* [ %9, %7 ], [ null, %10 ]
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %3, align 8
  br label %13

13:                                               ; preds = %22, %11
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %4, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = call i32 @dt_node_free(%struct.TYPE_5__* %20)
  br label %22

22:                                               ; preds = %16
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %3, align 8
  br label %13

24:                                               ; preds = %13
  %25 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %26 = icmp ne %struct.TYPE_5__** %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  br label %31

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi %struct.TYPE_5__* [ %29, %27 ], [ null, %30 ]
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %3, align 8
  br label %33

33:                                               ; preds = %42, %31
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = icmp ne %struct.TYPE_5__* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %4, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = call i32 @free(%struct.TYPE_5__* %40)
  br label %42

42:                                               ; preds = %36
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %3, align 8
  br label %33

44:                                               ; preds = %33
  %45 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %46 = icmp ne %struct.TYPE_5__** %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %48, align 8
  br label %49

49:                                               ; preds = %47, %44
  ret void
}

declare dso_local i32 @dt_node_free(%struct.TYPE_5__*) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
