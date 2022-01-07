; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/unix/extr_af_unix.c_unix_dgram_recvmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/unix/extr_af_unix.c_unix_dgram_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i32 }
%struct.msghdr = type { i32, i32, i64, i64 }
%struct.sock_iocb = type { %struct.scm_cookie* }
%struct.scm_cookie = type { i32 }
%struct.unix_sock = type { i32, i32 }
%struct.sk_buff = type { i64, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MSG_OOB = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@MSG_PEEK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64, i32)* @unix_dgram_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unix_dgram_recvmsg(%struct.kiocb* %0, %struct.socket* %1, %struct.msghdr* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sock_iocb*, align 8
  %12 = alloca %struct.scm_cookie, align 4
  %13 = alloca %struct.sock*, align 8
  %14 = alloca %struct.unix_sock*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_2__, align 8
  %19 = alloca %struct.TYPE_2__, align 8
  %20 = alloca %struct.TYPE_2__, align 8
  %21 = alloca %struct.TYPE_2__, align 8
  %22 = alloca %struct.TYPE_2__, align 8
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store %struct.msghdr* %2, %struct.msghdr** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %23 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %24 = call %struct.sock_iocb* @kiocb_to_siocb(%struct.kiocb* %23)
  store %struct.sock_iocb* %24, %struct.sock_iocb** %11, align 8
  %25 = load %struct.socket*, %struct.socket** %7, align 8
  %26 = getelementptr inbounds %struct.socket, %struct.socket* %25, i32 0, i32 0
  %27 = load %struct.sock*, %struct.sock** %26, align 8
  store %struct.sock* %27, %struct.sock** %13, align 8
  %28 = load %struct.sock*, %struct.sock** %13, align 8
  %29 = call %struct.unix_sock* @unix_sk(%struct.sock* %28)
  store %struct.unix_sock* %29, %struct.unix_sock** %14, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @MSG_DONTWAIT, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @MSG_OOB, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %5
  br label %227

40:                                               ; preds = %5
  %41 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %42 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = load %struct.unix_sock*, %struct.unix_sock** %14, align 8
  %44 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %43, i32 0, i32 0
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load %struct.sock*, %struct.sock** %13, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %15, align 4
  %49 = call %struct.sk_buff* @skb_recv_datagram(%struct.sock* %46, i32 %47, i32 %48, i32* %17)
  store %struct.sk_buff* %49, %struct.sk_buff** %16, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %51 = icmp ne %struct.sk_buff* %50, null
  br i1 %51, label %76, label %52

52:                                               ; preds = %40
  %53 = load %struct.sock*, %struct.sock** %13, align 8
  %54 = call i32 @unix_state_lock(%struct.sock* %53)
  %55 = load %struct.sock*, %struct.sock** %13, align 8
  %56 = getelementptr inbounds %struct.sock, %struct.sock* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SOCK_SEQPACKET, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %52
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* @EAGAIN, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load %struct.sock*, %struct.sock** %13, align 8
  %67 = getelementptr inbounds %struct.sock, %struct.sock* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @RCV_SHUTDOWN, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  store i32 0, i32* %17, align 4
  br label %73

73:                                               ; preds = %72, %65, %60, %52
  %74 = load %struct.sock*, %struct.sock** %13, align 8
  %75 = call i32 @unix_state_unlock(%struct.sock* %74)
  br label %223

76:                                               ; preds = %40
  %77 = load %struct.unix_sock*, %struct.unix_sock** %14, align 8
  %78 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %77, i32 0, i32 1
  %79 = call i32 @wake_up_interruptible_sync(i32* %78)
  %80 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %81 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %76
  %85 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @unix_copy_addr(%struct.msghdr* %85, i32 %88)
  br label %90

90:                                               ; preds = %84, %76
  %91 = load i64, i64* %9, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ugt i64 %91, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %9, align 8
  br label %113

100:                                              ; preds = %90
  %101 = load i64, i64* %9, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ult i64 %101, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load i32, i32* @MSG_TRUNC, align 4
  %108 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %109 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %106, %100
  br label %113

113:                                              ; preds = %112, %96
  %114 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %115 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %116 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i64, i64* %9, align 8
  %119 = call i32 @skb_copy_datagram_iovec(%struct.sk_buff* %114, i32 0, i32 %117, i64 %118)
  store i32 %119, i32* %17, align 4
  %120 = load i32, i32* %17, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %113
  br label %219

123:                                              ; preds = %113
  %124 = load %struct.sock_iocb*, %struct.sock_iocb** %11, align 8
  %125 = getelementptr inbounds %struct.sock_iocb, %struct.sock_iocb* %124, i32 0, i32 0
  %126 = load %struct.scm_cookie*, %struct.scm_cookie** %125, align 8
  %127 = icmp ne %struct.scm_cookie* %126, null
  br i1 %127, label %132, label %128

128:                                              ; preds = %123
  %129 = load %struct.sock_iocb*, %struct.sock_iocb** %11, align 8
  %130 = getelementptr inbounds %struct.sock_iocb, %struct.sock_iocb* %129, i32 0, i32 0
  store %struct.scm_cookie* %12, %struct.scm_cookie** %130, align 8
  %131 = call i32 @memset(%struct.scm_cookie* %12, i32 0, i32 4)
  br label %132

132:                                              ; preds = %128, %123
  %133 = load %struct.sock_iocb*, %struct.sock_iocb** %11, align 8
  %134 = getelementptr inbounds %struct.sock_iocb, %struct.sock_iocb* %133, i32 0, i32 0
  %135 = load %struct.scm_cookie*, %struct.scm_cookie** %134, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %137 = call { i64, i64 } @UNIXCB(%struct.sk_buff* %136)
  %138 = bitcast %struct.TYPE_2__* %18 to { i64, i64 }*
  %139 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %138, i32 0, i32 0
  %140 = extractvalue { i64, i64 } %137, 0
  store i64 %140, i64* %139, align 8
  %141 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %138, i32 0, i32 1
  %142 = extractvalue { i64, i64 } %137, 1
  store i64 %142, i64* %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %146 = call { i64, i64 } @UNIXCB(%struct.sk_buff* %145)
  %147 = bitcast %struct.TYPE_2__* %19 to { i64, i64 }*
  %148 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %147, i32 0, i32 0
  %149 = extractvalue { i64, i64 } %146, 0
  store i64 %149, i64* %148, align 8
  %150 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %147, i32 0, i32 1
  %151 = extractvalue { i64, i64 } %146, 1
  store i64 %151, i64* %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @scm_set_cred(%struct.scm_cookie* %135, i32 %144, i32 %153)
  %155 = load %struct.sock_iocb*, %struct.sock_iocb** %11, align 8
  %156 = getelementptr inbounds %struct.sock_iocb, %struct.sock_iocb* %155, i32 0, i32 0
  %157 = load %struct.scm_cookie*, %struct.scm_cookie** %156, align 8
  %158 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %159 = call i32 @unix_set_secdata(%struct.scm_cookie* %157, %struct.sk_buff* %158)
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* @MSG_PEEK, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %182, label %164

164:                                              ; preds = %132
  %165 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %166 = call { i64, i64 } @UNIXCB(%struct.sk_buff* %165)
  %167 = bitcast %struct.TYPE_2__* %20 to { i64, i64 }*
  %168 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %167, i32 0, i32 0
  %169 = extractvalue { i64, i64 } %166, 0
  store i64 %169, i64* %168, align 8
  %170 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %167, i32 0, i32 1
  %171 = extractvalue { i64, i64 } %166, 1
  store i64 %171, i64* %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %164
  %176 = load %struct.sock_iocb*, %struct.sock_iocb** %11, align 8
  %177 = getelementptr inbounds %struct.sock_iocb, %struct.sock_iocb* %176, i32 0, i32 0
  %178 = load %struct.scm_cookie*, %struct.scm_cookie** %177, align 8
  %179 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %180 = call i32 @unix_detach_fds(%struct.scm_cookie* %178, %struct.sk_buff* %179)
  br label %181

181:                                              ; preds = %175, %164
  br label %209

182:                                              ; preds = %132
  %183 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %184 = call { i64, i64 } @UNIXCB(%struct.sk_buff* %183)
  %185 = bitcast %struct.TYPE_2__* %21 to { i64, i64 }*
  %186 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %185, i32 0, i32 0
  %187 = extractvalue { i64, i64 } %184, 0
  store i64 %187, i64* %186, align 8
  %188 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %185, i32 0, i32 1
  %189 = extractvalue { i64, i64 } %184, 1
  store i64 %189, i64* %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %208

193:                                              ; preds = %182
  %194 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %195 = call { i64, i64 } @UNIXCB(%struct.sk_buff* %194)
  %196 = bitcast %struct.TYPE_2__* %22 to { i64, i64 }*
  %197 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %196, i32 0, i32 0
  %198 = extractvalue { i64, i64 } %195, 0
  store i64 %198, i64* %197, align 8
  %199 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %196, i32 0, i32 1
  %200 = extractvalue { i64, i64 } %195, 1
  store i64 %200, i64* %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @scm_fp_dup(i64 %202)
  %204 = load %struct.sock_iocb*, %struct.sock_iocb** %11, align 8
  %205 = getelementptr inbounds %struct.sock_iocb, %struct.sock_iocb* %204, i32 0, i32 0
  %206 = load %struct.scm_cookie*, %struct.scm_cookie** %205, align 8
  %207 = getelementptr inbounds %struct.scm_cookie, %struct.scm_cookie* %206, i32 0, i32 0
  store i32 %203, i32* %207, align 4
  br label %208

208:                                              ; preds = %193, %182
  br label %209

209:                                              ; preds = %208, %181
  %210 = load i64, i64* %9, align 8
  %211 = trunc i64 %210 to i32
  store i32 %211, i32* %17, align 4
  %212 = load %struct.socket*, %struct.socket** %7, align 8
  %213 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %214 = load %struct.sock_iocb*, %struct.sock_iocb** %11, align 8
  %215 = getelementptr inbounds %struct.sock_iocb, %struct.sock_iocb* %214, i32 0, i32 0
  %216 = load %struct.scm_cookie*, %struct.scm_cookie** %215, align 8
  %217 = load i32, i32* %10, align 4
  %218 = call i32 @scm_recv(%struct.socket* %212, %struct.msghdr* %213, %struct.scm_cookie* %216, i32 %217)
  br label %219

219:                                              ; preds = %209, %122
  %220 = load %struct.sock*, %struct.sock** %13, align 8
  %221 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %222 = call i32 @skb_free_datagram(%struct.sock* %220, %struct.sk_buff* %221)
  br label %223

223:                                              ; preds = %219, %73
  %224 = load %struct.unix_sock*, %struct.unix_sock** %14, align 8
  %225 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %224, i32 0, i32 0
  %226 = call i32 @mutex_unlock(i32* %225)
  br label %227

227:                                              ; preds = %223, %39
  %228 = load i32, i32* %17, align 4
  ret i32 %228
}

