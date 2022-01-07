; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_output.c_trace_ctxwake_print.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_output.c_trace_ctxwake_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, i32 }
%struct.ctx_switch_entry = type { i32, i32, i32, i32, i32, i32, i32 }

@TASK_COMM_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c" %5d:%3d:%c %s [%03d] %5d:%3d:%c %s\0A\00", align 1
@TRACE_TYPE_PARTIAL_LINE = common dso_local global i32 0, align 4
@TRACE_TYPE_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*, i8*)* @trace_ctxwake_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace_ctxwake_print(%struct.trace_iterator* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace_iterator*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ctx_switch_entry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.trace_iterator* %0, %struct.trace_iterator** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i32, i32* @TASK_COMM_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %6, align 8
  %17 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %18 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @trace_assign_type(%struct.ctx_switch_entry* %16, i32 %19)
  %21 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %6, align 8
  %22 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @task_state_char(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %6, align 8
  %26 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @task_state_char(i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %6, align 8
  %30 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @trace_find_cmdline(i32 %31, i8* %15)
  %33 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %34 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %33, i32 0, i32 0
  %35 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %6, align 8
  %36 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %6, align 8
  %39 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %6, align 8
  %44 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %6, align 8
  %47 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %6, align 8
  %50 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @trace_seq_printf(i32* %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40, i32 %41, i8* %42, i32 %45, i32 %48, i32 %51, i32 %52, i8* %15)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %2
  %56 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %56, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %59

57:                                               ; preds = %2
  %58 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  store i32 %58, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %60)
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trace_assign_type(%struct.ctx_switch_entry*, i32) #2

declare dso_local i32 @task_state_char(i32) #2

declare dso_local i32 @trace_find_cmdline(i32, i8*) #2

declare dso_local i32 @trace_seq_printf(i32*, i8*, i32, i32, i32, i8*, i32, i32, i32, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
