; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_inet.c_ipv4_parse_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_inet.c_ipv4_parse_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_sock = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.msghdr = type { i32 }
%struct.sockcred = type { i64 }
%struct.cmsghdr = type { i64, i64 }

@IPPROTO_IP = common dso_local global i64 0, align 8
@IP_RECVDSTADDR = common dso_local global i64 0, align 8
@SOL_SOCKET = common dso_local global i64 0, align 8
@SCM_CREDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port_sock*, %struct.msghdr*)* @ipv4_parse_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipv4_parse_ctrl(%struct.port_sock* %0, %struct.msghdr* %1) #0 {
  %3 = alloca %struct.port_sock*, align 8
  %4 = alloca %struct.msghdr*, align 8
  %5 = alloca %struct.sockcred*, align 8
  %6 = alloca %struct.cmsghdr*, align 8
  store %struct.port_sock* %0, %struct.port_sock** %3, align 8
  store %struct.msghdr* %1, %struct.msghdr** %4, align 8
  store %struct.sockcred* null, %struct.sockcred** %5, align 8
  %7 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %8 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %7)
  store %struct.cmsghdr* %8, %struct.cmsghdr** %6, align 8
  br label %9

9:                                                ; preds = %50, %2
  %10 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %11 = icmp ne %struct.cmsghdr* %10, null
  br i1 %11, label %12, label %54

12:                                               ; preds = %9
  %13 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %14 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IPPROTO_IP, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %12
  %19 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %20 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IP_RECVDSTADDR, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load %struct.port_sock*, %struct.port_sock** %3, align 8
  %26 = getelementptr inbounds %struct.port_sock, %struct.port_sock* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %29 = call i64 @CMSG_DATA(%struct.cmsghdr* %28)
  %30 = call i32 @memcpy(i32* %27, i64 %29, i32 4)
  br label %49

31:                                               ; preds = %18, %12
  %32 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %33 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SOL_SOCKET, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %39 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SCM_CREDS, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %45 = call i64 @CMSG_DATA(%struct.cmsghdr* %44)
  %46 = inttoptr i64 %45 to i8*
  %47 = bitcast i8* %46 to %struct.sockcred*
  store %struct.sockcred* %47, %struct.sockcred** %5, align 8
  br label %48

48:                                               ; preds = %43, %37, %31
  br label %49

49:                                               ; preds = %48, %24
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %52 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %53 = call %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr* %51, %struct.cmsghdr* %52)
  store %struct.cmsghdr* %53, %struct.cmsghdr** %6, align 8
  br label %9

54:                                               ; preds = %9
  %55 = load %struct.port_sock*, %struct.port_sock** %3, align 8
  %56 = getelementptr inbounds %struct.port_sock, %struct.port_sock* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  %58 = load %struct.port_sock*, %struct.port_sock** %3, align 8
  %59 = getelementptr inbounds %struct.port_sock, %struct.port_sock* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %54
  %64 = load %struct.sockcred*, %struct.sockcred** %5, align 8
  %65 = icmp ne %struct.sockcred* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load %struct.sockcred*, %struct.sockcred** %5, align 8
  %68 = getelementptr inbounds %struct.sockcred, %struct.sockcred* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  %71 = zext i1 %70 to i32
  %72 = load %struct.port_sock*, %struct.port_sock** %3, align 8
  %73 = getelementptr inbounds %struct.port_sock, %struct.port_sock* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  br label %75

75:                                               ; preds = %66, %63, %54
  ret void
}

declare dso_local %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr*) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i64 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr*, %struct.cmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
