; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_pmu.c_perf_pmu__new_alias.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_pmu.c_perf_pmu__new_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.perf_pmu__alias = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head*, i8*, i32*)* @perf_pmu__new_alias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_pmu__new_alias(%struct.list_head* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.perf_pmu__alias*, align 8
  %9 = alloca [256 x i8], align 16
  %10 = alloca i32, align 4
  store %struct.list_head* %0, %struct.list_head** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @fread(i8* %11, i32 1, i32 256, i32* %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %52

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 %21
  store i8 0, i8* %22, align 1
  %23 = call %struct.perf_pmu__alias* @malloc(i32 12)
  store %struct.perf_pmu__alias* %23, %struct.perf_pmu__alias** %8, align 8
  %24 = load %struct.perf_pmu__alias*, %struct.perf_pmu__alias** %8, align 8
  %25 = icmp ne %struct.perf_pmu__alias* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %52

29:                                               ; preds = %19
  %30 = load %struct.perf_pmu__alias*, %struct.perf_pmu__alias** %8, align 8
  %31 = getelementptr inbounds %struct.perf_pmu__alias, %struct.perf_pmu__alias* %30, i32 0, i32 2
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.perf_pmu__alias*, %struct.perf_pmu__alias** %8, align 8
  %34 = getelementptr inbounds %struct.perf_pmu__alias, %struct.perf_pmu__alias* %33, i32 0, i32 2
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %36 = call i32 @parse_events_terms(i32* %34, i8* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = load %struct.perf_pmu__alias*, %struct.perf_pmu__alias** %8, align 8
  %41 = call i32 @free(%struct.perf_pmu__alias* %40)
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %52

43:                                               ; preds = %29
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @strdup(i8* %44)
  %46 = load %struct.perf_pmu__alias*, %struct.perf_pmu__alias** %8, align 8
  %47 = getelementptr inbounds %struct.perf_pmu__alias, %struct.perf_pmu__alias* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.perf_pmu__alias*, %struct.perf_pmu__alias** %8, align 8
  %49 = getelementptr inbounds %struct.perf_pmu__alias, %struct.perf_pmu__alias* %48, i32 0, i32 0
  %50 = load %struct.list_head*, %struct.list_head** %5, align 8
  %51 = call i32 @list_add_tail(i32* %49, %struct.list_head* %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %43, %39, %26, %16
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local %struct.perf_pmu__alias* @malloc(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @parse_events_terms(i32*, i8*) #1

declare dso_local i32 @free(%struct.perf_pmu__alias*) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
