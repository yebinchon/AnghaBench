; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_tracing_buffers_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_tracing_buffers_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.file = type { %struct.ftrace_buffer_info* }
%struct.ftrace_buffer_info = type { i32, i32, i32*, i32* }

@tracing_disabled = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@global_trace = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @tracing_buffers_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tracing_buffers_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ftrace_buffer_info*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %6, align 4
  %12 = load i64, i64* @tracing_disabled, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %41

17:                                               ; preds = %2
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.ftrace_buffer_info* @kzalloc(i32 24, i32 %18)
  store %struct.ftrace_buffer_info* %19, %struct.ftrace_buffer_info** %7, align 8
  %20 = load %struct.ftrace_buffer_info*, %struct.ftrace_buffer_info** %7, align 8
  %21 = icmp ne %struct.ftrace_buffer_info* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %41

25:                                               ; preds = %17
  %26 = load %struct.ftrace_buffer_info*, %struct.ftrace_buffer_info** %7, align 8
  %27 = getelementptr inbounds %struct.ftrace_buffer_info, %struct.ftrace_buffer_info* %26, i32 0, i32 3
  store i32* @global_trace, i32** %27, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.ftrace_buffer_info*, %struct.ftrace_buffer_info** %7, align 8
  %30 = getelementptr inbounds %struct.ftrace_buffer_info, %struct.ftrace_buffer_info* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ftrace_buffer_info*, %struct.ftrace_buffer_info** %7, align 8
  %32 = getelementptr inbounds %struct.ftrace_buffer_info, %struct.ftrace_buffer_info* %31, i32 0, i32 2
  store i32* null, i32** %32, align 8
  %33 = load %struct.ftrace_buffer_info*, %struct.ftrace_buffer_info** %7, align 8
  %34 = getelementptr inbounds %struct.ftrace_buffer_info, %struct.ftrace_buffer_info* %33, i32 0, i32 1
  store i32 -1, i32* %34, align 4
  %35 = load %struct.ftrace_buffer_info*, %struct.ftrace_buffer_info** %7, align 8
  %36 = load %struct.file*, %struct.file** %5, align 8
  %37 = getelementptr inbounds %struct.file, %struct.file* %36, i32 0, i32 0
  store %struct.ftrace_buffer_info* %35, %struct.ftrace_buffer_info** %37, align 8
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = load %struct.file*, %struct.file** %5, align 8
  %40 = call i32 @nonseekable_open(%struct.inode* %38, %struct.file* %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %25, %22, %14
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.ftrace_buffer_info* @kzalloc(i32, i32) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
