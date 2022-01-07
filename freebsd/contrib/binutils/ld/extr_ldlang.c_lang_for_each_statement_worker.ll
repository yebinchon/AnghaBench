; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_for_each_statement_worker.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_for_each_statement_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_14__, %struct.TYPE_19__, %struct.TYPE_17__, %struct.TYPE_15__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_20__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_20__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_20__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_20__* }

@constructor_list = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (void (%struct.TYPE_20__*)*, %struct.TYPE_20__*)* @lang_for_each_statement_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lang_for_each_statement_worker(void (%struct.TYPE_20__*)* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca void (%struct.TYPE_20__*)*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  store void (%struct.TYPE_20__*)* %0, void (%struct.TYPE_20__*)** %3, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  br label %5

5:                                                ; preds = %43, %2
  %6 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %7 = icmp ne %struct.TYPE_20__* %6, null
  br i1 %7, label %8, label %48

8:                                                ; preds = %5
  %9 = load void (%struct.TYPE_20__*)*, void (%struct.TYPE_20__*)** %3, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  call void %9(%struct.TYPE_20__* %10)
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %40 [
    i32 140, label %15
    i32 133, label %18
    i32 128, label %25
    i32 137, label %32
    i32 139, label %39
    i32 130, label %39
    i32 134, label %39
    i32 132, label %39
    i32 129, label %39
    i32 136, label %39
    i32 135, label %39
    i32 141, label %39
    i32 131, label %39
    i32 142, label %39
    i32 138, label %39
  ]

15:                                               ; preds = %8
  %16 = load void (%struct.TYPE_20__*)*, void (%struct.TYPE_20__*)** %3, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @constructor_list, i32 0, i32 0), align 8
  call void @lang_for_each_statement_worker(void (%struct.TYPE_20__*)* %16, %struct.TYPE_20__* %17)
  br label %42

18:                                               ; preds = %8
  %19 = load void (%struct.TYPE_20__*)*, void (%struct.TYPE_20__*)** %3, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  call void @lang_for_each_statement_worker(void (%struct.TYPE_20__*)* %19, %struct.TYPE_20__* %24)
  br label %42

25:                                               ; preds = %8
  %26 = load void (%struct.TYPE_20__*)*, void (%struct.TYPE_20__*)** %3, align 8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  call void @lang_for_each_statement_worker(void (%struct.TYPE_20__*)* %26, %struct.TYPE_20__* %31)
  br label %42

32:                                               ; preds = %8
  %33 = load void (%struct.TYPE_20__*)*, void (%struct.TYPE_20__*)** %3, align 8
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %37, align 8
  call void @lang_for_each_statement_worker(void (%struct.TYPE_20__*)* %33, %struct.TYPE_20__* %38)
  br label %42

39:                                               ; preds = %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8
  br label %42

40:                                               ; preds = %8
  %41 = call i32 (...) @FAIL()
  br label %42

42:                                               ; preds = %40, %39, %32, %25, %18, %15
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %46, align 8
  store %struct.TYPE_20__* %47, %struct.TYPE_20__** %4, align 8
  br label %5

48:                                               ; preds = %5
  ret void
}

declare dso_local i32 @FAIL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
