; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_dlg_keys.c_dlg_unregister_window.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_dlg_keys.c_dlg_unregister_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_4__*, %struct.TYPE_4__*, i32* }

@all_bindings = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlg_unregister_window(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @all_bindings, align 8
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %6

6:                                                ; preds = %47, %1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %51

9:                                                ; preds = %6
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = icmp eq i32* %12, %13
  br i1 %14, label %15, label %45

15:                                               ; preds = %9
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %23, align 8
  br label %28

24:                                               ; preds = %15
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** @all_bindings, align 8
  br label %28

28:                                               ; preds = %24, %18
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = call i32 @free(%struct.TYPE_4__* %39)
  br label %41

41:                                               ; preds = %36, %28
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = call i32 @free(%struct.TYPE_4__* %42)
  %44 = load i32*, i32** %2, align 8
  call void @dlg_unregister_window(i32* %44)
  br label %51

45:                                               ; preds = %9
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %4, align 8
  br label %47

47:                                               ; preds = %45
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  store %struct.TYPE_4__* %50, %struct.TYPE_4__** %3, align 8
  br label %6

51:                                               ; preds = %41, %6
  ret void
}

declare dso_local i32 @free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
