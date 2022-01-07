; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_inet.c_ipv4_setsrc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_inet.c_ipv4_setsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.msghdr = type { i32 }
%struct.cmsghdr = type { i32, i32, i32 }

@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_SENDSRCADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port_sock*, %struct.msghdr*)* @ipv4_setsrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipv4_setsrc(%struct.port_sock* %0, %struct.msghdr* %1) #0 {
  %3 = alloca %struct.port_sock*, align 8
  %4 = alloca %struct.msghdr*, align 8
  %5 = alloca %struct.cmsghdr*, align 8
  store %struct.port_sock* %0, %struct.port_sock** %3, align 8
  store %struct.msghdr* %1, %struct.msghdr** %4, align 8
  %6 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %7 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %6)
  store %struct.cmsghdr* %7, %struct.cmsghdr** %5, align 8
  %8 = load i32, i32* @IPPROTO_IP, align 4
  %9 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %10 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @IP_SENDSRCADDR, align 4
  %12 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %13 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = call i32 @CMSG_LEN(i32 4)
  %15 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %16 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %18 = call i32 @CMSG_DATA(%struct.cmsghdr* %17)
  %19 = load %struct.port_sock*, %struct.port_sock** %3, align 8
  %20 = getelementptr inbounds %struct.port_sock, %struct.port_sock* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @memcpy(i32 %18, i32* %21, i32 4)
  %23 = call i32 @CMSG_SPACE(i32 4)
  %24 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %25 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  ret void
}

declare dso_local %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr*) #1

declare dso_local i32 @CMSG_LEN(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local i32 @CMSG_SPACE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
