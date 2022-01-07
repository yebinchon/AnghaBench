; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_do_captured_parse_breakpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_do_captured_parse_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_out = type { i32 }
%struct.captured_parse_breakpoint_args = type { i32, i32, i32, i32 }

@GDB_RC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ui_out*, i8*)* @do_captured_parse_breakpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_captured_parse_breakpoint(%struct.ui_out* %0, i8* %1) #0 {
  %3 = alloca %struct.ui_out*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.captured_parse_breakpoint_args*, align 8
  store %struct.ui_out* %0, %struct.ui_out** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.captured_parse_breakpoint_args*
  store %struct.captured_parse_breakpoint_args* %7, %struct.captured_parse_breakpoint_args** %5, align 8
  %8 = load %struct.captured_parse_breakpoint_args*, %struct.captured_parse_breakpoint_args** %5, align 8
  %9 = getelementptr inbounds %struct.captured_parse_breakpoint_args, %struct.captured_parse_breakpoint_args* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.captured_parse_breakpoint_args*, %struct.captured_parse_breakpoint_args** %5, align 8
  %12 = getelementptr inbounds %struct.captured_parse_breakpoint_args, %struct.captured_parse_breakpoint_args* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.captured_parse_breakpoint_args*, %struct.captured_parse_breakpoint_args** %5, align 8
  %15 = getelementptr inbounds %struct.captured_parse_breakpoint_args, %struct.captured_parse_breakpoint_args* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.captured_parse_breakpoint_args*, %struct.captured_parse_breakpoint_args** %5, align 8
  %18 = getelementptr inbounds %struct.captured_parse_breakpoint_args, %struct.captured_parse_breakpoint_args* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @parse_breakpoint_sals(i32 %10, i32 %13, i32 %16, i32 %19)
  %21 = load i32, i32* @GDB_RC_OK, align 4
  ret i32 %21
}

declare dso_local i32 @parse_breakpoint_sals(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
