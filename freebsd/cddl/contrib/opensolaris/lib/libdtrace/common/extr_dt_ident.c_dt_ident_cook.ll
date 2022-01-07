; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_ident.c_dt_ident_cook.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_ident.c_dt_ident_cook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_12__*, %struct.TYPE_13__*, i32, %struct.TYPE_12__*)* }

@DT_IDFLG_REF = common dso_local global i32 0, align 4
@DT_IDFLG_USER = common dso_local global i32 0, align 4
@DT_NF_USERLAND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dt_ident_cook(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, %struct.TYPE_12__** %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_12__** %2, %struct.TYPE_12__*** %6, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %12 = load i32, i32* @DT_IDFLG_REF, align 4
  %13 = call i32 @dt_node_list_cook(%struct.TYPE_12__** %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %15 = icmp ne %struct.TYPE_12__** %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  br label %20

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi %struct.TYPE_12__* [ %18, %16 ], [ null, %19 ]
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %8, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %9, align 8
  br label %23

23:                                               ; preds = %29, %20
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %25 = icmp ne %struct.TYPE_12__* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %26
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %9, align 8
  br label %23

33:                                               ; preds = %23
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_12__*, %struct.TYPE_13__*, i32, %struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*, %struct.TYPE_13__*, i32, %struct.TYPE_12__*)** %37, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %43 = call i32 %38(%struct.TYPE_12__* %39, %struct.TYPE_13__* %40, i32 %41, %struct.TYPE_12__* %42)
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @DT_IDFLG_USER, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %33
  %51 = load i32, i32* @DT_NF_USERLAND, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %50, %33
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dt_attr_min(i32 %57, i32 %60)
  ret i32 %61
}

declare dso_local i32 @dt_node_list_cook(%struct.TYPE_12__**, i32) #1

declare dso_local i32 @dt_attr_min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
