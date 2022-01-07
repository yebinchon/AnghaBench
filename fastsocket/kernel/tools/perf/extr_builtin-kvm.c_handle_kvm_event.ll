; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-kvm.c_handle_kvm_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-kvm.c_handle_kvm_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_kvm_stat = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.perf_evsel*, %struct.perf_sample*, %struct.event_key*)*, i64 (%struct.perf_evsel*, %struct.perf_sample*, %struct.event_key*)* }
%struct.event_key = type { i32 }
%struct.thread = type { i32 }
%struct.perf_evsel = type { i32 }
%struct.perf_sample = type { i32 }
%struct.vcpu_event_record = type { i64 }

@INVALID_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_kvm_stat*, %struct.thread*, %struct.perf_evsel*, %struct.perf_sample*)* @handle_kvm_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_kvm_event(%struct.perf_kvm_stat* %0, %struct.thread* %1, %struct.perf_evsel* %2, %struct.perf_sample* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_kvm_stat*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.perf_evsel*, align 8
  %9 = alloca %struct.perf_sample*, align 8
  %10 = alloca %struct.vcpu_event_record*, align 8
  %11 = alloca %struct.event_key, align 4
  store %struct.perf_kvm_stat* %0, %struct.perf_kvm_stat** %6, align 8
  store %struct.thread* %1, %struct.thread** %7, align 8
  store %struct.perf_evsel* %2, %struct.perf_evsel** %8, align 8
  store %struct.perf_sample* %3, %struct.perf_sample** %9, align 8
  %12 = getelementptr inbounds %struct.event_key, %struct.event_key* %11, i32 0, i32 0
  %13 = load i32, i32* @INVALID_KEY, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.thread*, %struct.thread** %7, align 8
  %15 = load %struct.perf_evsel*, %struct.perf_evsel** %8, align 8
  %16 = load %struct.perf_sample*, %struct.perf_sample** %9, align 8
  %17 = call %struct.vcpu_event_record* @per_vcpu_record(%struct.thread* %14, %struct.perf_evsel* %15, %struct.perf_sample* %16)
  store %struct.vcpu_event_record* %17, %struct.vcpu_event_record** %10, align 8
  %18 = load %struct.vcpu_event_record*, %struct.vcpu_event_record** %10, align 8
  %19 = icmp ne %struct.vcpu_event_record* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %71

21:                                               ; preds = %4
  %22 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %6, align 8
  %23 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %6, align 8
  %28 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = load %struct.vcpu_event_record*, %struct.vcpu_event_record** %10, align 8
  %32 = getelementptr inbounds %struct.vcpu_event_record, %struct.vcpu_event_record* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i32 1, i32* %5, align 4
  br label %71

36:                                               ; preds = %26, %21
  %37 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %6, align 8
  %38 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64 (%struct.perf_evsel*, %struct.perf_sample*, %struct.event_key*)*, i64 (%struct.perf_evsel*, %struct.perf_sample*, %struct.event_key*)** %40, align 8
  %42 = load %struct.perf_evsel*, %struct.perf_evsel** %8, align 8
  %43 = load %struct.perf_sample*, %struct.perf_sample** %9, align 8
  %44 = call i64 %41(%struct.perf_evsel* %42, %struct.perf_sample* %43, %struct.event_key* %11)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %36
  %47 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %6, align 8
  %48 = load %struct.vcpu_event_record*, %struct.vcpu_event_record** %10, align 8
  %49 = load %struct.perf_sample*, %struct.perf_sample** %9, align 8
  %50 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @handle_begin_event(%struct.perf_kvm_stat* %47, %struct.vcpu_event_record* %48, %struct.event_key* %11, i32 %51)
  store i32 %52, i32* %5, align 4
  br label %71

53:                                               ; preds = %36
  %54 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %6, align 8
  %55 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64 (%struct.perf_evsel*, %struct.perf_sample*, %struct.event_key*)*, i64 (%struct.perf_evsel*, %struct.perf_sample*, %struct.event_key*)** %57, align 8
  %59 = load %struct.perf_evsel*, %struct.perf_evsel** %8, align 8
  %60 = load %struct.perf_sample*, %struct.perf_sample** %9, align 8
  %61 = call i64 %58(%struct.perf_evsel* %59, %struct.perf_sample* %60, %struct.event_key* %11)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %53
  %64 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %6, align 8
  %65 = load %struct.vcpu_event_record*, %struct.vcpu_event_record** %10, align 8
  %66 = load %struct.perf_sample*, %struct.perf_sample** %9, align 8
  %67 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @handle_end_event(%struct.perf_kvm_stat* %64, %struct.vcpu_event_record* %65, %struct.event_key* %11, i32 %68)
  store i32 %69, i32* %5, align 4
  br label %71

70:                                               ; preds = %53
  store i32 1, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %63, %46, %35, %20
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local %struct.vcpu_event_record* @per_vcpu_record(%struct.thread*, %struct.perf_evsel*, %struct.perf_sample*) #1

declare dso_local i32 @handle_begin_event(%struct.perf_kvm_stat*, %struct.vcpu_event_record*, %struct.event_key*, i32) #1

declare dso_local i32 @handle_end_event(%struct.perf_kvm_stat*, %struct.vcpu_event_record*, %struct.event_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
