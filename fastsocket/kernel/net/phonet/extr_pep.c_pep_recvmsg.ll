; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_pep.c_pep_recvmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_pep.c_pep_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.sock = type { i32 }
%struct.msghdr = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.pep_sock = type { i32 }

@TCPF_LISTEN = common dso_local global i32 0, align 4
@TCPF_CLOSE = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@MSG_OOB = common dso_local global i32 0, align 4
@SOCK_URGINLINE = common dso_local global i32 0, align 4
@PN_PIPE_NO_ERROR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TCP_CLOSE_WAIT = common dso_local global i64 0, align 8
@ECONNRESET = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@MSG_EOR = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.sock*, %struct.msghdr*, i64, i32, i32, i32*)* @pep_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pep_recvmsg(%struct.kiocb* %0, %struct.sock* %1, %struct.msghdr* %2, i64 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.kiocb*, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.msghdr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.pep_sock*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %9, align 8
  store %struct.sock* %1, %struct.sock** %10, align 8
  store %struct.msghdr* %2, %struct.msghdr** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %19 = load %struct.sock*, %struct.sock** %10, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 1, %21
  %23 = load i32, i32* @TCPF_LISTEN, align 4
  %24 = load i32, i32* @TCPF_CLOSE, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %7
  %30 = load i32, i32* @ENOTCONN, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %8, align 4
  br label %160

32:                                               ; preds = %7
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* @MSG_OOB, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load %struct.sock*, %struct.sock** %10, align 8
  %39 = load i32, i32* @SOCK_URGINLINE, align 4
  %40 = call i64 @sock_flag(%struct.sock* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %70

42:                                               ; preds = %37, %32
  %43 = load %struct.sock*, %struct.sock** %10, align 8
  %44 = call %struct.pep_sock* @pep_sk(%struct.sock* %43)
  store %struct.pep_sock* %44, %struct.pep_sock** %18, align 8
  %45 = load %struct.pep_sock*, %struct.pep_sock** %18, align 8
  %46 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %45, i32 0, i32 0
  %47 = call %struct.sk_buff* @skb_dequeue(i32* %46)
  store %struct.sk_buff* %47, %struct.sk_buff** %16, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %49 = icmp ne %struct.sk_buff* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %42
  %51 = load %struct.sock*, %struct.sock** %10, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %53 = load i32, i32* @PN_PIPE_NO_ERROR, align 4
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i32 @pep_ctrlreq_error(%struct.sock* %51, %struct.sk_buff* %52, i32 %53, i32 %54)
  %56 = load i32, i32* @MSG_OOB, align 4
  %57 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %58 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %111

61:                                               ; preds = %42
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* @MSG_OOB, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %8, align 4
  br label %160

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69, %37
  %71 = load %struct.sock*, %struct.sock** %10, align 8
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %13, align 4
  %74 = call %struct.sk_buff* @skb_recv_datagram(%struct.sock* %71, i32 %72, i32 %73, i32* %17)
  store %struct.sk_buff* %74, %struct.sk_buff** %16, align 8
  %75 = load %struct.sock*, %struct.sock** %10, align 8
  %76 = call i32 @lock_sock(%struct.sock* %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %78 = icmp eq %struct.sk_buff* %77, null
  br i1 %78, label %79, label %98

79:                                               ; preds = %70
  %80 = load i32, i32* %17, align 4
  %81 = load i32, i32* @ENOTCONN, align 4
  %82 = sub nsw i32 0, %81
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %79
  %85 = load %struct.sock*, %struct.sock** %10, align 8
  %86 = getelementptr inbounds %struct.sock, %struct.sock* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* @TCP_CLOSE_WAIT, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load i32, i32* @ECONNRESET, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %17, align 4
  br label %94

94:                                               ; preds = %91, %84, %79
  %95 = load %struct.sock*, %struct.sock** %10, align 8
  %96 = call i32 @release_sock(%struct.sock* %95)
  %97 = load i32, i32* %17, align 4
  store i32 %97, i32* %8, align 4
  br label %160

98:                                               ; preds = %70
  %99 = load %struct.sock*, %struct.sock** %10, align 8
  %100 = getelementptr inbounds %struct.sock, %struct.sock* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* @TCP_ESTABLISHED, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = load %struct.sock*, %struct.sock** %10, align 8
  %107 = call i32 @pipe_grant_credits(%struct.sock* %106)
  br label %108

108:                                              ; preds = %105, %98
  %109 = load %struct.sock*, %struct.sock** %10, align 8
  %110 = call i32 @release_sock(%struct.sock* %109)
  br label %111

111:                                              ; preds = %108, %50
  %112 = load i32, i32* @MSG_EOR, align 4
  %113 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %114 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 4
  %117 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* %12, align 8
  %121 = icmp ugt i64 %119, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %111
  %123 = load i32, i32* @MSG_TRUNC, align 4
  %124 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %125 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 4
  br label %132

128:                                              ; preds = %111
  %129 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %130 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %12, align 8
  br label %132

132:                                              ; preds = %128, %122
  %133 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %134 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %135 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i64, i64* %12, align 8
  %138 = call i32 @skb_copy_datagram_iovec(%struct.sk_buff* %133, i32 0, i32 %136, i64 %137)
  store i32 %138, i32* %17, align 4
  %139 = load i32, i32* %17, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %155, label %141

141:                                              ; preds = %132
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* @MSG_TRUNC, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %141
  %147 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %148 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  br label %152

150:                                              ; preds = %141
  %151 = load i64, i64* %12, align 8
  br label %152

152:                                              ; preds = %150, %146
  %153 = phi i64 [ %149, %146 ], [ %151, %150 ]
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %17, align 4
  br label %155

155:                                              ; preds = %152, %132
  %156 = load %struct.sock*, %struct.sock** %10, align 8
  %157 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %158 = call i32 @skb_free_datagram(%struct.sock* %156, %struct.sk_buff* %157)
  %159 = load i32, i32* %17, align 4
  store i32 %159, i32* %8, align 4
  br label %160

160:                                              ; preds = %155, %94, %66, %29
  %161 = load i32, i32* %8, align 4
  ret i32 %161
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local %struct.pep_sock* @pep_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @pep_ctrlreq_error(%struct.sock*, %struct.sk_buff*, i32, i32) #1

declare dso_local %struct.sk_buff* @skb_recv_datagram(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @pipe_grant_credits(%struct.sock*) #1

declare dso_local i32 @skb_copy_datagram_iovec(%struct.sk_buff*, i32, i32, i64) #1

declare dso_local i32 @skb_free_datagram(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
