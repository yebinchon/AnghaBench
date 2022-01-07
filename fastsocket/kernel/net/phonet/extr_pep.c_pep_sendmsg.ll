; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_pep.c_pep_sendmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_pep.c_pep_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.sock = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.msghdr = type { i32, i32 }
%struct.pep_sock = type { i32 }
%struct.sk_buff = type { i32 }

@MSG_OOB = common dso_local global i32 0, align 4
@MSG_EOR = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@TCPF_LISTEN = common dso_local global i32 0, align 4
@TCPF_CLOSE = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i32 0, align 4
@TCP_CLOSE_WAIT = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@wait = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@MAX_PNPIPE_HEADER = common dso_local global i64 0, align 8
@MAX_PHONET_HEADER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.sock*, %struct.msghdr*, i64)* @pep_sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pep_sendmsg(%struct.kiocb* %0, %struct.sock* %1, %struct.msghdr* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pep_sock*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.sock* %1, %struct.sock** %7, align 8
  store %struct.msghdr* %2, %struct.msghdr** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.sock*, %struct.sock** %7, align 8
  %17 = call %struct.pep_sock* @pep_sk(%struct.sock* %16)
  store %struct.pep_sock* %17, %struct.pep_sock** %10, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %11, align 8
  %18 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %19 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %13, align 4
  %21 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %22 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MSG_OOB, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %4
  %28 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %29 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MSG_EOR, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %27, %4
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %194

37:                                               ; preds = %27
  %38 = load %struct.sock*, %struct.sock** %7, align 8
  %39 = call i32 @lock_sock(%struct.sock* %38)
  %40 = load %struct.sock*, %struct.sock** %7, align 8
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @MSG_DONTWAIT, align 4
  %43 = and i32 %41, %42
  %44 = call i64 @sock_sndtimeo(%struct.sock* %40, i32 %43)
  store i64 %44, i64* %12, align 8
  %45 = load %struct.sock*, %struct.sock** %7, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = shl i32 1, %47
  %49 = load i32, i32* @TCPF_LISTEN, align 4
  %50 = load i32, i32* @TCPF_CLOSE, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %37
  %55 = load i32, i32* @ENOTCONN, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %14, align 4
  br label %188

57:                                               ; preds = %37
  %58 = load %struct.sock*, %struct.sock** %7, align 8
  %59 = getelementptr inbounds %struct.sock, %struct.sock* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @TCP_ESTABLISHED, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %80

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %164, %132, %63
  %65 = load %struct.sock*, %struct.sock** %7, align 8
  %66 = call i32 @sk_stream_wait_connect(%struct.sock* %65, i64* %12)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %188

70:                                               ; preds = %64
  %71 = load %struct.sock*, %struct.sock** %7, align 8
  %72 = getelementptr inbounds %struct.sock, %struct.sock* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @TCP_CLOSE_WAIT, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32, i32* @ECONNRESET, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %14, align 4
  br label %188

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %79, %57
  %81 = load %struct.sock*, %struct.sock** %7, align 8
  %82 = getelementptr inbounds %struct.sock, %struct.sock* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @TCP_ESTABLISHED, align 4
  %85 = icmp ne i32 %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @BUG_ON(i32 %86)
  %88 = load %struct.pep_sock*, %struct.pep_sock** %10, align 8
  %89 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %88, i32 0, i32 0
  %90 = call i32 @atomic_read(i32* %89)
  store i32 %90, i32* %15, align 4
  br label %91

91:                                               ; preds = %133, %80
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  br i1 %94, label %95, label %134

95:                                               ; preds = %91
  %96 = load i32, i32* @wait, align 4
  %97 = call i32 @DEFINE_WAIT(i32 %96)
  %98 = load i64, i64* %12, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %95
  %101 = load i32, i32* @EAGAIN, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %14, align 4
  br label %188

103:                                              ; preds = %95
  %104 = load i32, i32* @current, align 4
  %105 = call i64 @signal_pending(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i64, i64* %12, align 8
  %109 = call i32 @sock_intr_errno(i64 %108)
  store i32 %109, i32* %14, align 4
  br label %188

110:                                              ; preds = %103
  %111 = load %struct.sock*, %struct.sock** %7, align 8
  %112 = getelementptr inbounds %struct.sock, %struct.sock* %111, i32 0, i32 1
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %116 = call i32 @prepare_to_wait(i32* %114, i32* @wait, i32 %115)
  %117 = load %struct.sock*, %struct.sock** %7, align 8
  %118 = load %struct.pep_sock*, %struct.pep_sock** %10, align 8
  %119 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %118, i32 0, i32 0
  %120 = call i32 @atomic_read(i32* %119)
  %121 = call i32 @sk_wait_event(%struct.sock* %117, i64* %12, i32 %120)
  store i32 %121, i32* %15, align 4
  %122 = load %struct.sock*, %struct.sock** %7, align 8
  %123 = getelementptr inbounds %struct.sock, %struct.sock* %122, i32 0, i32 1
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = call i32 @finish_wait(i32* %125, i32* @wait)
  %127 = load %struct.sock*, %struct.sock** %7, align 8
  %128 = getelementptr inbounds %struct.sock, %struct.sock* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @TCP_ESTABLISHED, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %110
  br label %64

133:                                              ; preds = %110
  br label %91

134:                                              ; preds = %91
  %135 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %136 = icmp ne %struct.sk_buff* %135, null
  br i1 %136, label %166, label %137

137:                                              ; preds = %134
  %138 = load %struct.sock*, %struct.sock** %7, align 8
  %139 = load i64, i64* @MAX_PNPIPE_HEADER, align 8
  %140 = load i64, i64* %9, align 8
  %141 = add i64 %139, %140
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* @MSG_DONTWAIT, align 4
  %144 = and i32 %142, %143
  %145 = call %struct.sk_buff* @sock_alloc_send_skb(%struct.sock* %138, i64 %141, i32 %144, i32* %14)
  store %struct.sk_buff* %145, %struct.sk_buff** %11, align 8
  %146 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %147 = icmp eq %struct.sk_buff* %146, null
  br i1 %147, label %148, label %149

148:                                              ; preds = %137
  br label %188

149:                                              ; preds = %137
  %150 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %151 = load i64, i64* @MAX_PHONET_HEADER, align 8
  %152 = add nsw i64 %151, 3
  %153 = call i32 @skb_reserve(%struct.sk_buff* %150, i64 %152)
  %154 = load %struct.sock*, %struct.sock** %7, align 8
  %155 = getelementptr inbounds %struct.sock, %struct.sock* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @TCP_ESTABLISHED, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %164, label %159

159:                                              ; preds = %149
  %160 = load %struct.pep_sock*, %struct.pep_sock** %10, align 8
  %161 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %160, i32 0, i32 0
  %162 = call i32 @atomic_read(i32* %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %159, %149
  br label %64

165:                                              ; preds = %159
  br label %166

166:                                              ; preds = %165, %134
  %167 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %168 = load i64, i64* %9, align 8
  %169 = call i32 @skb_put(%struct.sk_buff* %167, i64 %168)
  %170 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %171 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i64, i64* %9, align 8
  %174 = call i32 @memcpy_fromiovec(i32 %169, i32 %172, i64 %173)
  store i32 %174, i32* %14, align 4
  %175 = load i32, i32* %14, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %166
  br label %188

178:                                              ; preds = %166
  %179 = load %struct.sock*, %struct.sock** %7, align 8
  %180 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %181 = call i32 @pipe_skb_send(%struct.sock* %179, %struct.sk_buff* %180)
  store i32 %181, i32* %14, align 4
  %182 = load i32, i32* %14, align 4
  %183 = icmp sge i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %178
  %185 = load i64, i64* %9, align 8
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %14, align 4
  br label %187

187:                                              ; preds = %184, %178
  store %struct.sk_buff* null, %struct.sk_buff** %11, align 8
  br label %188

188:                                              ; preds = %187, %177, %148, %107, %100, %76, %69, %54
  %189 = load %struct.sock*, %struct.sock** %7, align 8
  %190 = call i32 @release_sock(%struct.sock* %189)
  %191 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %192 = call i32 @kfree_skb(%struct.sk_buff* %191)
  %193 = load i32, i32* %14, align 4
  store i32 %193, i32* %5, align 4
  br label %194

194:                                              ; preds = %188, %34
  %195 = load i32, i32* %5, align 4
  ret i32 %195
}

declare dso_local %struct.pep_sock* @pep_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_sndtimeo(%struct.sock*, i32) #1

declare dso_local i32 @sk_stream_wait_connect(%struct.sock*, i64*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @sock_intr_errno(i64) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @sk_wait_event(%struct.sock*, i64*, i32) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local %struct.sk_buff* @sock_alloc_send_skb(%struct.sock*, i64, i32, i32*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @memcpy_fromiovec(i32, i32, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @pipe_skb_send(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
