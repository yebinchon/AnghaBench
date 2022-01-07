; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_socket.c_sctp_addr_id2transport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_socket.c_sctp_addr_id2transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_transport = type { i32 }
%struct.sock = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sctp_association = type { i32 }
%union.sctp_addr = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_4__*, %union.sctp_addr*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_transport* (%struct.sock*, %struct.sockaddr_storage*, i32)* @sctp_addr_id2transport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_transport* @sctp_addr_id2transport(%struct.sock* %0, %struct.sockaddr_storage* %1, i32 %2) #0 {
  %4 = alloca %struct.sctp_transport*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sockaddr_storage*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca %struct.sctp_association*, align 8
  %10 = alloca %struct.sctp_transport*, align 8
  %11 = alloca %union.sctp_addr*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.sctp_association* null, %struct.sctp_association** %8, align 8
  store %struct.sctp_association* null, %struct.sctp_association** %9, align 8
  %12 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %13 = bitcast %struct.sockaddr_storage* %12 to %union.sctp_addr*
  store %union.sctp_addr* %13, %union.sctp_addr** %11, align 8
  %14 = load %struct.sock*, %struct.sock** %5, align 8
  %15 = call %struct.TYPE_4__* @sctp_sk(%struct.sock* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %union.sctp_addr*, %union.sctp_addr** %11, align 8
  %19 = call %struct.sctp_association* @sctp_endpoint_lookup_assoc(i32 %17, %union.sctp_addr* %18, %struct.sctp_transport** %10)
  store %struct.sctp_association* %19, %struct.sctp_association** %8, align 8
  %20 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %21 = icmp ne %struct.sctp_association* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store %struct.sctp_transport* null, %struct.sctp_transport** %4, align 8
  br label %47

23:                                               ; preds = %3
  %24 = load %struct.sock*, %struct.sock** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call %struct.sctp_association* @sctp_id2assoc(%struct.sock* %24, i32 %25)
  store %struct.sctp_association* %26, %struct.sctp_association** %9, align 8
  %27 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %28 = icmp ne %struct.sctp_association* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %31 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %32 = icmp ne %struct.sctp_association* %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store %struct.sctp_transport* null, %struct.sctp_transport** %4, align 8
  br label %47

34:                                               ; preds = %29, %23
  %35 = load %struct.sock*, %struct.sock** %5, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.TYPE_5__* @sctp_get_pf_specific(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_4__*, %union.sctp_addr*)*, i32 (%struct.TYPE_4__*, %union.sctp_addr*)** %39, align 8
  %41 = load %struct.sock*, %struct.sock** %5, align 8
  %42 = call %struct.TYPE_4__* @sctp_sk(%struct.sock* %41)
  %43 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %44 = bitcast %struct.sockaddr_storage* %43 to %union.sctp_addr*
  %45 = call i32 %40(%struct.TYPE_4__* %42, %union.sctp_addr* %44)
  %46 = load %struct.sctp_transport*, %struct.sctp_transport** %10, align 8
  store %struct.sctp_transport* %46, %struct.sctp_transport** %4, align 8
  br label %47

47:                                               ; preds = %34, %33, %22
  %48 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  ret %struct.sctp_transport* %48
}

declare dso_local %struct.sctp_association* @sctp_endpoint_lookup_assoc(i32, %union.sctp_addr*, %struct.sctp_transport**) #1

declare dso_local %struct.TYPE_4__* @sctp_sk(%struct.sock*) #1

declare dso_local %struct.sctp_association* @sctp_id2assoc(%struct.sock*, i32) #1

declare dso_local %struct.TYPE_5__* @sctp_get_pf_specific(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
