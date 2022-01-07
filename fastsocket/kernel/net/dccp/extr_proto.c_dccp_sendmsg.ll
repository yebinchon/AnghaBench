; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_proto.c_dccp_sendmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_proto.c_dccp_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.sock = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.msghdr = type { i32, i32 }
%struct.dccp_sock = type { i64 }
%struct.sk_buff = type { i32 }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@sysctl_dccp_tx_qlen = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@DCCPF_OPEN = common dso_local global i32 0, align 4
@DCCPF_PARTOPEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_sendmsg(%struct.kiocb* %0, %struct.sock* %1, %struct.msghdr* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dccp_sock*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.sock* %1, %struct.sock** %7, align 8
  store %struct.msghdr* %2, %struct.msghdr** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.sock*, %struct.sock** %7, align 8
  %18 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %17)
  store %struct.dccp_sock* %18, %struct.dccp_sock** %10, align 8
  %19 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %20 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @MSG_DONTWAIT, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %12, align 4
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.dccp_sock*, %struct.dccp_sock** %10, align 8
  %27 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ugt i64 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @EMSGSIZE, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %129

33:                                               ; preds = %4
  %34 = load %struct.sock*, %struct.sock** %7, align 8
  %35 = call i32 @lock_sock(%struct.sock* %34)
  %36 = load i64, i64* @sysctl_dccp_tx_qlen, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load %struct.sock*, %struct.sock** %7, align 8
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @sysctl_dccp_tx_qlen, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32, i32* @EAGAIN, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %14, align 4
  br label %114

48:                                               ; preds = %38, %33
  %49 = load %struct.sock*, %struct.sock** %7, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i64 @sock_sndtimeo(%struct.sock* %49, i32 %50)
  store i64 %51, i64* %16, align 8
  %52 = load %struct.sock*, %struct.sock** %7, align 8
  %53 = getelementptr inbounds %struct.sock, %struct.sock* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = shl i32 1, %54
  %56 = load i32, i32* @DCCPF_OPEN, align 4
  %57 = load i32, i32* @DCCPF_PARTOPEN, align 4
  %58 = or i32 %56, %57
  %59 = xor i32 %58, -1
  %60 = and i32 %55, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %48
  %63 = load %struct.sock*, %struct.sock** %7, align 8
  %64 = call i32 @sk_stream_wait_connect(%struct.sock* %63, i64* %16)
  store i32 %64, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %114

67:                                               ; preds = %62
  br label %68

68:                                               ; preds = %67, %48
  %69 = load %struct.sock*, %struct.sock** %7, align 8
  %70 = getelementptr inbounds %struct.sock, %struct.sock* %69, i32 0, i32 2
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %9, align 8
  %75 = add i64 %73, %74
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %15, align 4
  %77 = load %struct.sock*, %struct.sock** %7, align 8
  %78 = call i32 @release_sock(%struct.sock* %77)
  %79 = load %struct.sock*, %struct.sock** %7, align 8
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call %struct.sk_buff* @sock_alloc_send_skb(%struct.sock* %79, i32 %80, i32 %81, i32* %14)
  store %struct.sk_buff* %82, %struct.sk_buff** %13, align 8
  %83 = load %struct.sock*, %struct.sock** %7, align 8
  %84 = call i32 @lock_sock(%struct.sock* %83)
  %85 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %86 = icmp eq %struct.sk_buff* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %68
  br label %114

88:                                               ; preds = %68
  %89 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %90 = load %struct.sock*, %struct.sock** %7, align 8
  %91 = getelementptr inbounds %struct.sock, %struct.sock* %90, i32 0, i32 2
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @skb_reserve(%struct.sk_buff* %89, i64 %94)
  %96 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %97 = load i64, i64* %9, align 8
  %98 = call i32 @skb_put(%struct.sk_buff* %96, i64 %97)
  %99 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %100 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i64, i64* %9, align 8
  %103 = call i32 @memcpy_fromiovec(i32 %98, i32 %101, i64 %102)
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %88
  br label %126

107:                                              ; preds = %88
  %108 = load %struct.sock*, %struct.sock** %7, align 8
  %109 = getelementptr inbounds %struct.sock, %struct.sock* %108, i32 0, i32 1
  %110 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %111 = call i32 @skb_queue_tail(%struct.TYPE_4__* %109, %struct.sk_buff* %110)
  %112 = load %struct.sock*, %struct.sock** %7, align 8
  %113 = call i32 @dccp_write_xmit(%struct.sock* %112, i32 0)
  br label %114

114:                                              ; preds = %126, %107, %87, %66, %45
  %115 = load %struct.sock*, %struct.sock** %7, align 8
  %116 = call i32 @release_sock(%struct.sock* %115)
  %117 = load i32, i32* %14, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = sext i32 %117 to i64
  br label %123

121:                                              ; preds = %114
  %122 = load i64, i64* %9, align 8
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi i64 [ %120, %119 ], [ %122, %121 ]
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %5, align 4
  br label %129

126:                                              ; preds = %106
  %127 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %128 = call i32 @kfree_skb(%struct.sk_buff* %127)
  br label %114

129:                                              ; preds = %123, %30
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_sndtimeo(%struct.sock*, i32) #1

declare dso_local i32 @sk_stream_wait_connect(%struct.sock*, i64*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local %struct.sk_buff* @sock_alloc_send_skb(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @memcpy_fromiovec(i32, i32, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_queue_tail(%struct.TYPE_4__*, %struct.sk_buff*) #1

declare dso_local i32 @dccp_write_xmit(%struct.sock*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
