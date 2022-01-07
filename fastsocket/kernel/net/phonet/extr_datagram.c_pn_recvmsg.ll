; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_datagram.c_pn_recvmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_datagram.c_pn_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.sock = type { i32 }
%struct.msghdr = type { i32, i32*, i32 }
%struct.sk_buff = type { i32 }
%struct.sockaddr_pn = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@MSG_OOB = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.sock*, %struct.msghdr*, i64, i32, i32, i32*)* @pn_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn_recvmsg(%struct.kiocb* %0, %struct.sock* %1, %struct.msghdr* %2, i64 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.kiocb*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.msghdr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca %struct.sockaddr_pn, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %8, align 8
  store %struct.sock* %1, %struct.sock** %9, align 8
  store %struct.msghdr* %2, %struct.msghdr** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %15, align 8
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %17, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* @MSG_OOB, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %7
  br label %92

26:                                               ; preds = %7
  %27 = load %struct.sock*, %struct.sock** %9, align 8
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %12, align 4
  %30 = call %struct.sk_buff* @skb_recv_datagram(%struct.sock* %27, i32 %28, i32 %29, i32* %17)
  store %struct.sk_buff* %30, %struct.sk_buff** %15, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %32 = icmp eq %struct.sk_buff* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %92

34:                                               ; preds = %26
  %35 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %36 = call i32 @pn_skb_get_src_sockaddr(%struct.sk_buff* %35, %struct.sockaddr_pn* %16)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %18, align 4
  %40 = load i64, i64* %11, align 8
  %41 = load i32, i32* %18, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp ult i64 %40, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %34
  %45 = load i32, i32* @MSG_TRUNC, align 4
  %46 = load %struct.msghdr*, %struct.msghdr** %10, align 8
  %47 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load i64, i64* %11, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %18, align 4
  br label %52

52:                                               ; preds = %44, %34
  %53 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %54 = load %struct.msghdr*, %struct.msghdr** %10, align 8
  %55 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %18, align 4
  %58 = call i32 @skb_copy_datagram_iovec(%struct.sk_buff* %53, i32 0, i32 %56, i32 %57)
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %17, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load i32, i32* @EFAULT, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %17, align 4
  br label %88

64:                                               ; preds = %52
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* @MSG_TRUNC, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  br label %75

73:                                               ; preds = %64
  %74 = load i32, i32* %18, align 4
  br label %75

75:                                               ; preds = %73, %69
  %76 = phi i32 [ %72, %69 ], [ %74, %73 ]
  store i32 %76, i32* %17, align 4
  %77 = load %struct.msghdr*, %struct.msghdr** %10, align 8
  %78 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load %struct.msghdr*, %struct.msghdr** %10, align 8
  %83 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @memcpy(i32* %84, %struct.sockaddr_pn* %16, i32 4)
  %86 = load i32*, i32** %14, align 8
  store i32 4, i32* %86, align 4
  br label %87

87:                                               ; preds = %81, %75
  br label %88

88:                                               ; preds = %87, %61
  %89 = load %struct.sock*, %struct.sock** %9, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %91 = call i32 @skb_free_datagram(%struct.sock* %89, %struct.sk_buff* %90)
  br label %92

92:                                               ; preds = %88, %33, %25
  %93 = load i32, i32* %17, align 4
  ret i32 %93
}

declare dso_local %struct.sk_buff* @skb_recv_datagram(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @pn_skb_get_src_sockaddr(%struct.sk_buff*, %struct.sockaddr_pn*) #1

declare dso_local i32 @skb_copy_datagram_iovec(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr_pn*, i32) #1

declare dso_local i32 @skb_free_datagram(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
