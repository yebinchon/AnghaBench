; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_datagram.c_pn_sendmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_datagram.c_pn_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.sock = type { i32 }
%struct.msghdr = type { i32, i32, i32, i32* }
%struct.sockaddr_pn = type { i64 }
%struct.sk_buff = type { i32 }

@MSG_OOB = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EDESTADDRREQ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AF_PHONET = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@MAX_PHONET_HEADER = common dso_local global i64 0, align 8
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.sock*, %struct.msghdr*, i64)* @pn_sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn_sendmsg(%struct.kiocb* %0, %struct.sock* %1, %struct.msghdr* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sockaddr_pn*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.sock* %1, %struct.sock** %7, align 8
  store %struct.msghdr* %2, %struct.msghdr** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %14 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MSG_OOB, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %101

22:                                               ; preds = %4
  %23 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %24 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @EDESTADDRREQ, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %101

30:                                               ; preds = %22
  %31 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %32 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = icmp ult i64 %34, 8
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %101

39:                                               ; preds = %30
  %40 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %41 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = bitcast i32* %42 to %struct.sockaddr_pn*
  store %struct.sockaddr_pn* %43, %struct.sockaddr_pn** %10, align 8
  %44 = load %struct.sockaddr_pn*, %struct.sockaddr_pn** %10, align 8
  %45 = getelementptr inbounds %struct.sockaddr_pn, %struct.sockaddr_pn* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @AF_PHONET, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load i32, i32* @EAFNOSUPPORT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %101

52:                                               ; preds = %39
  %53 = load %struct.sock*, %struct.sock** %7, align 8
  %54 = load i64, i64* @MAX_PHONET_HEADER, align 8
  %55 = load i64, i64* %9, align 8
  %56 = add i64 %54, %55
  %57 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %58 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @MSG_DONTWAIT, align 4
  %61 = and i32 %59, %60
  %62 = call %struct.sk_buff* @sock_alloc_send_skb(%struct.sock* %53, i64 %56, i32 %61, i32* %12)
  store %struct.sk_buff* %62, %struct.sk_buff** %11, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %64 = icmp eq %struct.sk_buff* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %52
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %5, align 4
  br label %101

67:                                               ; preds = %52
  %68 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %69 = load i64, i64* @MAX_PHONET_HEADER, align 8
  %70 = call i32 @skb_reserve(%struct.sk_buff* %68, i64 %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i64 @skb_put(%struct.sk_buff* %71, i64 %72)
  %74 = inttoptr i64 %73 to i8*
  %75 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %76 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i64, i64* %9, align 8
  %79 = call i32 @memcpy_fromiovec(i8* %74, i32 %77, i64 %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %67
  %83 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %84 = call i32 @kfree_skb(%struct.sk_buff* %83)
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %5, align 4
  br label %101

86:                                               ; preds = %67
  %87 = load %struct.sock*, %struct.sock** %7, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %89 = load %struct.sockaddr_pn*, %struct.sockaddr_pn** %10, align 8
  %90 = call i32 @pn_skb_send(%struct.sock* %87, %struct.sk_buff* %88, %struct.sockaddr_pn* %89)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp sge i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load i64, i64* %9, align 8
  br label %98

95:                                               ; preds = %86
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  br label %98

98:                                               ; preds = %95, %93
  %99 = phi i64 [ %94, %93 ], [ %97, %95 ]
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %98, %82, %65, %49, %36, %27, %19
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local %struct.sk_buff* @sock_alloc_send_skb(%struct.sock*, i64, i32, i32*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @memcpy_fromiovec(i8*, i32, i64) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @pn_skb_send(%struct.sock*, %struct.sk_buff*, %struct.sockaddr_pn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
