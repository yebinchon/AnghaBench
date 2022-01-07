; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_create_overlay_event_breakpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_create_overlay_event_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.breakpoint = type { i32, i32 }
%struct.minimal_symbol = type { i32 }

@bp_overlay_event = common dso_local global i32 0, align 4
@overlay_debugging = common dso_local global i64 0, align 8
@ovly_auto = common dso_local global i64 0, align 8
@bp_enabled = common dso_local global i32 0, align 4
@overlay_events_enabled = common dso_local global i32 0, align 4
@bp_disabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @create_overlay_event_breakpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_overlay_event_breakpoint(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.breakpoint*, align 8
  %4 = alloca %struct.minimal_symbol*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call %struct.minimal_symbol* @lookup_minimal_symbol_text(i8* %5, i32* null)
  store %struct.minimal_symbol* %6, %struct.minimal_symbol** %4, align 8
  %7 = icmp eq %struct.minimal_symbol* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %29

9:                                                ; preds = %1
  %10 = load %struct.minimal_symbol*, %struct.minimal_symbol** %4, align 8
  %11 = call i32 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %10)
  %12 = load i32, i32* @bp_overlay_event, align 4
  %13 = call %struct.breakpoint* @create_internal_breakpoint(i32 %11, i32 %12)
  store %struct.breakpoint* %13, %struct.breakpoint** %3, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @xstrdup(i8* %14)
  %16 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %17 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i64, i64* @overlay_debugging, align 8
  %19 = load i64, i64* @ovly_auto, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %9
  %22 = load i32, i32* @bp_enabled, align 4
  %23 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %24 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  store i32 1, i32* @overlay_events_enabled, align 4
  br label %29

25:                                               ; preds = %9
  %26 = load i32, i32* @bp_disabled, align 4
  %27 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %28 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  store i32 0, i32* @overlay_events_enabled, align 4
  br label %29

29:                                               ; preds = %8, %25, %21
  ret void
}

declare dso_local %struct.minimal_symbol* @lookup_minimal_symbol_text(i8*, i32*) #1

declare dso_local %struct.breakpoint* @create_internal_breakpoint(i32, i32) #1

declare dso_local i32 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol*) #1

declare dso_local i32 @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
