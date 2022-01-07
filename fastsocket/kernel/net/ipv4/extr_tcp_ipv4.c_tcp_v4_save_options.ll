; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_ipv4.c_tcp_v4_save_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_ipv4.c_tcp_v4_save_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_options = type { i64 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { %struct.ip_options }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip_options* (%struct.sock*, %struct.sk_buff*)* @tcp_v4_save_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip_options* @tcp_v4_save_options(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ip_options*, align 8
  %6 = alloca %struct.ip_options*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = call %struct.TYPE_2__* @IPCB(%struct.sk_buff* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.ip_options* %9, %struct.ip_options** %5, align 8
  store %struct.ip_options* null, %struct.ip_options** %6, align 8
  %10 = load %struct.ip_options*, %struct.ip_options** %5, align 8
  %11 = icmp ne %struct.ip_options* %10, null
  br i1 %11, label %12, label %38

12:                                               ; preds = %2
  %13 = load %struct.ip_options*, %struct.ip_options** %5, align 8
  %14 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %12
  %18 = load %struct.ip_options*, %struct.ip_options** %5, align 8
  %19 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = call %struct.ip_options* @kmalloc_ip_options(i64 %20, i32 %21)
  store %struct.ip_options* %22, %struct.ip_options** %6, align 8
  %23 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %24 = icmp ne %struct.ip_options* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %17
  %26 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call i64 @ip_options_echo(%struct.ip_options* %26, %struct.sk_buff* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %32 = call i32 @kfree_ip_options(%struct.ip_options* %31)
  store %struct.ip_options* null, %struct.ip_options** %6, align 8
  br label %36

33:                                               ; preds = %25
  %34 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %35 = call i32 @rhel_ip_options_set_alloc_flag(%struct.ip_options* %34)
  br label %36

36:                                               ; preds = %33, %30
  br label %37

37:                                               ; preds = %36, %17
  br label %38

38:                                               ; preds = %37, %12, %2
  %39 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  ret %struct.ip_options* %39
}

declare dso_local %struct.TYPE_2__* @IPCB(%struct.sk_buff*) #1

declare dso_local %struct.ip_options* @kmalloc_ip_options(i64, i32) #1

declare dso_local i64 @ip_options_echo(%struct.ip_options*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_ip_options(%struct.ip_options*) #1

declare dso_local i32 @rhel_ip_options_set_alloc_flag(%struct.ip_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
