; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-kvm.c_handle_end_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-kvm.c_handle_end_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_kvm_stat = type { i32 }
%struct.vcpu_event_record = type { i32, i64, %struct.kvm_event* }
%struct.kvm_event = type { i32 }
%struct.event_key = type { i64 }

@INVALID_KEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_kvm_stat*, %struct.vcpu_event_record*, %struct.event_key*, i64)* @handle_end_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_end_event(%struct.perf_kvm_stat* %0, %struct.vcpu_event_record* %1, %struct.event_key* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_kvm_stat*, align 8
  %7 = alloca %struct.vcpu_event_record*, align 8
  %8 = alloca %struct.event_key*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.kvm_event*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.perf_kvm_stat* %0, %struct.perf_kvm_stat** %6, align 8
  store %struct.vcpu_event_record* %1, %struct.vcpu_event_record** %7, align 8
  store %struct.event_key* %2, %struct.event_key** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %6, align 8
  %15 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 -1, i32* %13, align 4
  br label %23

19:                                               ; preds = %4
  %20 = load %struct.vcpu_event_record*, %struct.vcpu_event_record** %7, align 8
  %21 = getelementptr inbounds %struct.vcpu_event_record, %struct.vcpu_event_record* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %13, align 4
  br label %23

23:                                               ; preds = %19, %18
  %24 = load %struct.vcpu_event_record*, %struct.vcpu_event_record** %7, align 8
  %25 = getelementptr inbounds %struct.vcpu_event_record, %struct.vcpu_event_record* %24, i32 0, i32 2
  %26 = load %struct.kvm_event*, %struct.kvm_event** %25, align 8
  store %struct.kvm_event* %26, %struct.kvm_event** %10, align 8
  %27 = load %struct.vcpu_event_record*, %struct.vcpu_event_record** %7, align 8
  %28 = getelementptr inbounds %struct.vcpu_event_record, %struct.vcpu_event_record* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  store i32 1, i32* %5, align 4
  br label %71

33:                                               ; preds = %23
  %34 = load %struct.kvm_event*, %struct.kvm_event** %10, align 8
  %35 = icmp ne %struct.kvm_event* %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %33
  %37 = load %struct.event_key*, %struct.event_key** %8, align 8
  %38 = getelementptr inbounds %struct.event_key, %struct.event_key* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @INVALID_KEY, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 1, i32* %5, align 4
  br label %71

43:                                               ; preds = %36, %33
  %44 = load %struct.kvm_event*, %struct.kvm_event** %10, align 8
  %45 = icmp ne %struct.kvm_event* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %6, align 8
  %48 = load %struct.event_key*, %struct.event_key** %8, align 8
  %49 = call %struct.kvm_event* @find_create_kvm_event(%struct.perf_kvm_stat* %47, %struct.event_key* %48)
  store %struct.kvm_event* %49, %struct.kvm_event** %10, align 8
  br label %50

50:                                               ; preds = %46, %43
  %51 = load %struct.kvm_event*, %struct.kvm_event** %10, align 8
  %52 = icmp ne %struct.kvm_event* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %71

54:                                               ; preds = %50
  %55 = load %struct.vcpu_event_record*, %struct.vcpu_event_record** %7, align 8
  %56 = getelementptr inbounds %struct.vcpu_event_record, %struct.vcpu_event_record* %55, i32 0, i32 2
  store %struct.kvm_event* null, %struct.kvm_event** %56, align 8
  %57 = load %struct.vcpu_event_record*, %struct.vcpu_event_record** %7, align 8
  %58 = getelementptr inbounds %struct.vcpu_event_record, %struct.vcpu_event_record* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %11, align 8
  %61 = icmp slt i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @BUG_ON(i32 %62)
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %11, align 8
  %66 = sub nsw i64 %64, %65
  store i64 %66, i64* %12, align 8
  %67 = load %struct.kvm_event*, %struct.kvm_event** %10, align 8
  %68 = load i32, i32* %13, align 4
  %69 = load i64, i64* %12, align 8
  %70 = call i32 @update_kvm_event(%struct.kvm_event* %67, i32 %68, i64 %69)
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %54, %53, %42, %32
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local %struct.kvm_event* @find_create_kvm_event(%struct.perf_kvm_stat*, %struct.event_key*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @update_kvm_event(%struct.kvm_event*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
