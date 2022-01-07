; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_until_break_command_continuation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_until_break_command_continuation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.continuation_arg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.cleanup = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.continuation_arg*)* @until_break_command_continuation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @until_break_command_continuation(%struct.continuation_arg* %0) #0 {
  %2 = alloca %struct.continuation_arg*, align 8
  %3 = alloca %struct.cleanup*, align 8
  store %struct.continuation_arg* %0, %struct.continuation_arg** %2, align 8
  %4 = load %struct.continuation_arg*, %struct.continuation_arg** %2, align 8
  %5 = getelementptr inbounds %struct.continuation_arg, %struct.continuation_arg* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.cleanup*
  store %struct.cleanup* %8, %struct.cleanup** %3, align 8
  %9 = load %struct.cleanup*, %struct.cleanup** %3, align 8
  %10 = call i32 @do_exec_cleanups(%struct.cleanup* %9)
  ret void
}

declare dso_local i32 @do_exec_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
