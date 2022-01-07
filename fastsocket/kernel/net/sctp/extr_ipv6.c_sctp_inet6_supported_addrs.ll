; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ipv6.c_sctp_inet6_supported_addrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ipv6.c_sctp_inet6_supported_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_sock = type { i32 }

@SCTP_PARAM_IPV6_ADDRESS = common dso_local global i32 0, align 4
@SCTP_PARAM_IPV4_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_sock*, i32*)* @sctp_inet6_supported_addrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_inet6_supported_addrs(%struct.sctp_sock* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sctp_sock*, align 8
  %5 = alloca i32*, align 8
  store %struct.sctp_sock* %0, %struct.sctp_sock** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32, i32* @SCTP_PARAM_IPV6_ADDRESS, align 4
  %7 = load i32*, i32** %5, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  store i32 %6, i32* %8, align 4
  %9 = load %struct.sctp_sock*, %struct.sctp_sock** %4, align 8
  %10 = icmp ne %struct.sctp_sock* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.sctp_sock*, %struct.sctp_sock** %4, align 8
  %13 = call i32 @sctp_opt2sk(%struct.sctp_sock* %12)
  %14 = call i32 @ipv6_only_sock(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11, %2
  %17 = load i32, i32* @SCTP_PARAM_IPV4_ADDRESS, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 %17, i32* %19, align 4
  store i32 2, i32* %3, align 4
  br label %21

20:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %21

21:                                               ; preds = %20, %16
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @ipv6_only_sock(i32) #1

declare dso_local i32 @sctp_opt2sk(%struct.sctp_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
