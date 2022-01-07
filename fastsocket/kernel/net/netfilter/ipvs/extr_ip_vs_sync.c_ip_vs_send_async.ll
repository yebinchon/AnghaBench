; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_send_async.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_send_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.msghdr = type { i32 }
%struct.kvec = type { i64, i8* }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i8*, i64)* @ip_vs_send_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_send_async(%struct.socket* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.msghdr, align 4
  %8 = alloca %struct.kvec, align 8
  %9 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 0
  %11 = load i32, i32* @MSG_DONTWAIT, align 4
  %12 = load i32, i32* @MSG_NOSIGNAL, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %10, align 4
  %14 = call i32 @EnterFunction(i32 7)
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds %struct.kvec, %struct.kvec* %8, i32 0, i32 1
  store i8* %15, i8** %16, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds %struct.kvec, %struct.kvec* %8, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = load %struct.socket*, %struct.socket** %4, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @kernel_sendmsg(%struct.socket* %19, %struct.msghdr* %7, %struct.kvec* %8, i32 1, i64 %20)
  store i32 %21, i32* %9, align 4
  %22 = call i32 @LeaveFunction(i32 7)
  %23 = load i32, i32* %9, align 4
  ret i32 %23
}

declare dso_local i32 @EnterFunction(i32) #1

declare dso_local i32 @kernel_sendmsg(%struct.socket*, %struct.msghdr*, %struct.kvec*, i32, i64) #1

declare dso_local i32 @LeaveFunction(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
