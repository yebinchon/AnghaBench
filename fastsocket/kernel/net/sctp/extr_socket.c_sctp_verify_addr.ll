; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_socket.c_sctp_verify_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_socket.c_sctp_verify_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%union.sctp_addr = type { i32 }
%struct.sctp_af = type { i32 (%union.sctp_addr*, %struct.TYPE_7__*, i32*)* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, %union.sctp_addr*)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %union.sctp_addr*, i32)* @sctp_verify_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_verify_addr(%struct.sock* %0, %union.sctp_addr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %union.sctp_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sctp_af*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %union.sctp_addr* %1, %union.sctp_addr** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.sock*, %struct.sock** %5, align 8
  %10 = call %struct.TYPE_7__* @sctp_sk(%struct.sock* %9)
  %11 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.sctp_af* @sctp_sockaddr_af(%struct.TYPE_7__* %10, %union.sctp_addr* %11, i32 %12)
  store %struct.sctp_af* %13, %struct.sctp_af** %8, align 8
  %14 = load %struct.sctp_af*, %struct.sctp_af** %8, align 8
  %15 = icmp ne %struct.sctp_af* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %47

19:                                               ; preds = %3
  %20 = load %struct.sctp_af*, %struct.sctp_af** %8, align 8
  %21 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %20, i32 0, i32 0
  %22 = load i32 (%union.sctp_addr*, %struct.TYPE_7__*, i32*)*, i32 (%union.sctp_addr*, %struct.TYPE_7__*, i32*)** %21, align 8
  %23 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %24 = load %struct.sock*, %struct.sock** %5, align 8
  %25 = call %struct.TYPE_7__* @sctp_sk(%struct.sock* %24)
  %26 = call i32 %22(%union.sctp_addr* %23, %struct.TYPE_7__* %25, i32* null)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %47

31:                                               ; preds = %19
  %32 = load %struct.sock*, %struct.sock** %5, align 8
  %33 = call %struct.TYPE_7__* @sctp_sk(%struct.sock* %32)
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32 (%struct.TYPE_7__*, %union.sctp_addr*)*, i32 (%struct.TYPE_7__*, %union.sctp_addr*)** %36, align 8
  %38 = load %struct.sock*, %struct.sock** %5, align 8
  %39 = call %struct.TYPE_7__* @sctp_sk(%struct.sock* %38)
  %40 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %41 = call i32 %37(%struct.TYPE_7__* %39, %union.sctp_addr* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %31
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %47

46:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %43, %28, %16
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.sctp_af* @sctp_sockaddr_af(%struct.TYPE_7__*, %union.sctp_addr*, i32) #1

declare dso_local %struct.TYPE_7__* @sctp_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
