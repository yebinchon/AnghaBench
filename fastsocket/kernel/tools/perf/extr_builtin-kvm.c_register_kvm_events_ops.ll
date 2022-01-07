; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-kvm.c_register_kvm_events_ops.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-kvm.c_register_kvm_events_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_kvm_stat = type { i32, i32* }

@.str = private unnamed_addr constant [7 x i8] c"vmexit\00", align 1
@exit_events = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"mmio\00", align 1
@mmio_events = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"ioport\00", align 1
@ioport_events = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Unknown report event:%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_kvm_stat*)* @register_kvm_events_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_kvm_events_ops(%struct.perf_kvm_stat* %0) #0 {
  %2 = alloca %struct.perf_kvm_stat*, align 8
  %3 = alloca i32, align 4
  store %struct.perf_kvm_stat* %0, %struct.perf_kvm_stat** %2, align 8
  store i32 1, i32* %3, align 4
  %4 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %2, align 8
  %5 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @strcmp(i32 %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %2, align 8
  %11 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %10, i32 0, i32 1
  store i32* @exit_events, i32** %11, align 8
  br label %37

12:                                               ; preds = %1
  %13 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %2, align 8
  %14 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @strcmp(i32 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %2, align 8
  %20 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %19, i32 0, i32 1
  store i32* @mmio_events, i32** %20, align 8
  br label %36

21:                                               ; preds = %12
  %22 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %2, align 8
  %23 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @strcmp(i32 %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %2, align 8
  %29 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %28, i32 0, i32 1
  store i32* @ioport_events, i32** %29, align 8
  br label %35

30:                                               ; preds = %21
  %31 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %2, align 8
  %32 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %30, %27
  br label %36

36:                                               ; preds = %35, %18
  br label %37

37:                                               ; preds = %36, %9
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
