; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_output.c_trace_special_print.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_output.c_trace_special_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, i32 }
%struct.special_entry = type { i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"# %ld %ld %ld\0A\00", align 1
@TRACE_TYPE_PARTIAL_LINE = common dso_local global i32 0, align 4
@TRACE_TYPE_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*, i32)* @trace_special_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace_special_print(%struct.trace_iterator* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace_iterator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.special_entry*, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.special_entry*, %struct.special_entry** %6, align 8
  %8 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %9 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @trace_assign_type(%struct.special_entry* %7, i32 %10)
  %12 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %13 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %12, i32 0, i32 0
  %14 = load %struct.special_entry*, %struct.special_entry** %6, align 8
  %15 = getelementptr inbounds %struct.special_entry, %struct.special_entry* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.special_entry*, %struct.special_entry** %6, align 8
  %18 = getelementptr inbounds %struct.special_entry, %struct.special_entry* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.special_entry*, %struct.special_entry** %6, align 8
  %21 = getelementptr inbounds %struct.special_entry, %struct.special_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @trace_seq_printf(i32* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %26, i32* %3, align 4
  br label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @trace_assign_type(%struct.special_entry*, i32) #1

declare dso_local i32 @trace_seq_printf(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
