; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ping.c_inet_get_ping_group_range_net.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ping.c_inet_get_ping_group_range_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.net = type { i32* }

@sysctl_local_ports = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, i32*, i32*)* @inet_get_ping_group_range_net to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inet_get_ping_group_range_net(%struct.net* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.net*, %struct.net** %4, align 8
  %10 = getelementptr inbounds %struct.net, %struct.net* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %7, align 8
  br label %12

12:                                               ; preds = %22, %3
  %13 = call i32 @read_seqbegin(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sysctl_local_ports, i32 0, i32 0))
  store i32 %13, i32* %8, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %5, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %6, align 8
  store i32 %20, i32* %21, align 4
  br label %22

22:                                               ; preds = %12
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @read_seqretry(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sysctl_local_ports, i32 0, i32 0), i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %12, label %26

26:                                               ; preds = %22
  ret void
}

declare dso_local i32 @read_seqbegin(i32*) #1

declare dso_local i64 @read_seqretry(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
