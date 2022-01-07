; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_tracing_init_debugfs_percpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_tracing_init_debugfs_percpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"cpu%ld\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Could not create debugfs '%s' entry\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"trace_pipe\00", align 1
@tracing_pipe_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@tracing_fops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"trace_pipe_raw\00", align 1
@tracing_buffers_fops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@tracing_stats_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @tracing_init_debugfs_percpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tracing_init_debugfs_percpu(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca [7 x i8], align 1
  store i64 %0, i64* %2, align 8
  %6 = call %struct.dentry* (...) @tracing_dentry_percpu()
  store %struct.dentry* %6, %struct.dentry** %3, align 8
  %7 = load i64, i64* %2, align 8
  %8 = icmp sgt i64 %7, 999
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i64, i64* %2, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %1
  br label %42

13:                                               ; preds = %9
  %14 = getelementptr inbounds [7 x i8], [7 x i8]* %5, i64 0, i64 0
  %15 = load i64, i64* %2, align 8
  %16 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = getelementptr inbounds [7 x i8], [7 x i8]* %5, i64 0, i64 0
  %18 = load %struct.dentry*, %struct.dentry** %3, align 8
  %19 = call %struct.dentry* @debugfs_create_dir(i8* %17, %struct.dentry* %18)
  store %struct.dentry* %19, %struct.dentry** %4, align 8
  %20 = load %struct.dentry*, %struct.dentry** %4, align 8
  %21 = icmp ne %struct.dentry* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %13
  %23 = getelementptr inbounds [7 x i8], [7 x i8]* %5, i64 0, i64 0
  %24 = call i32 @pr_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  br label %42

25:                                               ; preds = %13
  %26 = load %struct.dentry*, %struct.dentry** %4, align 8
  %27 = load i64, i64* %2, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @trace_create_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 292, %struct.dentry* %26, i8* %28, i32* @tracing_pipe_fops)
  %30 = load %struct.dentry*, %struct.dentry** %4, align 8
  %31 = load i64, i64* %2, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @trace_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 420, %struct.dentry* %30, i8* %32, i32* @tracing_fops)
  %34 = load %struct.dentry*, %struct.dentry** %4, align 8
  %35 = load i64, i64* %2, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 @trace_create_file(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 292, %struct.dentry* %34, i8* %36, i32* @tracing_buffers_fops)
  %38 = load %struct.dentry*, %struct.dentry** %4, align 8
  %39 = load i64, i64* %2, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 @trace_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 292, %struct.dentry* %38, i8* %40, i32* @tracing_stats_fops)
  br label %42

42:                                               ; preds = %25, %22, %12
  ret void
}

declare dso_local %struct.dentry* @tracing_dentry_percpu(...) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i32 @pr_warning(i8*, i8*) #1

declare dso_local i32 @trace_create_file(i8*, i32, %struct.dentry*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
