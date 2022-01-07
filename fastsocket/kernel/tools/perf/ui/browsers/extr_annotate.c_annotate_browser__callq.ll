; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/browsers/extr_annotate.c_annotate_browser__callq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/browsers/extr_annotate.c_annotate_browser__callq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.annotate_browser = type { %struct.TYPE_9__, %struct.disasm_line* }
%struct.TYPE_9__ = type { %struct.map_symbol* }
%struct.map_symbol = type { %struct.TYPE_10__*, %struct.symbol* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_10__*, i32)* }
%struct.symbol = type { i32 }
%struct.disasm_line = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.hist_browser_timer = type { i32 }
%struct.annotation = type { i32, i32* }

@.str = private unnamed_addr constant [35 x i8] c"The called function was not found.\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Not enough memory for annotating '%s' symbol!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.annotate_browser*, i32, %struct.hist_browser_timer*)* @annotate_browser__callq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @annotate_browser__callq(%struct.annotate_browser* %0, i32 %1, %struct.hist_browser_timer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.annotate_browser*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hist_browser_timer*, align 8
  %8 = alloca %struct.map_symbol*, align 8
  %9 = alloca %struct.disasm_line*, align 8
  %10 = alloca %struct.symbol*, align 8
  %11 = alloca %struct.annotation*, align 8
  %12 = alloca %struct.symbol*, align 8
  %13 = alloca i32, align 4
  store %struct.annotate_browser* %0, %struct.annotate_browser** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.hist_browser_timer* %2, %struct.hist_browser_timer** %7, align 8
  %14 = load %struct.annotate_browser*, %struct.annotate_browser** %5, align 8
  %15 = getelementptr inbounds %struct.annotate_browser, %struct.annotate_browser* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.map_symbol*, %struct.map_symbol** %16, align 8
  store %struct.map_symbol* %17, %struct.map_symbol** %8, align 8
  %18 = load %struct.annotate_browser*, %struct.annotate_browser** %5, align 8
  %19 = getelementptr inbounds %struct.annotate_browser, %struct.annotate_browser* %18, i32 0, i32 1
  %20 = load %struct.disasm_line*, %struct.disasm_line** %19, align 8
  store %struct.disasm_line* %20, %struct.disasm_line** %9, align 8
  %21 = load %struct.map_symbol*, %struct.map_symbol** %8, align 8
  %22 = getelementptr inbounds %struct.map_symbol, %struct.map_symbol* %21, i32 0, i32 1
  %23 = load %struct.symbol*, %struct.symbol** %22, align 8
  store %struct.symbol* %23, %struct.symbol** %10, align 8
  %24 = load %struct.disasm_line*, %struct.disasm_line** %9, align 8
  %25 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ins__is_call(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %93

30:                                               ; preds = %3
  %31 = load %struct.map_symbol*, %struct.map_symbol** %8, align 8
  %32 = getelementptr inbounds %struct.map_symbol, %struct.map_symbol* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %34, align 8
  %36 = load %struct.map_symbol*, %struct.map_symbol** %8, align 8
  %37 = getelementptr inbounds %struct.map_symbol, %struct.map_symbol* %36, i32 0, i32 0
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = load %struct.disasm_line*, %struct.disasm_line** %9, align 8
  %40 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 %35(%struct.TYPE_10__* %38, i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = load %struct.map_symbol*, %struct.map_symbol** %8, align 8
  %46 = getelementptr inbounds %struct.map_symbol, %struct.map_symbol* %45, i32 0, i32 0
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call %struct.symbol* @map__find_symbol(%struct.TYPE_10__* %47, i32 %48, i32* null)
  store %struct.symbol* %49, %struct.symbol** %12, align 8
  %50 = load %struct.symbol*, %struct.symbol** %12, align 8
  %51 = icmp eq %struct.symbol* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %30
  %53 = call i32 @ui_helpline__puts(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %93

54:                                               ; preds = %30
  %55 = load %struct.symbol*, %struct.symbol** %12, align 8
  %56 = call %struct.annotation* @symbol__annotation(%struct.symbol* %55)
  store %struct.annotation* %56, %struct.annotation** %11, align 8
  %57 = load %struct.annotation*, %struct.annotation** %11, align 8
  %58 = getelementptr inbounds %struct.annotation, %struct.annotation* %57, i32 0, i32 0
  %59 = call i32 @pthread_mutex_lock(i32* %58)
  %60 = load %struct.annotation*, %struct.annotation** %11, align 8
  %61 = getelementptr inbounds %struct.annotation, %struct.annotation* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %76

64:                                               ; preds = %54
  %65 = load %struct.symbol*, %struct.symbol** %12, align 8
  %66 = call i64 @symbol__alloc_hist(%struct.symbol* %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = load %struct.annotation*, %struct.annotation** %11, align 8
  %70 = getelementptr inbounds %struct.annotation, %struct.annotation* %69, i32 0, i32 0
  %71 = call i32 @pthread_mutex_unlock(i32* %70)
  %72 = load %struct.symbol*, %struct.symbol** %12, align 8
  %73 = getelementptr inbounds %struct.symbol, %struct.symbol* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ui__warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  store i32 1, i32* %4, align 4
  br label %93

76:                                               ; preds = %64, %54
  %77 = load %struct.annotation*, %struct.annotation** %11, align 8
  %78 = getelementptr inbounds %struct.annotation, %struct.annotation* %77, i32 0, i32 0
  %79 = call i32 @pthread_mutex_unlock(i32* %78)
  %80 = load %struct.symbol*, %struct.symbol** %12, align 8
  %81 = load %struct.map_symbol*, %struct.map_symbol** %8, align 8
  %82 = getelementptr inbounds %struct.map_symbol, %struct.map_symbol* %81, i32 0, i32 0
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.hist_browser_timer*, %struct.hist_browser_timer** %7, align 8
  %86 = call i32 @symbol__tui_annotate(%struct.symbol* %80, %struct.TYPE_10__* %83, i32 %84, %struct.hist_browser_timer* %85)
  %87 = load %struct.annotate_browser*, %struct.annotate_browser** %5, align 8
  %88 = getelementptr inbounds %struct.annotate_browser, %struct.annotate_browser* %87, i32 0, i32 0
  %89 = load %struct.symbol*, %struct.symbol** %10, align 8
  %90 = getelementptr inbounds %struct.symbol, %struct.symbol* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ui_browser__show_title(%struct.TYPE_9__* %88, i32 %91)
  store i32 1, i32* %4, align 4
  br label %93

93:                                               ; preds = %76, %68, %52, %29
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @ins__is_call(i32) #1

declare dso_local %struct.symbol* @map__find_symbol(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @ui_helpline__puts(i8*) #1

declare dso_local %struct.annotation* @symbol__annotation(%struct.symbol*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @symbol__alloc_hist(%struct.symbol*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @ui__warning(i8*, i32) #1

declare dso_local i32 @symbol__tui_annotate(%struct.symbol*, %struct.TYPE_10__*, i32, %struct.hist_browser_timer*) #1

declare dso_local i32 @ui_browser__show_title(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
