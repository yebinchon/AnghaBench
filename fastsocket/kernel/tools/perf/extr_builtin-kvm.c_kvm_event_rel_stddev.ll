; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-kvm.c_kvm_event_rel_stddev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-kvm.c_kvm_event_rel_stddev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_event = type { %struct.kvm_event_stats*, %struct.kvm_event_stats }
%struct.kvm_event_stats = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32, %struct.kvm_event*)* @kvm_event_rel_stddev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @kvm_event_rel_stddev(i32 %0, %struct.kvm_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_event*, align 8
  %5 = alloca %struct.kvm_event_stats*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.kvm_event* %1, %struct.kvm_event** %4, align 8
  %6 = load %struct.kvm_event*, %struct.kvm_event** %4, align 8
  %7 = getelementptr inbounds %struct.kvm_event, %struct.kvm_event* %6, i32 0, i32 1
  store %struct.kvm_event_stats* %7, %struct.kvm_event_stats** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.kvm_event*, %struct.kvm_event** %4, align 8
  %12 = getelementptr inbounds %struct.kvm_event, %struct.kvm_event* %11, i32 0, i32 0
  %13 = load %struct.kvm_event_stats*, %struct.kvm_event_stats** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.kvm_event_stats, %struct.kvm_event_stats* %13, i64 %15
  store %struct.kvm_event_stats* %16, %struct.kvm_event_stats** %5, align 8
  br label %17

17:                                               ; preds = %10, %2
  %18 = load %struct.kvm_event_stats*, %struct.kvm_event_stats** %5, align 8
  %19 = getelementptr inbounds %struct.kvm_event_stats, %struct.kvm_event_stats* %18, i32 0, i32 0
  %20 = call i32 @stddev_stats(i32* %19)
  %21 = load %struct.kvm_event_stats*, %struct.kvm_event_stats** %5, align 8
  %22 = getelementptr inbounds %struct.kvm_event_stats, %struct.kvm_event_stats* %21, i32 0, i32 0
  %23 = call i32 @avg_stats(i32* %22)
  %24 = call double @rel_stddev_stats(i32 %20, i32 %23)
  ret double %24
}

declare dso_local double @rel_stddev_stats(i32, i32) #1

declare dso_local i32 @stddev_stats(i32*) #1

declare dso_local i32 @avg_stats(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
