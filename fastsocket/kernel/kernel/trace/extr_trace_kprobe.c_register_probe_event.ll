; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_kprobe.c_register_probe_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_kprobe.c_register_probe_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_probe = type { %struct.TYPE_5__, %struct.ftrace_event_call }
%struct.TYPE_5__ = type { i32 }
%struct.ftrace_event_call = type { %struct.TYPE_4__, i32, %struct.trace_probe*, i32, i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_5__*, i32, i8* }
%struct.TYPE_4__ = type { i32 }

@print_kretprobe_event = common dso_local global i32 0, align 4
@probe_event_raw_init = common dso_local global i8* null, align 8
@kretprobe_event_define_fields = common dso_local global i32 0, align 4
@print_kprobe_event = common dso_local global i32 0, align 4
@kprobe_event_define_fields = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TRACE_EVENT_FL_KABI_PRINT_FMT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@probe_event_enable = common dso_local global i32 0, align 4
@probe_event_disable = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to register kprobe event: %s\0A\00", align 1
@probe_profile_disable = common dso_local global i32 0, align 4
@probe_profile_enable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_probe*)* @register_probe_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_probe_event(%struct.trace_probe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trace_probe*, align 8
  %4 = alloca %struct.ftrace_event_call*, align 8
  %5 = alloca i32, align 4
  store %struct.trace_probe* %0, %struct.trace_probe** %3, align 8
  %6 = load %struct.trace_probe*, %struct.trace_probe** %3, align 8
  %7 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %6, i32 0, i32 1
  store %struct.ftrace_event_call* %7, %struct.ftrace_event_call** %4, align 8
  %8 = load %struct.trace_probe*, %struct.trace_probe** %3, align 8
  %9 = call i64 @trace_probe_is_return(%struct.trace_probe* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load i32, i32* @print_kretprobe_event, align 4
  %13 = load %struct.trace_probe*, %struct.trace_probe** %3, align 8
  %14 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 8
  %16 = load i8*, i8** @probe_event_raw_init, align 8
  %17 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %4, align 8
  %18 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %17, i32 0, i32 13
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* @kretprobe_event_define_fields, align 4
  %20 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %4, align 8
  %21 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %20, i32 0, i32 12
  store i32 %19, i32* %21, align 8
  br label %33

22:                                               ; preds = %1
  %23 = load i32, i32* @print_kprobe_event, align 4
  %24 = load %struct.trace_probe*, %struct.trace_probe** %3, align 8
  %25 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load i8*, i8** @probe_event_raw_init, align 8
  %28 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %4, align 8
  %29 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %28, i32 0, i32 13
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* @kprobe_event_define_fields, align 4
  %31 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %4, align 8
  %32 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %31, i32 0, i32 12
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %22, %11
  %34 = load %struct.trace_probe*, %struct.trace_probe** %3, align 8
  %35 = call i64 @set_print_fmt(%struct.trace_probe* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %96

40:                                               ; preds = %33
  %41 = load %struct.trace_probe*, %struct.trace_probe** %3, align 8
  %42 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %41, i32 0, i32 0
  %43 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %4, align 8
  %44 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %43, i32 0, i32 11
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %44, align 8
  %45 = load %struct.trace_probe*, %struct.trace_probe** %3, align 8
  %46 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %45, i32 0, i32 0
  %47 = call i32 @register_ftrace_event(%struct.TYPE_5__* %46)
  %48 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %4, align 8
  %49 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %48, i32 0, i32 9
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @TRACE_EVENT_FL_KABI_PRINT_FMT, align 4
  %51 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %4, align 8
  %52 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %51, i32 0, i32 10
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %4, align 8
  %54 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %53, i32 0, i32 9
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %40
  %58 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %4, align 8
  %59 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @kfree(i32 %61)
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %96

65:                                               ; preds = %40
  %66 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %4, align 8
  %67 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %66, i32 0, i32 8
  store i64 0, i64* %67, align 8
  %68 = load i32, i32* @probe_event_enable, align 4
  %69 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %4, align 8
  %70 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %69, i32 0, i32 7
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @probe_event_disable, align 4
  %72 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %4, align 8
  %73 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %72, i32 0, i32 6
  store i32 %71, i32* %73, align 4
  %74 = load %struct.trace_probe*, %struct.trace_probe** %3, align 8
  %75 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %4, align 8
  %76 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %75, i32 0, i32 2
  store %struct.trace_probe* %74, %struct.trace_probe** %76, align 8
  %77 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %4, align 8
  %78 = call i32 @trace_add_event_call(%struct.ftrace_event_call* %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %65
  %82 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %4, align 8
  %83 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %4, align 8
  %87 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @kfree(i32 %89)
  %91 = load %struct.trace_probe*, %struct.trace_probe** %3, align 8
  %92 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %91, i32 0, i32 0
  %93 = call i32 @unregister_ftrace_event(%struct.TYPE_5__* %92)
  br label %94

94:                                               ; preds = %81, %65
  %95 = load i32, i32* %5, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %94, %57, %37
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i64 @trace_probe_is_return(%struct.trace_probe*) #1

declare dso_local i64 @set_print_fmt(%struct.trace_probe*) #1

declare dso_local i32 @register_ftrace_event(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @trace_add_event_call(%struct.ftrace_event_call*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @unregister_ftrace_event(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
