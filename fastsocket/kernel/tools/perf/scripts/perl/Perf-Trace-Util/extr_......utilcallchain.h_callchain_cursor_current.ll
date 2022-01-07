; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/scripts/perl/Perf-Trace-Util/extr_......utilcallchain.h_callchain_cursor_current.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/scripts/perl/Perf-Trace-Util/extr_......utilcallchain.h_callchain_cursor_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callchain_cursor_node = type { i32 }
%struct.callchain_cursor = type { i64, i64, %struct.callchain_cursor_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.callchain_cursor_node* (%struct.callchain_cursor*)* @callchain_cursor_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.callchain_cursor_node* @callchain_cursor_current(%struct.callchain_cursor* %0) #0 {
  %2 = alloca %struct.callchain_cursor_node*, align 8
  %3 = alloca %struct.callchain_cursor*, align 8
  store %struct.callchain_cursor* %0, %struct.callchain_cursor** %3, align 8
  %4 = load %struct.callchain_cursor*, %struct.callchain_cursor** %3, align 8
  %5 = getelementptr inbounds %struct.callchain_cursor, %struct.callchain_cursor* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.callchain_cursor*, %struct.callchain_cursor** %3, align 8
  %8 = getelementptr inbounds %struct.callchain_cursor, %struct.callchain_cursor* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %6, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.callchain_cursor_node* null, %struct.callchain_cursor_node** %2, align 8
  br label %16

12:                                               ; preds = %1
  %13 = load %struct.callchain_cursor*, %struct.callchain_cursor** %3, align 8
  %14 = getelementptr inbounds %struct.callchain_cursor, %struct.callchain_cursor* %13, i32 0, i32 2
  %15 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %14, align 8
  store %struct.callchain_cursor_node* %15, %struct.callchain_cursor_node** %2, align 8
  br label %16

16:                                               ; preds = %12, %11
  %17 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %2, align 8
  ret %struct.callchain_cursor_node* %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
