; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/test/btyacc/extr_err_inherit3.tab.c_yydestruct.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/test/btyacc/extr_err_inherit3.tab.c_yydestruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_4__*, %struct.TYPE_4__* }

@psymb = common dso_local global i32 0, align 4
@val = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @YYDESTRUCT_DECL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @YYDESTRUCT_DECL() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = load i32, i32* @psymb, align 4
  switch i32 %7, label %65 [
    i32 263, label %8
    i32 264, label %27
    i32 265, label %46
  ]

8:                                                ; preds = %0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @val, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %1, align 8
  br label %12

12:                                               ; preds = %15, %8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %2, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %1, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = call i32 @free(%struct.TYPE_4__* %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = call i32 @free(%struct.TYPE_4__* %24)
  br label %12

26:                                               ; preds = %12
  br label %65

27:                                               ; preds = %0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @val, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  store %struct.TYPE_4__* %30, %struct.TYPE_4__** %3, align 8
  br label %31

31:                                               ; preds = %34, %27
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = icmp ne %struct.TYPE_4__* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %4, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %3, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = call i32 @free(%struct.TYPE_4__* %41)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = call i32 @free(%struct.TYPE_4__* %43)
  br label %31

45:                                               ; preds = %31
  br label %65

46:                                               ; preds = %0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @val, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  store %struct.TYPE_4__* %49, %struct.TYPE_4__** %5, align 8
  br label %50

50:                                               ; preds = %53, %46
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %52 = icmp ne %struct.TYPE_4__* %51, null
  br i1 %52, label %53, label %64

53:                                               ; preds = %50
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %54, %struct.TYPE_4__** %6, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  store %struct.TYPE_4__* %57, %struct.TYPE_4__** %5, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = call i32 @free(%struct.TYPE_4__* %60)
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %63 = call i32 @free(%struct.TYPE_4__* %62)
  br label %50

64:                                               ; preds = %50
  br label %65

65:                                               ; preds = %0, %64, %45, %26
  ret void
}

declare dso_local i32 @free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
