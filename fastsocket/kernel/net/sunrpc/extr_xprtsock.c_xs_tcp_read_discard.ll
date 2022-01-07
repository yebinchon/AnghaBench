; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprtsock.c_xs_tcp_read_discard.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprtsock.c_xs_tcp_read_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_xprt = type { i64, i64 }
%struct.xdr_skb_reader = type { i64, i64 }

@.str = private unnamed_addr constant [32 x i8] c"RPC:       discarded %Zu bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock_xprt*, %struct.xdr_skb_reader*)* @xs_tcp_read_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xs_tcp_read_discard(%struct.sock_xprt* %0, %struct.xdr_skb_reader* %1) #0 {
  %3 = alloca %struct.sock_xprt*, align 8
  %4 = alloca %struct.xdr_skb_reader*, align 8
  %5 = alloca i64, align 8
  store %struct.sock_xprt* %0, %struct.sock_xprt** %3, align 8
  store %struct.xdr_skb_reader* %1, %struct.xdr_skb_reader** %4, align 8
  %6 = load %struct.sock_xprt*, %struct.sock_xprt** %3, align 8
  %7 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.sock_xprt*, %struct.sock_xprt** %3, align 8
  %10 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = sub i64 %8, %11
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.xdr_skb_reader*, %struct.xdr_skb_reader** %4, align 8
  %15 = getelementptr inbounds %struct.xdr_skb_reader, %struct.xdr_skb_reader* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ugt i64 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.xdr_skb_reader*, %struct.xdr_skb_reader** %4, align 8
  %20 = getelementptr inbounds %struct.xdr_skb_reader, %struct.xdr_skb_reader* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %5, align 8
  br label %22

22:                                               ; preds = %18, %2
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.xdr_skb_reader*, %struct.xdr_skb_reader** %4, align 8
  %25 = getelementptr inbounds %struct.xdr_skb_reader, %struct.xdr_skb_reader* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub i64 %26, %23
  store i64 %27, i64* %25, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.xdr_skb_reader*, %struct.xdr_skb_reader** %4, align 8
  %30 = getelementptr inbounds %struct.xdr_skb_reader, %struct.xdr_skb_reader* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %31, %28
  store i64 %32, i64* %30, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.sock_xprt*, %struct.sock_xprt** %3, align 8
  %35 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, %33
  store i64 %37, i64* %35, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %38)
  %40 = load %struct.sock_xprt*, %struct.sock_xprt** %3, align 8
  %41 = call i32 @xs_tcp_check_fraghdr(%struct.sock_xprt* %40)
  ret void
}

declare dso_local i32 @dprintk(i8*, i64) #1

declare dso_local i32 @xs_tcp_check_fraghdr(%struct.sock_xprt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
