; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_illinois.c_tcp_illinois_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_illinois.c_tcp_illinois_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.illinois = type { i64, i32, i32 }
%struct.tcpvegas_info = type { i32, i64, i32, i32 }

@INET_DIAG_VEGASINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32, %struct.sk_buff*)* @tcp_illinois_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_illinois_info(%struct.sock* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.illinois*, align 8
  %8 = alloca %struct.tcpvegas_info, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = call %struct.illinois* @inet_csk_ca(%struct.sock* %10)
  store %struct.illinois* %11, %struct.illinois** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @INET_DIAG_VEGASINFO, align 4
  %14 = sub nsw i32 %13, 1
  %15 = shl i32 1, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.tcpvegas_info, %struct.tcpvegas_info* %8, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = getelementptr inbounds %struct.tcpvegas_info, %struct.tcpvegas_info* %8, i32 0, i32 1
  %21 = load %struct.illinois*, %struct.illinois** %7, align 8
  %22 = getelementptr inbounds %struct.illinois, %struct.illinois* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %20, align 8
  %24 = getelementptr inbounds %struct.tcpvegas_info, %struct.tcpvegas_info* %8, i32 0, i32 2
  store i32 0, i32* %24, align 8
  %25 = getelementptr inbounds %struct.tcpvegas_info, %struct.tcpvegas_info* %8, i32 0, i32 3
  %26 = load %struct.illinois*, %struct.illinois** %7, align 8
  %27 = getelementptr inbounds %struct.illinois, %struct.illinois* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %25, align 4
  %29 = getelementptr inbounds %struct.tcpvegas_info, %struct.tcpvegas_info* %8, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %18
  %33 = load %struct.illinois*, %struct.illinois** %7, align 8
  %34 = getelementptr inbounds %struct.illinois, %struct.illinois* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = getelementptr inbounds %struct.tcpvegas_info, %struct.tcpvegas_info* %8, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @do_div(i32 %36, i64 %38)
  %40 = load i32, i32* %9, align 4
  %41 = getelementptr inbounds %struct.tcpvegas_info, %struct.tcpvegas_info* %8, i32 0, i32 2
  store i32 %40, i32* %41, align 8
  br label %42

42:                                               ; preds = %32, %18
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = load i32, i32* @INET_DIAG_VEGASINFO, align 4
  %45 = call i32 @nla_put(%struct.sk_buff* %43, i32 %44, i32 24, %struct.tcpvegas_info* %8)
  br label %46

46:                                               ; preds = %42, %3
  ret void
}

declare dso_local %struct.illinois* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @do_div(i32, i64) #1

declare dso_local i32 @nla_put(%struct.sk_buff*, i32, i32, %struct.tcpvegas_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
