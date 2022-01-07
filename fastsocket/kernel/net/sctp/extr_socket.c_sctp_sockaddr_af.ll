; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_socket.c_sctp_sockaddr_af.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_socket.c_sctp_sockaddr_af.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_af = type { i32 }
%struct.sctp_sock = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i64, %struct.sctp_sock*)* }
%union.sctp_addr = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_af* (%struct.sctp_sock*, %union.sctp_addr*, i32)* @sctp_sockaddr_af to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_af* @sctp_sockaddr_af(%struct.sctp_sock* %0, %union.sctp_addr* %1, i32 %2) #0 {
  %4 = alloca %struct.sctp_af*, align 8
  %5 = alloca %struct.sctp_sock*, align 8
  %6 = alloca %union.sctp_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sctp_af*, align 8
  store %struct.sctp_sock* %0, %struct.sctp_sock** %5, align 8
  store %union.sctp_addr* %1, %union.sctp_addr** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp ult i64 %10, 4
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store %struct.sctp_af* null, %struct.sctp_af** %4, align 8
  br label %67

13:                                               ; preds = %3
  %14 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %15 = bitcast %union.sctp_addr* %14 to %struct.TYPE_5__*
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AF_INET6, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %13
  %21 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %22 = bitcast %union.sctp_addr* %21 to %struct.TYPE_6__*
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = call i64 @ipv6_addr_v4mapped(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %20
  %27 = load %struct.sctp_sock*, %struct.sctp_sock** %5, align 8
  %28 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32 (i64, %struct.sctp_sock*)*, i32 (i64, %struct.sctp_sock*)** %30, align 8
  %32 = load i64, i64* @AF_INET, align 8
  %33 = load %struct.sctp_sock*, %struct.sctp_sock** %5, align 8
  %34 = call i32 %31(i64 %32, %struct.sctp_sock* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  store %struct.sctp_af* null, %struct.sctp_af** %4, align 8
  br label %67

37:                                               ; preds = %26
  br label %53

38:                                               ; preds = %20, %13
  %39 = load %struct.sctp_sock*, %struct.sctp_sock** %5, align 8
  %40 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32 (i64, %struct.sctp_sock*)*, i32 (i64, %struct.sctp_sock*)** %42, align 8
  %44 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %45 = bitcast %union.sctp_addr* %44 to %struct.TYPE_5__*
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.sctp_sock*, %struct.sctp_sock** %5, align 8
  %49 = call i32 %43(i64 %47, %struct.sctp_sock* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %38
  store %struct.sctp_af* null, %struct.sctp_af** %4, align 8
  br label %67

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52, %37
  %54 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %55 = bitcast %union.sctp_addr* %54 to %struct.TYPE_5__*
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call %struct.sctp_af* @sctp_get_af_specific(i64 %57)
  store %struct.sctp_af* %58, %struct.sctp_af** %8, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.sctp_af*, %struct.sctp_af** %8, align 8
  %61 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  store %struct.sctp_af* null, %struct.sctp_af** %4, align 8
  br label %67

65:                                               ; preds = %53
  %66 = load %struct.sctp_af*, %struct.sctp_af** %8, align 8
  store %struct.sctp_af* %66, %struct.sctp_af** %4, align 8
  br label %67

67:                                               ; preds = %65, %64, %51, %36, %12
  %68 = load %struct.sctp_af*, %struct.sctp_af** %4, align 8
  ret %struct.sctp_af* %68
}

declare dso_local i64 @ipv6_addr_v4mapped(i32*) #1

declare dso_local %struct.sctp_af* @sctp_get_af_specific(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
