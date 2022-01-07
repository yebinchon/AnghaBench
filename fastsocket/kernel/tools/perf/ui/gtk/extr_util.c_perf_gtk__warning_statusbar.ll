; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/gtk/extr_util.c_perf_gtk__warning_statusbar.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/gtk/extr_util.c_perf_gtk__warning_statusbar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@pgctx = common dso_local global %struct.TYPE_3__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Warning:\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @perf_gtk__warning_statusbar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_gtk__warning_statusbar(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pgctx, align 8
  %9 = call i32 @perf_gtk__is_active_context(%struct.TYPE_3__* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @vasprintf(i8** %6, i8* %12, i32 %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %11, %2
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @stderr, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @vfprintf(i32 %19, i8* %20, i32 %21)
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %52

25:                                               ; preds = %11
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pgctx, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @GTK_STATUSBAR(i32 %28)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pgctx, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @gtk_statusbar_pop(i32 %29, i32 %32)
  %34 = load i8*, i8** %6, align 8
  %35 = call i8* @strchr(i8* %34, i8 signext 10)
  store i8* %35, i8** %7, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %25
  %39 = load i8*, i8** %7, align 8
  store i8 0, i8* %39, align 1
  br label %40

40:                                               ; preds = %38, %25
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pgctx, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @GTK_STATUSBAR(i32 %43)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pgctx, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @gtk_statusbar_push(i32 %44, i32 %47, i8* %48)
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @free(i8* %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %40, %16
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @perf_gtk__is_active_context(%struct.TYPE_3__*) #1

declare dso_local i64 @vasprintf(i8**, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @vfprintf(i32, i8*, i32) #1

declare dso_local i32 @gtk_statusbar_pop(i32, i32) #1

declare dso_local i32 @GTK_STATUSBAR(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @gtk_statusbar_push(i32, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
