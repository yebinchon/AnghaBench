; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ipv6.c_sctp_v6_to_sk_saddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ipv6.c_sctp_v6_to_sk_saddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sctp_addr = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64* }
%struct.sock = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_10__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@AF_INET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.sctp_addr*, %struct.sock*)* @sctp_v6_to_sk_saddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_v6_to_sk_saddr(%union.sctp_addr* %0, %struct.sock* %1) #0 {
  %3 = alloca %union.sctp_addr*, align 8
  %4 = alloca %struct.sock*, align 8
  store %union.sctp_addr* %0, %union.sctp_addr** %3, align 8
  store %struct.sock* %1, %struct.sock** %4, align 8
  %5 = load %union.sctp_addr*, %union.sctp_addr** %3, align 8
  %6 = bitcast %union.sctp_addr* %5 to %struct.TYPE_12__*
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @AF_INET, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %48

11:                                               ; preds = %2
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = call %struct.TYPE_13__* @sctp_sk(%struct.sock* %12)
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %48

17:                                               ; preds = %11
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = call %struct.TYPE_14__* @inet6_sk(%struct.sock* %18)
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.sock*, %struct.sock** %4, align 8
  %25 = call %struct.TYPE_14__* @inet6_sk(%struct.sock* %24)
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 1
  store i64 0, i64* %29, align 8
  %30 = call i64 @htonl(i32 65535)
  %31 = load %struct.sock*, %struct.sock** %4, align 8
  %32 = call %struct.TYPE_14__* @inet6_sk(%struct.sock* %31)
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 2
  store i64 %30, i64* %36, align 8
  %37 = load %union.sctp_addr*, %union.sctp_addr** %3, align 8
  %38 = bitcast %union.sctp_addr* %37 to %struct.TYPE_9__*
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.sock*, %struct.sock** %4, align 8
  %43 = call %struct.TYPE_14__* @inet6_sk(%struct.sock* %42)
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 3
  store i64 %41, i64* %47, align 8
  br label %57

48:                                               ; preds = %11, %2
  %49 = load %struct.sock*, %struct.sock** %4, align 8
  %50 = call %struct.TYPE_14__* @inet6_sk(%struct.sock* %49)
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load %union.sctp_addr*, %union.sctp_addr** %3, align 8
  %53 = bitcast %union.sctp_addr* %52 to %struct.TYPE_11__*
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = bitcast %struct.TYPE_10__* %51 to i8*
  %56 = bitcast %struct.TYPE_10__* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 8, i1 false)
  br label %57

57:                                               ; preds = %48, %17
  ret void
}

declare dso_local %struct.TYPE_13__* @sctp_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_14__* @inet6_sk(%struct.sock*) #1

declare dso_local i64 @htonl(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
