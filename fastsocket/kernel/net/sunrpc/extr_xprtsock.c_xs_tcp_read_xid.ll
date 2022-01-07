; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprtsock.c_xs_tcp_read_xid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprtsock.c_xs_tcp_read_xid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_xprt = type { i32, i32, i32, i32 }
%struct.xdr_skb_reader = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"RPC:       reading XID (%Zu bytes)\0A\00", align 1
@TCP_RCV_COPY_XID = common dso_local global i32 0, align 4
@TCP_RCV_READ_CALLDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"RPC:       reading %s XID %08x\0A\00", align 1
@TCP_RPC_REPLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"reply for\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"request with\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock_xprt*, %struct.xdr_skb_reader*)* @xs_tcp_read_xid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xs_tcp_read_xid(%struct.sock_xprt* %0, %struct.xdr_skb_reader* %1) #0 {
  %3 = alloca %struct.sock_xprt*, align 8
  %4 = alloca %struct.xdr_skb_reader*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.sock_xprt* %0, %struct.sock_xprt** %3, align 8
  store %struct.xdr_skb_reader* %1, %struct.xdr_skb_reader** %4, align 8
  %8 = load %struct.sock_xprt*, %struct.sock_xprt** %3, align 8
  %9 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = sub i64 4, %11
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load %struct.sock_xprt*, %struct.sock_xprt** %3, align 8
  %16 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %15, i32 0, i32 3
  %17 = bitcast i32* %16 to i8*
  %18 = load %struct.sock_xprt*, %struct.sock_xprt** %3, align 8
  %19 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %17, i64 %21
  store i8* %22, i8** %7, align 8
  %23 = load %struct.xdr_skb_reader*, %struct.xdr_skb_reader** %4, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @xdr_skb_read_bits(%struct.xdr_skb_reader* %23, i8* %24, i64 %25)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.sock_xprt*, %struct.sock_xprt** %3, align 8
  %29 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 %31, %27
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %29, align 4
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  br label %67

38:                                               ; preds = %2
  %39 = load i32, i32* @TCP_RCV_COPY_XID, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.sock_xprt*, %struct.sock_xprt** %3, align 8
  %42 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* @TCP_RCV_READ_CALLDIR, align 4
  %46 = load %struct.sock_xprt*, %struct.sock_xprt** %3, align 8
  %47 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.sock_xprt*, %struct.sock_xprt** %3, align 8
  %51 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %50, i32 0, i32 2
  store i32 4, i32* %51, align 4
  %52 = load %struct.sock_xprt*, %struct.sock_xprt** %3, align 8
  %53 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @TCP_RPC_REPLY, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)
  %60 = load %struct.sock_xprt*, %struct.sock_xprt** %3, align 8
  %61 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ntohl(i32 %62)
  %64 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %59, i32 %63)
  %65 = load %struct.sock_xprt*, %struct.sock_xprt** %3, align 8
  %66 = call i32 @xs_tcp_check_fraghdr(%struct.sock_xprt* %65)
  br label %67

67:                                               ; preds = %38, %37
  ret void
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i64 @xdr_skb_read_bits(%struct.xdr_skb_reader*, i8*, i64) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @xs_tcp_check_fraghdr(%struct.sock_xprt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