declare dso_local %struct.sock_iocb* @kiocb_to_siocb(%struct.kiocb*) #1

declare dso_local %struct.unix_sock* @unix_sk(%struct.sock*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.sk_buff* @skb_recv_datagram(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @unix_state_lock(%struct.sock*) #1

declare dso_local i32 @unix_state_unlock(%struct.sock*) #1

declare dso_local i32 @wake_up_interruptible_sync(i32*) #1

declare dso_local i32 @unix_copy_addr(%struct.msghdr*, i32) #1

declare dso_local i32 @skb_copy_datagram_iovec(%struct.sk_buff*, i32, i32, i64) #1

declare dso_local i32 @memset(%struct.scm_cookie*, i32, i32) #1

declare dso_local i32 @scm_set_cred(%struct.scm_cookie*, i32, i32) #1

declare dso_local { i64, i64 } @UNIXCB(%struct.sk_buff*) #1

declare dso_local i32 @unix_set_secdata(%struct.scm_cookie*, %struct.sk_buff*) #1

declare dso_local i32 @unix_detach_fds(%struct.scm_cookie*, %struct.sk_buff*) #1

declare dso_local i32 @scm_fp_dup(i64) #1

declare dso_local i32 @scm_recv(%struct.socket*, %struct.msghdr*, %struct.scm_cookie*, i32) #1

declare dso_local i32 @skb_free_datagram(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
