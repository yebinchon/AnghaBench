; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/browsers/extr_annotate.c_annotate_browser__init_asm_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/browsers/extr_annotate.c_annotate_browser__init_asm_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.annotate_browser = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.annotate_browser*)* @annotate_browser__init_asm_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @annotate_browser__init_asm_mode(%struct.annotate_browser* %0) #0 {
  %2 = alloca %struct.annotate_browser*, align 8
  store %struct.annotate_browser* %0, %struct.annotate_browser** %2, align 8
  %3 = load %struct.annotate_browser*, %struct.annotate_browser** %2, align 8
  %4 = getelementptr inbounds %struct.annotate_browser, %struct.annotate_browser* %3, i32 0, i32 1
  %5 = call i32 @ui_browser__reset_index(%struct.TYPE_2__* %4)
  %6 = load %struct.annotate_browser*, %struct.annotate_browser** %2, align 8
  %7 = getelementptr inbounds %struct.annotate_browser, %struct.annotate_browser* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.annotate_browser*, %struct.annotate_browser** %2, align 8
  %10 = getelementptr inbounds %struct.annotate_browser, %struct.annotate_browser* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 4
  ret void
}

declare dso_local i32 @ui_browser__reset_index(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
