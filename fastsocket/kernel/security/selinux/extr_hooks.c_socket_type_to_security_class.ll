; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_socket_type_to_security_class.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_socket_type_to_security_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SECCLASS_UNIX_STREAM_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_UNIX_DGRAM_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_TCP_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_RAWIP_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_UDP_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_DCCP_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_NETLINK_ROUTE_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_NETLINK_FIREWALL_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_NETLINK_TCPDIAG_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_NETLINK_NFLOG_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_NETLINK_XFRM_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_NETLINK_SELINUX_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_NETLINK_AUDIT_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_NETLINK_IP6FW_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_NETLINK_DNRT_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_NETLINK_KOBJECT_UEVENT_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_NETLINK_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_PACKET_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_KEY_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_APPLETALK_SOCKET = common dso_local global i32 0, align 4
@SECCLASS_SOCKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @socket_type_to_security_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socket_type_to_security_class(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %68 [
    i32 132, label %9
    i32 137, label %16
    i32 136, label %16
    i32 134, label %38
    i32 133, label %62
    i32 135, label %64
    i32 138, label %66
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %15 [
    i32 128, label %11
    i32 129, label %11
    i32 130, label %13
  ]

11:                                               ; preds = %9, %9
  %12 = load i32, i32* @SECCLASS_UNIX_STREAM_SOCKET, align 4
  store i32 %12, i32* %4, align 4
  br label %70

13:                                               ; preds = %9
  %14 = load i32, i32* @SECCLASS_UNIX_DGRAM_SOCKET, align 4
  store i32 %14, i32* %4, align 4
  br label %70

15:                                               ; preds = %9
  br label %68

16:                                               ; preds = %3, %3
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %36 [
    i32 128, label %18
    i32 130, label %26
    i32 131, label %34
  ]

18:                                               ; preds = %16
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @default_protocol_stream(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @SECCLASS_TCP_SOCKET, align 4
  store i32 %23, i32* %4, align 4
  br label %70

24:                                               ; preds = %18
  %25 = load i32, i32* @SECCLASS_RAWIP_SOCKET, align 4
  store i32 %25, i32* %4, align 4
  br label %70

26:                                               ; preds = %16
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @default_protocol_dgram(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @SECCLASS_UDP_SOCKET, align 4
  store i32 %31, i32* %4, align 4
  br label %70

32:                                               ; preds = %26
  %33 = load i32, i32* @SECCLASS_RAWIP_SOCKET, align 4
  store i32 %33, i32* %4, align 4
  br label %70

34:                                               ; preds = %16
  %35 = load i32, i32* @SECCLASS_DCCP_SOCKET, align 4
  store i32 %35, i32* %4, align 4
  br label %70

36:                                               ; preds = %16
  %37 = load i32, i32* @SECCLASS_RAWIP_SOCKET, align 4
  store i32 %37, i32* %4, align 4
  br label %70

38:                                               ; preds = %3
  %39 = load i32, i32* %7, align 4
  switch i32 %39, label %60 [
    i32 141, label %40
    i32 146, label %42
    i32 145, label %44
    i32 142, label %46
    i32 139, label %48
    i32 140, label %50
    i32 148, label %52
    i32 144, label %54
    i32 147, label %56
    i32 143, label %58
  ]

40:                                               ; preds = %38
  %41 = load i32, i32* @SECCLASS_NETLINK_ROUTE_SOCKET, align 4
  store i32 %41, i32* %4, align 4
  br label %70

42:                                               ; preds = %38
  %43 = load i32, i32* @SECCLASS_NETLINK_FIREWALL_SOCKET, align 4
  store i32 %43, i32* %4, align 4
  br label %70

44:                                               ; preds = %38
  %45 = load i32, i32* @SECCLASS_NETLINK_TCPDIAG_SOCKET, align 4
  store i32 %45, i32* %4, align 4
  br label %70

46:                                               ; preds = %38
  %47 = load i32, i32* @SECCLASS_NETLINK_NFLOG_SOCKET, align 4
  store i32 %47, i32* %4, align 4
  br label %70

48:                                               ; preds = %38
  %49 = load i32, i32* @SECCLASS_NETLINK_XFRM_SOCKET, align 4
  store i32 %49, i32* %4, align 4
  br label %70

50:                                               ; preds = %38
  %51 = load i32, i32* @SECCLASS_NETLINK_SELINUX_SOCKET, align 4
  store i32 %51, i32* %4, align 4
  br label %70

52:                                               ; preds = %38
  %53 = load i32, i32* @SECCLASS_NETLINK_AUDIT_SOCKET, align 4
  store i32 %53, i32* %4, align 4
  br label %70

54:                                               ; preds = %38
  %55 = load i32, i32* @SECCLASS_NETLINK_IP6FW_SOCKET, align 4
  store i32 %55, i32* %4, align 4
  br label %70

56:                                               ; preds = %38
  %57 = load i32, i32* @SECCLASS_NETLINK_DNRT_SOCKET, align 4
  store i32 %57, i32* %4, align 4
  br label %70

58:                                               ; preds = %38
  %59 = load i32, i32* @SECCLASS_NETLINK_KOBJECT_UEVENT_SOCKET, align 4
  store i32 %59, i32* %4, align 4
  br label %70

60:                                               ; preds = %38
  %61 = load i32, i32* @SECCLASS_NETLINK_SOCKET, align 4
  store i32 %61, i32* %4, align 4
  br label %70

62:                                               ; preds = %3
  %63 = load i32, i32* @SECCLASS_PACKET_SOCKET, align 4
  store i32 %63, i32* %4, align 4
  br label %70

64:                                               ; preds = %3
  %65 = load i32, i32* @SECCLASS_KEY_SOCKET, align 4
  store i32 %65, i32* %4, align 4
  br label %70

66:                                               ; preds = %3
  %67 = load i32, i32* @SECCLASS_APPLETALK_SOCKET, align 4
  store i32 %67, i32* %4, align 4
  br label %70

68:                                               ; preds = %3, %15
  %69 = load i32, i32* @SECCLASS_SOCKET, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %66, %64, %62, %60, %58, %56, %54, %52, %50, %48, %46, %44, %42, %40, %36, %34, %32, %30, %24, %22, %13, %11
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @default_protocol_stream(i32) #1

declare dso_local i32 @default_protocol_dgram(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
