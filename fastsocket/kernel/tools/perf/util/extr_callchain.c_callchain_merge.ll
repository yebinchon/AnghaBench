; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_callchain.c_callchain_merge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_callchain.c_callchain_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callchain_cursor = type { i32 }
%struct.callchain_root = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @callchain_merge(%struct.callchain_cursor* %0, %struct.callchain_root* %1, %struct.callchain_root* %2) #0 {
  %4 = alloca %struct.callchain_cursor*, align 8
  %5 = alloca %struct.callchain_root*, align 8
  %6 = alloca %struct.callchain_root*, align 8
  store %struct.callchain_cursor* %0, %struct.callchain_cursor** %4, align 8
  store %struct.callchain_root* %1, %struct.callchain_root** %5, align 8
  store %struct.callchain_root* %2, %struct.callchain_root** %6, align 8
  %7 = load %struct.callchain_cursor*, %struct.callchain_cursor** %4, align 8
  %8 = load %struct.callchain_root*, %struct.callchain_root** %5, align 8
  %9 = getelementptr inbounds %struct.callchain_root, %struct.callchain_root* %8, i32 0, i32 0
  %10 = load %struct.callchain_root*, %struct.callchain_root** %6, align 8
  %11 = getelementptr inbounds %struct.callchain_root, %struct.callchain_root* %10, i32 0, i32 0
  %12 = call i32 @merge_chain_branch(%struct.callchain_cursor* %7, i32* %9, i32* %11)
  ret i32 %12
}

declare dso_local i32 @merge_chain_branch(%struct.callchain_cursor*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
