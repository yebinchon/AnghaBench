; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_destroy_trace_option_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_destroy_trace_option_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_option_dentry = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_option_dentry*)* @destroy_trace_option_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_trace_option_files(%struct.trace_option_dentry* %0) #0 {
  %2 = alloca %struct.trace_option_dentry*, align 8
  %3 = alloca i32, align 4
  store %struct.trace_option_dentry* %0, %struct.trace_option_dentry** %2, align 8
  %4 = load %struct.trace_option_dentry*, %struct.trace_option_dentry** %2, align 8
  %5 = icmp ne %struct.trace_option_dentry* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %39

7:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %33, %7
  %9 = load %struct.trace_option_dentry*, %struct.trace_option_dentry** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.trace_option_dentry, %struct.trace_option_dentry* %9, i64 %11
  %13 = getelementptr inbounds %struct.trace_option_dentry, %struct.trace_option_dentry* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %8
  %17 = load %struct.trace_option_dentry*, %struct.trace_option_dentry** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.trace_option_dentry, %struct.trace_option_dentry* %17, i64 %19
  %21 = getelementptr inbounds %struct.trace_option_dentry, %struct.trace_option_dentry* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %16
  %25 = load %struct.trace_option_dentry*, %struct.trace_option_dentry** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.trace_option_dentry, %struct.trace_option_dentry* %25, i64 %27
  %29 = getelementptr inbounds %struct.trace_option_dentry, %struct.trace_option_dentry* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @debugfs_remove(i64 %30)
  br label %32

32:                                               ; preds = %24, %16
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %8

36:                                               ; preds = %8
  %37 = load %struct.trace_option_dentry*, %struct.trace_option_dentry** %2, align 8
  %38 = call i32 @kfree(%struct.trace_option_dentry* %37)
  br label %39

39:                                               ; preds = %36, %6
  ret void
}

declare dso_local i32 @debugfs_remove(i64) #1

declare dso_local i32 @kfree(%struct.trace_option_dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
