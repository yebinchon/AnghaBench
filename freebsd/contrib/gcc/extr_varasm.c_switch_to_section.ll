; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_switch_to_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_switch_to_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 (i32)* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 (i32, i32, i32)* }

@in_section = common dso_local global %struct.TYPE_18__* null, align 8
@SECTION_FORGET = common dso_local global i32 0, align 4
@cfun = common dso_local global %struct.TYPE_12__* null, align 8
@UNLIKELY_EXECUTED_TEXT_SECTION_NAME = common dso_local global i32 0, align 4
@targetm = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@SECTION_DECLARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @switch_to_section(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %3 = load %struct.TYPE_18__*, %struct.TYPE_18__** @in_section, align 8
  %4 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %5 = icmp eq %struct.TYPE_18__* %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %76

7:                                                ; preds = %1
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @SECTION_FORGET, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %7
  store %struct.TYPE_18__* null, %struct.TYPE_18__** @in_section, align 8
  br label %18

16:                                               ; preds = %7
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  store %struct.TYPE_18__* %17, %struct.TYPE_18__** @in_section, align 8
  br label %18

18:                                               ; preds = %16, %15
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %20 = call i32 @SECTION_STYLE(%struct.TYPE_18__* %19)
  switch i32 %20, label %69 [
    i32 130, label %21
    i32 128, label %57
    i32 129, label %67
  ]

21:                                               ; preds = %18
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** @cfun, align 8
  %23 = icmp ne %struct.TYPE_12__* %22, null
  br i1 %23, label %24, label %41

24:                                               ; preds = %21
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** @cfun, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %24
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @UNLIKELY_EXECUTED_TEXT_SECTION_NAME, align 4
  %35 = call i32 @strcmp(i32 %33, i32 %34)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load i32, i32* @UNLIKELY_EXECUTED_TEXT_SECTION_NAME, align 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** @cfun, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %29, %24, %21
  %42 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @targetm, i32 0, i32 0, i32 0), align 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 %42(i32 %46, i32 %51, i32 %55)
  br label %69

57:                                               ; preds = %18
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = load i32 (i32)*, i32 (i32)** %60, align 8
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 %61(i32 %65)
  br label %69

67:                                               ; preds = %18
  %68 = call i32 (...) @gcc_unreachable()
  br label %69

69:                                               ; preds = %18, %67, %57, %41
  %70 = load i32, i32* @SECTION_DECLARED, align 4
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %70
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %69, %6
  ret void
}

declare dso_local i32 @SECTION_STYLE(%struct.TYPE_18__*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
