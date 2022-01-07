; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_notify_and_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_notify_and_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.Qdisc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.nlmsghdr*, i32, %struct.Qdisc*, %struct.Qdisc*)* @notify_and_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @notify_and_destroy(%struct.sk_buff* %0, %struct.nlmsghdr* %1, i32 %2, %struct.Qdisc* %3, %struct.Qdisc* %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nlmsghdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.Qdisc*, align 8
  %10 = alloca %struct.Qdisc*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.Qdisc* %3, %struct.Qdisc** %9, align 8
  store %struct.Qdisc* %4, %struct.Qdisc** %10, align 8
  %11 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %12 = icmp ne %struct.Qdisc* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %5
  %14 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %15 = icmp ne %struct.Qdisc* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %13, %5
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %21 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %22 = call i32 @qdisc_notify(%struct.sk_buff* %17, %struct.nlmsghdr* %18, i32 %19, %struct.Qdisc* %20, %struct.Qdisc* %21)
  br label %23

23:                                               ; preds = %16, %13
  %24 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %25 = icmp ne %struct.Qdisc* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %28 = call i32 @qdisc_destroy(%struct.Qdisc* %27)
  br label %29

29:                                               ; preds = %26, %23
  ret void
}

declare dso_local i32 @qdisc_notify(%struct.sk_buff*, %struct.nlmsghdr*, i32, %struct.Qdisc*, %struct.Qdisc*) #1

declare dso_local i32 @qdisc_destroy(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
