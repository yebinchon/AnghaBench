; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_undo_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_undo_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.undo*, %struct.undo* }
%struct.undo = type { i32, %struct.undo*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32*, i32* }

@undobuf = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @undo_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @undo_all() #0 {
  %1 = alloca %struct.undo*, align 8
  %2 = alloca %struct.undo*, align 8
  %3 = load %struct.undo*, %struct.undo** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @undobuf, i32 0, i32 0), align 8
  store %struct.undo* %3, %struct.undo** %1, align 8
  br label %4

4:                                                ; preds = %50, %0
  %5 = load %struct.undo*, %struct.undo** %1, align 8
  %6 = icmp ne %struct.undo* %5, null
  br i1 %6, label %7, label %52

7:                                                ; preds = %4
  %8 = load %struct.undo*, %struct.undo** %1, align 8
  %9 = getelementptr inbounds %struct.undo, %struct.undo* %8, i32 0, i32 1
  %10 = load %struct.undo*, %struct.undo** %9, align 8
  store %struct.undo* %10, %struct.undo** %2, align 8
  %11 = load %struct.undo*, %struct.undo** %1, align 8
  %12 = getelementptr inbounds %struct.undo, %struct.undo* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %43 [
    i32 128, label %14
    i32 130, label %23
    i32 129, label %32
  ]

14:                                               ; preds = %7
  %15 = load %struct.undo*, %struct.undo** %1, align 8
  %16 = getelementptr inbounds %struct.undo, %struct.undo* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.undo*, %struct.undo** %1, align 8
  %20 = getelementptr inbounds %struct.undo, %struct.undo* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32 %18, i32* %22, align 4
  br label %45

23:                                               ; preds = %7
  %24 = load %struct.undo*, %struct.undo** %1, align 8
  %25 = getelementptr inbounds %struct.undo, %struct.undo* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.undo*, %struct.undo** %1, align 8
  %29 = getelementptr inbounds %struct.undo, %struct.undo* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  store i32 %27, i32* %31, align 4
  br label %45

32:                                               ; preds = %7
  %33 = load %struct.undo*, %struct.undo** %1, align 8
  %34 = getelementptr inbounds %struct.undo, %struct.undo* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.undo*, %struct.undo** %1, align 8
  %39 = getelementptr inbounds %struct.undo, %struct.undo* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @PUT_MODE(i32 %37, i32 %41)
  br label %45

43:                                               ; preds = %7
  %44 = call i32 (...) @gcc_unreachable()
  br label %45

45:                                               ; preds = %43, %32, %23, %14
  %46 = load %struct.undo*, %struct.undo** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @undobuf, i32 0, i32 1), align 8
  %47 = load %struct.undo*, %struct.undo** %1, align 8
  %48 = getelementptr inbounds %struct.undo, %struct.undo* %47, i32 0, i32 1
  store %struct.undo* %46, %struct.undo** %48, align 8
  %49 = load %struct.undo*, %struct.undo** %1, align 8
  store %struct.undo* %49, %struct.undo** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @undobuf, i32 0, i32 1), align 8
  br label %50

50:                                               ; preds = %45
  %51 = load %struct.undo*, %struct.undo** %2, align 8
  store %struct.undo* %51, %struct.undo** %1, align 8
  br label %4

52:                                               ; preds = %4
  store %struct.undo* null, %struct.undo** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @undobuf, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32 @PUT_MODE(i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
