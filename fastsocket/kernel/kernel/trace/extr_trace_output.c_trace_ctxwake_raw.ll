; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_output.c_trace_ctxwake_raw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_output.c_trace_ctxwake_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, i32 }
%struct.ctx_switch_entry = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"%d %d %c %d %d %d %c\0A\00", align 1
@TRACE_TYPE_PARTIAL_LINE = common dso_local global i32 0, align 4
@TRACE_TYPE_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*, i8)* @trace_ctxwake_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace_ctxwake_raw(%struct.trace_iterator* %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace_iterator*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.ctx_switch_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.trace_iterator* %0, %struct.trace_iterator** %4, align 8
  store i8 %1, i8* %5, align 1
  %8 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %6, align 8
  %9 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %10 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @trace_assign_type(%struct.ctx_switch_entry* %8, i32 %11)
  %13 = load i8, i8* %5, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %6, align 8
  %17 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @task_state_char(i32 %18)
  %20 = ptrtoint i8* %19 to i8
  store i8 %20, i8* %5, align 1
  br label %21

21:                                               ; preds = %15, %2
  %22 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %6, align 8
  %23 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @task_state_char(i32 %24)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %28 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %27, i32 0, i32 0
  %29 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %6, align 8
  %30 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %6, align 8
  %33 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load i8, i8* %5, align 1
  %36 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %6, align 8
  %37 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %6, align 8
  %40 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %6, align 8
  %43 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @trace_seq_printf(i32* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34, i8 signext %35, i32 %38, i32 %41, i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %21
  %49 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %49, i32* %3, align 4
  br label %52

50:                                               ; preds = %21
  %51 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @trace_assign_type(%struct.ctx_switch_entry*, i32) #1

declare dso_local i8* @task_state_char(i32) #1

declare dso_local i32 @trace_seq_printf(i32*, i8*, i32, i32, i8 signext, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
