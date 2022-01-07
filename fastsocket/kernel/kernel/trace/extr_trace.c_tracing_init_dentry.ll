; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_tracing_init_dentry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_tracing_init_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }

@tracing_init_dentry.once = internal global i32 0, align 4
@d_tracer = common dso_local global %struct.dentry* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"tracing\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Could not create debugfs directory 'tracing'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @tracing_init_dentry() #0 {
  %1 = alloca %struct.dentry*, align 8
  %2 = load %struct.dentry*, %struct.dentry** @d_tracer, align 8
  %3 = icmp ne %struct.dentry* %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = load %struct.dentry*, %struct.dentry** @d_tracer, align 8
  store %struct.dentry* %5, %struct.dentry** %1, align 8
  br label %21

6:                                                ; preds = %0
  %7 = call i32 (...) @debugfs_initialized()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  store %struct.dentry* null, %struct.dentry** %1, align 8
  br label %21

10:                                               ; preds = %6
  %11 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null)
  store %struct.dentry* %11, %struct.dentry** @d_tracer, align 8
  %12 = load %struct.dentry*, %struct.dentry** @d_tracer, align 8
  %13 = icmp ne %struct.dentry* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* @tracing_init_dentry.once, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  store i32 1, i32* @tracing_init_dentry.once, align 4
  %18 = call i32 @pr_warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store %struct.dentry* null, %struct.dentry** %1, align 8
  br label %21

19:                                               ; preds = %14, %10
  %20 = load %struct.dentry*, %struct.dentry** @d_tracer, align 8
  store %struct.dentry* %20, %struct.dentry** %1, align 8
  br label %21

21:                                               ; preds = %19, %17, %9, %4
  %22 = load %struct.dentry*, %struct.dentry** %1, align 8
  ret %struct.dentry* %22
}

declare dso_local i32 @debugfs_initialized(...) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, i32*) #1

declare dso_local i32 @pr_warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
