; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_vegas.c_tcp_vegas_get_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_vegas.c_tcp_vegas_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.vegas = type { i32, i32, i32, i32 }
%struct.tcpvegas_info = type { i32, i32, i32, i32 }

@INET_DIAG_VEGASINFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_vegas_get_info(%struct.sock* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.vegas*, align 8
  %8 = alloca %struct.tcpvegas_info, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.vegas* @inet_csk_ca(%struct.sock* %9)
  store %struct.vegas* %10, %struct.vegas** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @INET_DIAG_VEGASINFO, align 4
  %13 = sub nsw i32 %12, 1
  %14 = shl i32 1, %13
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.tcpvegas_info, %struct.tcpvegas_info* %8, i32 0, i32 0
  %19 = load %struct.vegas*, %struct.vegas** %7, align 8
  %20 = getelementptr inbounds %struct.vegas, %struct.vegas* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %18, align 4
  %22 = getelementptr inbounds %struct.tcpvegas_info, %struct.tcpvegas_info* %8, i32 0, i32 1
  %23 = load %struct.vegas*, %struct.vegas** %7, align 8
  %24 = getelementptr inbounds %struct.vegas, %struct.vegas* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %22, align 4
  %26 = getelementptr inbounds %struct.tcpvegas_info, %struct.tcpvegas_info* %8, i32 0, i32 2
  %27 = load %struct.vegas*, %struct.vegas** %7, align 8
  %28 = getelementptr inbounds %struct.vegas, %struct.vegas* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %26, align 4
  %30 = getelementptr inbounds %struct.tcpvegas_info, %struct.tcpvegas_info* %8, i32 0, i32 3
  %31 = load %struct.vegas*, %struct.vegas** %7, align 8
  %32 = getelementptr inbounds %struct.vegas, %struct.vegas* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %30, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = load i32, i32* @INET_DIAG_VEGASINFO, align 4
  %36 = call i32 @nla_put(%struct.sk_buff* %34, i32 %35, i32 16, %struct.tcpvegas_info* %8)
  br label %37

37:                                               ; preds = %17, %3
  ret void
}

declare dso_local %struct.vegas* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @nla_put(%struct.sk_buff*, i32, i32, %struct.tcpvegas_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
