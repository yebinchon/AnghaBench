; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_inet.c_ipv6_parse_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_inet.c_ipv6_parse_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_sock = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.msghdr = type { i32 }
%struct.sockcred = type { i64 }
%struct.cmsghdr = type { i64, i64 }
%struct.in6_pktinfo = type { i32, i32 }

@IPPROTO_IPV6 = common dso_local global i64 0, align 8
@IPV6_PKTINFO = common dso_local global i64 0, align 8
@SOL_SOCKET = common dso_local global i64 0, align 8
@SCM_CREDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port_sock*, %struct.msghdr*)* @ipv6_parse_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipv6_parse_ctrl(%struct.port_sock* %0, %struct.msghdr* %1) #0 {
  %3 = alloca %struct.port_sock*, align 8
  %4 = alloca %struct.msghdr*, align 8
  %5 = alloca %struct.sockcred*, align 8
  %6 = alloca %struct.cmsghdr*, align 8
  %7 = alloca %struct.in6_pktinfo*, align 8
  store %struct.port_sock* %0, %struct.port_sock** %3, align 8
  store %struct.msghdr* %1, %struct.msghdr** %4, align 8
  store %struct.sockcred* null, %struct.sockcred** %5, align 8
  %8 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %9 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %8)
  store %struct.cmsghdr* %9, %struct.cmsghdr** %6, align 8
  br label %10

10:                                               ; preds = %71, %2
  %11 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %12 = icmp ne %struct.cmsghdr* %11, null
  br i1 %12, label %13, label %75

13:                                               ; preds = %10
  %14 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %15 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IPPROTO_IPV6, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %52

19:                                               ; preds = %13
  %20 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %21 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IPV6_PKTINFO, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %52

25:                                               ; preds = %19
  %26 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %27 = call i64 @CMSG_DATA(%struct.cmsghdr* %26)
  %28 = inttoptr i64 %27 to i8*
  %29 = bitcast i8* %28 to %struct.in6_pktinfo*
  store %struct.in6_pktinfo* %29, %struct.in6_pktinfo** %7, align 8
  %30 = load %struct.in6_pktinfo*, %struct.in6_pktinfo** %7, align 8
  %31 = getelementptr inbounds %struct.in6_pktinfo, %struct.in6_pktinfo* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.port_sock*, %struct.port_sock** %3, align 8
  %34 = getelementptr inbounds %struct.port_sock, %struct.port_sock* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i32 %32, i32* %36, align 4
  %37 = load %struct.in6_pktinfo*, %struct.in6_pktinfo** %7, align 8
  %38 = getelementptr inbounds %struct.in6_pktinfo, %struct.in6_pktinfo* %37, i32 0, i32 1
  %39 = call i32 @IN6_IS_ADDR_LINKLOCAL(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %25
  br label %46

42:                                               ; preds = %25
  %43 = load %struct.in6_pktinfo*, %struct.in6_pktinfo** %7, align 8
  %44 = getelementptr inbounds %struct.in6_pktinfo, %struct.in6_pktinfo* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  br label %46

46:                                               ; preds = %42, %41
  %47 = phi i32 [ 0, %41 ], [ %45, %42 ]
  %48 = load %struct.port_sock*, %struct.port_sock** %3, align 8
  %49 = getelementptr inbounds %struct.port_sock, %struct.port_sock* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 8
  br label %70

52:                                               ; preds = %19, %13
  %53 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %54 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SOL_SOCKET, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %52
  %59 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %60 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SCM_CREDS, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %66 = call i64 @CMSG_DATA(%struct.cmsghdr* %65)
  %67 = inttoptr i64 %66 to i8*
  %68 = bitcast i8* %67 to %struct.sockcred*
  store %struct.sockcred* %68, %struct.sockcred** %5, align 8
  br label %69

69:                                               ; preds = %64, %58, %52
  br label %70

70:                                               ; preds = %69, %46
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %73 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %74 = call %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr* %72, %struct.cmsghdr* %73)
  store %struct.cmsghdr* %74, %struct.cmsghdr** %6, align 8
  br label %10

75:                                               ; preds = %10
  %76 = load %struct.port_sock*, %struct.port_sock** %3, align 8
  %77 = getelementptr inbounds %struct.port_sock, %struct.port_sock* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  %79 = load %struct.port_sock*, %struct.port_sock** %3, align 8
  %80 = getelementptr inbounds %struct.port_sock, %struct.port_sock* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %75
  %85 = load %struct.sockcred*, %struct.sockcred** %5, align 8
  %86 = icmp ne %struct.sockcred* %85, null
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load %struct.sockcred*, %struct.sockcred** %5, align 8
  %89 = getelementptr inbounds %struct.sockcred, %struct.sockcred* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  %92 = zext i1 %91 to i32
  %93 = load %struct.port_sock*, %struct.port_sock** %3, align 8
  %94 = getelementptr inbounds %struct.port_sock, %struct.port_sock* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 8
  br label %96

96:                                               ; preds = %87, %84, %75
  ret void
}

declare dso_local %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr*) #1

declare dso_local i64 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local i32 @IN6_IS_ADDR_LINKLOCAL(i32*) #1

declare dso_local %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr*, %struct.cmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
