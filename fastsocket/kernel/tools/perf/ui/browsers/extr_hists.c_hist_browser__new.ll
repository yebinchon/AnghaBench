; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/browsers/extr_hists.c_hist_browser__new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/browsers/extr_hists.c_hist_browser__new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.hist_browser = type { i32, %struct.TYPE_8__, %struct.hists* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.hists = type { i32 }

@hist_browser__refresh = common dso_local global i32 0, align 4
@ui_browser__hists_seek = common dso_local global i32 0, align 4
@sort__branch_mode = common dso_local global i32 0, align 4
@sort_sym_from = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@sort_sym = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hist_browser* (%struct.hists*)* @hist_browser__new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hist_browser* @hist_browser__new(%struct.hists* %0) #0 {
  %2 = alloca %struct.hists*, align 8
  %3 = alloca %struct.hist_browser*, align 8
  store %struct.hists* %0, %struct.hists** %2, align 8
  %4 = call %struct.hist_browser* @zalloc(i32 24)
  store %struct.hist_browser* %4, %struct.hist_browser** %3, align 8
  %5 = load %struct.hist_browser*, %struct.hist_browser** %3, align 8
  %6 = icmp ne %struct.hist_browser* %5, null
  br i1 %6, label %7, label %37

7:                                                ; preds = %1
  %8 = load %struct.hists*, %struct.hists** %2, align 8
  %9 = load %struct.hist_browser*, %struct.hist_browser** %3, align 8
  %10 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %9, i32 0, i32 2
  store %struct.hists* %8, %struct.hists** %10, align 8
  %11 = load i32, i32* @hist_browser__refresh, align 4
  %12 = load %struct.hist_browser*, %struct.hist_browser** %3, align 8
  %13 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @ui_browser__hists_seek, align 4
  %16 = load %struct.hist_browser*, %struct.hist_browser** %3, align 8
  %17 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = load %struct.hist_browser*, %struct.hist_browser** %3, align 8
  %20 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load i32, i32* @sort__branch_mode, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %30

24:                                               ; preds = %7
  %25 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sort_sym_from, i32 0, i32 0, i32 0), align 8
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = load %struct.hist_browser*, %struct.hist_browser** %3, align 8
  %29 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  br label %36

30:                                               ; preds = %7
  %31 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sort_sym, i32 0, i32 0, i32 0), align 8
  %32 = icmp ne i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = load %struct.hist_browser*, %struct.hist_browser** %3, align 8
  %35 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %30, %24
  br label %37

37:                                               ; preds = %36, %1
  %38 = load %struct.hist_browser*, %struct.hist_browser** %3, align 8
  ret %struct.hist_browser* %38
}

declare dso_local %struct.hist_browser* @zalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
