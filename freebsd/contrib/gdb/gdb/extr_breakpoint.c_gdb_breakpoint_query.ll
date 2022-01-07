; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_gdb_breakpoint_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_gdb_breakpoint_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_out = type { i32 }
%struct.captured_breakpoint_query_args = type { i32 }

@do_captured_breakpoint_query = common dso_local global i32 0, align 4
@RETURN_MASK_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdb_breakpoint_query(%struct.ui_out* %0, i32 %1) #0 {
  %3 = alloca %struct.ui_out*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.captured_breakpoint_query_args, align 4
  store %struct.ui_out* %0, %struct.ui_out** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = getelementptr inbounds %struct.captured_breakpoint_query_args, %struct.captured_breakpoint_query_args* %5, i32 0, i32 0
  store i32 %6, i32* %7, align 4
  %8 = load %struct.ui_out*, %struct.ui_out** %3, align 8
  %9 = load i32, i32* @do_captured_breakpoint_query, align 4
  %10 = load i32, i32* @RETURN_MASK_ALL, align 4
  %11 = call i32 @catch_exceptions(%struct.ui_out* %8, i32 %9, %struct.captured_breakpoint_query_args* %5, i32* null, i32 %10)
  ret i32 %11
}

declare dso_local i32 @catch_exceptions(%struct.ui_out*, i32, %struct.captured_breakpoint_query_args*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
