; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-kvm.c_kvm_events_report_vcpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-kvm.c_kvm_events_report_vcpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_kvm_stat = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_kvm_stat*)* @kvm_events_report_vcpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_events_report_vcpu(%struct.perf_kvm_stat* %0) #0 {
  %2 = alloca %struct.perf_kvm_stat*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.perf_kvm_stat* %0, %struct.perf_kvm_stat** %2, align 8
  %5 = load i32, i32* @EINVAL, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %3, align 4
  %7 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %2, align 8
  %8 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @verify_vcpu(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %38

14:                                               ; preds = %1
  %15 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %2, align 8
  %16 = call i32 @select_key(%struct.perf_kvm_stat* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  br label %38

19:                                               ; preds = %14
  %20 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %2, align 8
  %21 = call i32 @register_kvm_events_ops(%struct.perf_kvm_stat* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  br label %38

24:                                               ; preds = %19
  %25 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %2, align 8
  %26 = call i32 @init_kvm_event_record(%struct.perf_kvm_stat* %25)
  %27 = call i32 (...) @setup_pager()
  %28 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %2, align 8
  %29 = call i32 @read_events(%struct.perf_kvm_stat* %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %38

33:                                               ; preds = %24
  %34 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %2, align 8
  %35 = call i32 @sort_result(%struct.perf_kvm_stat* %34)
  %36 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %2, align 8
  %37 = call i32 @print_result(%struct.perf_kvm_stat* %36)
  br label %38

38:                                               ; preds = %33, %32, %23, %18, %13
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @verify_vcpu(i32) #1

declare dso_local i32 @select_key(%struct.perf_kvm_stat*) #1

declare dso_local i32 @register_kvm_events_ops(%struct.perf_kvm_stat*) #1

declare dso_local i32 @init_kvm_event_record(%struct.perf_kvm_stat*) #1

declare dso_local i32 @setup_pager(...) #1

declare dso_local i32 @read_events(%struct.perf_kvm_stat*) #1

declare dso_local i32 @sort_result(%struct.perf_kvm_stat*) #1

declare dso_local i32 @print_result(%struct.perf_kvm_stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
