; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/stdio/extr_hist.c_hist_entry_callchain__fprintf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/stdio/extr_hist.c_hist_entry_callchain__fprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.hist_entry = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@callchain_param = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [20 x i8] c"Bad callchain mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hist_entry*, i32, i32, i32*)* @hist_entry_callchain__fprintf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hist_entry_callchain__fprintf(%struct.hist_entry* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.hist_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.hist_entry* %0, %struct.hist_entry** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @callchain_param, i32 0, i32 0), align 4
  switch i32 %10, label %35 [
    i32 129, label %11
    i32 130, label %21
    i32 131, label %28
    i32 128, label %34
  ]

11:                                               ; preds = %4
  %12 = load i32*, i32** %9, align 8
  %13 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %14 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %13, i32 0, i32 0
  %15 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %16 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @callchain__fprintf_graph(i32* %12, i32* %14, i32 %18, i32 %19)
  store i64 %20, i64* %5, align 8
  br label %38

21:                                               ; preds = %4
  %22 = load i32*, i32** %9, align 8
  %23 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %24 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %23, i32 0, i32 0
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @callchain__fprintf_graph(i32* %22, i32* %24, i32 %25, i32 %26)
  store i64 %27, i64* %5, align 8
  br label %38

28:                                               ; preds = %4
  %29 = load i32*, i32** %9, align 8
  %30 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %31 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %30, i32 0, i32 0
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @callchain__fprintf_flat(i32* %29, i32* %31, i32 %32)
  store i64 %33, i64* %5, align 8
  br label %38

34:                                               ; preds = %4
  br label %37

35:                                               ; preds = %4
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %34
  store i64 0, i64* %5, align 8
  br label %38

38:                                               ; preds = %37, %28, %21, %11
  %39 = load i64, i64* %5, align 8
  ret i64 %39
}

declare dso_local i64 @callchain__fprintf_graph(i32*, i32*, i32, i32) #1

declare dso_local i64 @callchain__fprintf_flat(i32*, i32*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
