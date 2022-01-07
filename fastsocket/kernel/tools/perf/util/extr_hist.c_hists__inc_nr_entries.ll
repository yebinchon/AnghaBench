; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_hist.c_hists__inc_nr_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_hist.c_hists__inc_nr_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hists = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.hist_entry = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hists*, %struct.hist_entry*)* @hists__inc_nr_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hists__inc_nr_entries(%struct.hists* %0, %struct.hist_entry* %1) #0 {
  %3 = alloca %struct.hists*, align 8
  %4 = alloca %struct.hist_entry*, align 8
  store %struct.hists* %0, %struct.hists** %3, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %4, align 8
  %5 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %6 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %2
  %10 = load %struct.hists*, %struct.hists** %3, align 8
  %11 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %12 = call i32 @hists__calc_col_len(%struct.hists* %10, %struct.hist_entry* %11)
  %13 = load %struct.hists*, %struct.hists** %3, align 8
  %14 = getelementptr inbounds %struct.hists, %struct.hists* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %18 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.hists*, %struct.hists** %3, align 8
  %22 = getelementptr inbounds %struct.hists, %struct.hists* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %20
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %23, align 4
  br label %28

28:                                               ; preds = %9, %2
  ret void
}

declare dso_local i32 @hists__calc_col_len(%struct.hists*, %struct.hist_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
