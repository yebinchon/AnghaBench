; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_hist.c_hists__decay_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_hist.c_hists__decay_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hists = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.hist_entry = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hists*, %struct.hist_entry*)* @hists__decay_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hists__decay_entry(%struct.hists* %0, %struct.hist_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hists*, align 8
  %5 = alloca %struct.hist_entry*, align 8
  %6 = alloca i64, align 8
  store %struct.hists* %0, %struct.hists** %4, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %5, align 8
  %7 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %8 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %42

14:                                               ; preds = %2
  %15 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %16 = call i32 @hist_entry__decay(%struct.hist_entry* %15)
  %17 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %18 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %14
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %24 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %22, %26
  %28 = load %struct.hists*, %struct.hists** %4, align 8
  %29 = getelementptr inbounds %struct.hists, %struct.hists* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = sub nsw i64 %32, %27
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %30, align 4
  br label %35

35:                                               ; preds = %21, %14
  %36 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %37 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %35, %13
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @hist_entry__decay(%struct.hist_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
