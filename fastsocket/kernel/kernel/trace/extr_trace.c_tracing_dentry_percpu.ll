; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_tracing_dentry_percpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_tracing_dentry_percpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }

@tracing_dentry_percpu.once = internal global i32 0, align 4
@d_percpu = common dso_local global %struct.dentry* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"per_cpu\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Could not create debugfs directory 'per_cpu'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @tracing_dentry_percpu() #0 {
  %1 = alloca %struct.dentry*, align 8
  %2 = alloca %struct.dentry*, align 8
  %3 = load %struct.dentry*, %struct.dentry** @d_percpu, align 8
  %4 = icmp ne %struct.dentry* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load %struct.dentry*, %struct.dentry** @d_percpu, align 8
  store %struct.dentry* %6, %struct.dentry** %1, align 8
  br label %24

7:                                                ; preds = %0
  %8 = call %struct.dentry* (...) @tracing_init_dentry()
  store %struct.dentry* %8, %struct.dentry** %2, align 8
  %9 = load %struct.dentry*, %struct.dentry** %2, align 8
  %10 = icmp ne %struct.dentry* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  store %struct.dentry* null, %struct.dentry** %1, align 8
  br label %24

12:                                               ; preds = %7
  %13 = load %struct.dentry*, %struct.dentry** %2, align 8
  %14 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.dentry* %13)
  store %struct.dentry* %14, %struct.dentry** @d_percpu, align 8
  %15 = load %struct.dentry*, %struct.dentry** @d_percpu, align 8
  %16 = icmp ne %struct.dentry* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @tracing_dentry_percpu.once, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  store i32 1, i32* @tracing_dentry_percpu.once, align 4
  %21 = call i32 @pr_warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store %struct.dentry* null, %struct.dentry** %1, align 8
  br label %24

22:                                               ; preds = %17, %12
  %23 = load %struct.dentry*, %struct.dentry** @d_percpu, align 8
  store %struct.dentry* %23, %struct.dentry** %1, align 8
  br label %24

24:                                               ; preds = %22, %20, %11, %5
  %25 = load %struct.dentry*, %struct.dentry** %1, align 8
  ret %struct.dentry* %25
}

declare dso_local %struct.dentry* @tracing_init_dentry(...) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i32 @pr_warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
