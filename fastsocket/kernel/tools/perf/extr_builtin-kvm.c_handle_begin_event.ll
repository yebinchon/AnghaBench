; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-kvm.c_handle_begin_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-kvm.c_handle_begin_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_kvm_stat = type { i32 }
%struct.vcpu_event_record = type { i32, %struct.kvm_event* }
%struct.kvm_event = type { i32 }
%struct.event_key = type { i64 }

@INVALID_KEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_kvm_stat*, %struct.vcpu_event_record*, %struct.event_key*, i32)* @handle_begin_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_begin_event(%struct.perf_kvm_stat* %0, %struct.vcpu_event_record* %1, %struct.event_key* %2, i32 %3) #0 {
  %5 = alloca %struct.perf_kvm_stat*, align 8
  %6 = alloca %struct.vcpu_event_record*, align 8
  %7 = alloca %struct.event_key*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvm_event*, align 8
  store %struct.perf_kvm_stat* %0, %struct.perf_kvm_stat** %5, align 8
  store %struct.vcpu_event_record* %1, %struct.vcpu_event_record** %6, align 8
  store %struct.event_key* %2, %struct.event_key** %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.kvm_event* null, %struct.kvm_event** %9, align 8
  %10 = load %struct.event_key*, %struct.event_key** %7, align 8
  %11 = getelementptr inbounds %struct.event_key, %struct.event_key* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @INVALID_KEY, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %5, align 8
  %17 = load %struct.event_key*, %struct.event_key** %7, align 8
  %18 = call %struct.kvm_event* @find_create_kvm_event(%struct.perf_kvm_stat* %16, %struct.event_key* %17)
  store %struct.kvm_event* %18, %struct.kvm_event** %9, align 8
  br label %19

19:                                               ; preds = %15, %4
  %20 = load %struct.kvm_event*, %struct.kvm_event** %9, align 8
  %21 = load %struct.vcpu_event_record*, %struct.vcpu_event_record** %6, align 8
  %22 = getelementptr inbounds %struct.vcpu_event_record, %struct.vcpu_event_record* %21, i32 0, i32 1
  store %struct.kvm_event* %20, %struct.kvm_event** %22, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.vcpu_event_record*, %struct.vcpu_event_record** %6, align 8
  %25 = getelementptr inbounds %struct.vcpu_event_record, %struct.vcpu_event_record* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  ret i32 1
}

declare dso_local %struct.kvm_event* @find_create_kvm_event(%struct.perf_kvm_stat*, %struct.event_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
