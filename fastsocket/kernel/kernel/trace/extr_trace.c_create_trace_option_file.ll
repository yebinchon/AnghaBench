; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_create_trace_option_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_create_trace_option_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_option_dentry = type { i32, %struct.tracer_opt*, %struct.tracer_flags* }
%struct.tracer_flags = type { i32 }
%struct.tracer_opt = type { i32 }
%struct.dentry = type { i32 }

@trace_options_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_option_dentry*, %struct.tracer_flags*, %struct.tracer_opt*)* @create_trace_option_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_trace_option_file(%struct.trace_option_dentry* %0, %struct.tracer_flags* %1, %struct.tracer_opt* %2) #0 {
  %4 = alloca %struct.trace_option_dentry*, align 8
  %5 = alloca %struct.tracer_flags*, align 8
  %6 = alloca %struct.tracer_opt*, align 8
  %7 = alloca %struct.dentry*, align 8
  store %struct.trace_option_dentry* %0, %struct.trace_option_dentry** %4, align 8
  store %struct.tracer_flags* %1, %struct.tracer_flags** %5, align 8
  store %struct.tracer_opt* %2, %struct.tracer_opt** %6, align 8
  %8 = call %struct.dentry* (...) @trace_options_init_dentry()
  store %struct.dentry* %8, %struct.dentry** %7, align 8
  %9 = load %struct.dentry*, %struct.dentry** %7, align 8
  %10 = icmp ne %struct.dentry* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %27

12:                                               ; preds = %3
  %13 = load %struct.tracer_flags*, %struct.tracer_flags** %5, align 8
  %14 = load %struct.trace_option_dentry*, %struct.trace_option_dentry** %4, align 8
  %15 = getelementptr inbounds %struct.trace_option_dentry, %struct.trace_option_dentry* %14, i32 0, i32 2
  store %struct.tracer_flags* %13, %struct.tracer_flags** %15, align 8
  %16 = load %struct.tracer_opt*, %struct.tracer_opt** %6, align 8
  %17 = load %struct.trace_option_dentry*, %struct.trace_option_dentry** %4, align 8
  %18 = getelementptr inbounds %struct.trace_option_dentry, %struct.trace_option_dentry* %17, i32 0, i32 1
  store %struct.tracer_opt* %16, %struct.tracer_opt** %18, align 8
  %19 = load %struct.tracer_opt*, %struct.tracer_opt** %6, align 8
  %20 = getelementptr inbounds %struct.tracer_opt, %struct.tracer_opt* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.dentry*, %struct.dentry** %7, align 8
  %23 = load %struct.trace_option_dentry*, %struct.trace_option_dentry** %4, align 8
  %24 = call i32 @trace_create_file(i32 %21, i32 420, %struct.dentry* %22, %struct.trace_option_dentry* %23, i32* @trace_options_fops)
  %25 = load %struct.trace_option_dentry*, %struct.trace_option_dentry** %4, align 8
  %26 = getelementptr inbounds %struct.trace_option_dentry, %struct.trace_option_dentry* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  br label %27

27:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.dentry* @trace_options_init_dentry(...) #1

declare dso_local i32 @trace_create_file(i32, i32, %struct.dentry*, %struct.trace_option_dentry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
