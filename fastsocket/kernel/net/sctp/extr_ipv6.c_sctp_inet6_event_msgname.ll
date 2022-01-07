; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ipv6.c_sctp_inet6_event_msgname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ipv6.c_sctp_inet6_event_msgname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpevent = type { %struct.sctp_association* }
%struct.sctp_association = type { %struct.TYPE_14__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { %union.sctp_addr, i32 }
%union.sctp_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i32, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_ulpevent*, i8*, i32*)* @sctp_inet6_event_msgname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_inet6_event_msgname(%struct.sctp_ulpevent* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.sctp_ulpevent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockaddr_in6*, align 8
  %8 = alloca %struct.sockaddr_in6*, align 8
  %9 = alloca %union.sctp_addr*, align 8
  %10 = alloca %struct.sctp_association*, align 8
  store %struct.sctp_ulpevent* %0, %struct.sctp_ulpevent** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %84

13:                                               ; preds = %3
  %14 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %4, align 8
  %15 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %14, i32 0, i32 0
  %16 = load %struct.sctp_association*, %struct.sctp_association** %15, align 8
  store %struct.sctp_association* %16, %struct.sctp_association** %10, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @sctp_inet6_msgname(i8* %17, i32* %18)
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %21, %struct.sockaddr_in6** %7, align 8
  %22 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %23 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @htons(i32 %25)
  %27 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %28 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %30 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  store %union.sctp_addr* %31, %union.sctp_addr** %9, align 8
  %32 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %33 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.TYPE_15__* @sctp_sk(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %13
  %41 = load i64, i64* @AF_INET, align 8
  %42 = load %union.sctp_addr*, %union.sctp_addr** %9, align 8
  %43 = bitcast %union.sctp_addr* %42 to %struct.TYPE_11__*
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %41, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %40
  %48 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %49 = bitcast %struct.sockaddr_in6* %48 to %union.sctp_addr*
  %50 = call i32 @sctp_v4_map_v6(%union.sctp_addr* %49)
  %51 = load %union.sctp_addr*, %union.sctp_addr** %9, align 8
  %52 = bitcast %union.sctp_addr* %51 to %struct.TYPE_13__*
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %57 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  store i32 %55, i32* %60, align 4
  br label %84

61:                                               ; preds = %40, %13
  %62 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %63 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = bitcast %union.sctp_addr* %64 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %65, %struct.sockaddr_in6** %8, align 8
  %66 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %67 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %66, i32 0, i32 1
  %68 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %69 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %68, i32 0, i32 1
  %70 = call i32 @ipv6_addr_copy(%struct.TYPE_16__* %67, %struct.TYPE_16__* %69)
  %71 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %72 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %71, i32 0, i32 1
  %73 = call i32 @ipv6_addr_type(%struct.TYPE_16__* %72)
  %74 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %61
  %78 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %79 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %82 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %77, %61
  br label %84

84:                                               ; preds = %47, %83, %3
  ret void
}

declare dso_local i32 @sctp_inet6_msgname(i8*, i32*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.TYPE_15__* @sctp_sk(i32) #1

declare dso_local i32 @sctp_v4_map_v6(%union.sctp_addr*) #1

declare dso_local i32 @ipv6_addr_copy(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i32 @ipv6_addr_type(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
