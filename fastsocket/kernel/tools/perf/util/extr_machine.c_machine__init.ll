; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_machine.c_machine__init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_machine.c_machine__init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine = type { i32*, i64, %struct.TYPE_2__, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.machine* }
%struct.thread = type { i32 }

@RB_ROOT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HOST_KERNEL_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"[guest/%d]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine__init(%struct.machine* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.machine*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca [64 x i8], align 16
  store %struct.machine* %0, %struct.machine** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.machine*, %struct.machine** %5, align 8
  %11 = getelementptr inbounds %struct.machine, %struct.machine* %10, i32 0, i32 2
  %12 = call i32 @map_groups__init(%struct.TYPE_2__* %11)
  %13 = load %struct.machine*, %struct.machine** %5, align 8
  %14 = getelementptr inbounds %struct.machine, %struct.machine* %13, i32 0, i32 8
  %15 = call i32 @RB_CLEAR_NODE(i32* %14)
  %16 = load %struct.machine*, %struct.machine** %5, align 8
  %17 = getelementptr inbounds %struct.machine, %struct.machine* %16, i32 0, i32 7
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.machine*, %struct.machine** %5, align 8
  %20 = getelementptr inbounds %struct.machine, %struct.machine* %19, i32 0, i32 6
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load i32, i32* @RB_ROOT, align 4
  %23 = load %struct.machine*, %struct.machine** %5, align 8
  %24 = getelementptr inbounds %struct.machine, %struct.machine* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 4
  %25 = load %struct.machine*, %struct.machine** %5, align 8
  %26 = getelementptr inbounds %struct.machine, %struct.machine* %25, i32 0, i32 4
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.machine*, %struct.machine** %5, align 8
  %29 = getelementptr inbounds %struct.machine, %struct.machine* %28, i32 0, i32 3
  store i32* null, i32** %29, align 8
  %30 = load %struct.machine*, %struct.machine** %5, align 8
  %31 = load %struct.machine*, %struct.machine** %5, align 8
  %32 = getelementptr inbounds %struct.machine, %struct.machine* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store %struct.machine* %30, %struct.machine** %33, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.machine*, %struct.machine** %5, align 8
  %36 = getelementptr inbounds %struct.machine, %struct.machine* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i32* @strdup(i8* %37)
  %39 = load %struct.machine*, %struct.machine** %5, align 8
  %40 = getelementptr inbounds %struct.machine, %struct.machine* %39, i32 0, i32 0
  store i32* %38, i32** %40, align 8
  %41 = load %struct.machine*, %struct.machine** %5, align 8
  %42 = getelementptr inbounds %struct.machine, %struct.machine* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %3
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %69

48:                                               ; preds = %3
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @HOST_KERNEL_ID, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %48
  %53 = load %struct.machine*, %struct.machine** %5, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call %struct.thread* @machine__findnew_thread(%struct.machine* %53, i64 %54)
  store %struct.thread* %55, %struct.thread** %8, align 8
  %56 = load %struct.thread*, %struct.thread** %8, align 8
  %57 = icmp eq %struct.thread* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %69

61:                                               ; preds = %52
  %62 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @snprintf(i8* %62, i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %63)
  %65 = load %struct.thread*, %struct.thread** %8, align 8
  %66 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %67 = call i32 @thread__set_comm(%struct.thread* %65, i8* %66)
  br label %68

68:                                               ; preds = %61, %48
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %58, %45
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @map_groups__init(%struct.TYPE_2__*) #1

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local %struct.thread* @machine__findnew_thread(%struct.machine*, i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @thread__set_comm(%struct.thread*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
