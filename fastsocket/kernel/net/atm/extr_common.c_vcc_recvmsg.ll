; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_common.c_vcc_recvmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_common.c_vcc_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.socket = type { i64, %struct.sock* }
%struct.sock = type { i32 }
%struct.msghdr = type { i32, i32, i64 }
%struct.atm_vcc = type { i32 }
%struct.sk_buff = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ATM_VF_RELEASED = common dso_local global i32 0, align 4
@ATM_VF_CLOSE = common dso_local global i32 0, align 4
@ATM_VF_READY = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"RcvM %d -= %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vcc_recvmsg(%struct.kiocb* %0, %struct.socket* %1, %struct.msghdr* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kiocb*, align 8
  %8 = alloca %struct.socket*, align 8
  %9 = alloca %struct.msghdr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sock*, align 8
  %13 = alloca %struct.atm_vcc*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %7, align 8
  store %struct.socket* %1, %struct.socket** %8, align 8
  store %struct.msghdr* %2, %struct.msghdr** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.socket*, %struct.socket** %8, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 1
  %19 = load %struct.sock*, %struct.sock** %18, align 8
  store %struct.sock* %19, %struct.sock** %12, align 8
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %16, align 4
  %22 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %23 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.socket*, %struct.socket** %8, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SS_CONNECTED, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %5
  %30 = load i32, i32* @ENOTCONN, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %121

32:                                               ; preds = %5
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @MSG_DONTWAIT, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %121

41:                                               ; preds = %32
  %42 = load %struct.socket*, %struct.socket** %8, align 8
  %43 = call %struct.atm_vcc* @ATM_SD(%struct.socket* %42)
  store %struct.atm_vcc* %43, %struct.atm_vcc** %13, align 8
  %44 = load i32, i32* @ATM_VF_RELEASED, align 4
  %45 = load %struct.atm_vcc*, %struct.atm_vcc** %13, align 8
  %46 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %45, i32 0, i32 0
  %47 = call i64 @test_bit(i32 %44, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* @ATM_VF_CLOSE, align 4
  %51 = load %struct.atm_vcc*, %struct.atm_vcc** %13, align 8
  %52 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %51, i32 0, i32 0
  %53 = call i64 @test_bit(i32 %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* @ATM_VF_READY, align 4
  %57 = load %struct.atm_vcc*, %struct.atm_vcc** %13, align 8
  %58 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %57, i32 0, i32 0
  %59 = call i64 @test_bit(i32 %56, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %55, %49, %41
  store i32 0, i32* %6, align 4
  br label %121

62:                                               ; preds = %55
  %63 = load %struct.sock*, %struct.sock** %12, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @MSG_DONTWAIT, align 4
  %67 = and i32 %65, %66
  %68 = call %struct.sk_buff* @skb_recv_datagram(%struct.sock* %63, i32 %64, i32 %67, i32* %16)
  store %struct.sk_buff* %68, %struct.sk_buff** %14, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %70 = icmp ne %struct.sk_buff* %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %62
  %72 = load i32, i32* %16, align 4
  store i32 %72, i32* %6, align 4
  br label %121

73:                                               ; preds = %62
  %74 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %10, align 8
  %80 = icmp ugt i64 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %73
  %82 = load i64, i64* %10, align 8
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* @MSG_TRUNC, align 4
  %85 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %86 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %81, %73
  %90 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %91 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %92 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %15, align 4
  %95 = call i32 @skb_copy_datagram_iovec(%struct.sk_buff* %90, i32 0, i32 %93, i32 %94)
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %16, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = load i32, i32* %16, align 4
  store i32 %99, i32* %6, align 4
  br label %121

100:                                              ; preds = %89
  %101 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %102 = load %struct.sock*, %struct.sock** %12, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %104 = call i32 @sock_recv_ts_and_drops(%struct.msghdr* %101, %struct.sock* %102, %struct.sk_buff* %103)
  %105 = load %struct.sock*, %struct.sock** %12, align 8
  %106 = getelementptr inbounds %struct.sock, %struct.sock* %105, i32 0, i32 0
  %107 = call i32 @atomic_read(i32* %106)
  %108 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %107, i32 %110)
  %112 = load %struct.atm_vcc*, %struct.atm_vcc** %13, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %114 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @atm_return(%struct.atm_vcc* %112, i32 %115)
  %117 = load %struct.sock*, %struct.sock** %12, align 8
  %118 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %119 = call i32 @skb_free_datagram(%struct.sock* %117, %struct.sk_buff* %118)
  %120 = load i32, i32* %15, align 4
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %100, %98, %71, %61, %38, %29
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local %struct.atm_vcc* @ATM_SD(%struct.socket*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.sk_buff* @skb_recv_datagram(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @skb_copy_datagram_iovec(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @sock_recv_ts_and_drops(%struct.msghdr*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atm_return(%struct.atm_vcc*, i32) #1

declare dso_local i32 @skb_free_datagram(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
