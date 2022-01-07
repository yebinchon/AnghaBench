; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_af_x25.c_x25_recvmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_af_x25.c_x25_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i64 }
%struct.msghdr = type { i32, i32, i32, i64 }
%struct.x25_sock = type { i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.sockaddr_x25 = type { i32, i32 }
%struct.sk_buff = type { i32*, i64 }

@ENOTCONN = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@MSG_OOB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SOCK_URGINLINE = common dso_local global i32 0, align 4
@X25_STD_MIN_LEN = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@X25_Q_BIT = common dso_local global i32 0, align 4
@X25_EXT_MIN_LEN = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@MSG_EOR = common dso_local global i32 0, align 4
@AF_X25 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64, i32)* @x25_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x25_recvmsg(%struct.kiocb* %0, %struct.socket* %1, %struct.msghdr* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.x25_sock*, align 8
  %13 = alloca %struct.sockaddr_x25*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store %struct.msghdr* %2, %struct.msghdr** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %19 = load %struct.socket*, %struct.socket** %7, align 8
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %19, i32 0, i32 0
  %21 = load %struct.sock*, %struct.sock** %20, align 8
  store %struct.sock* %21, %struct.sock** %11, align 8
  %22 = load %struct.sock*, %struct.sock** %11, align 8
  %23 = call %struct.x25_sock* @x25_sk(%struct.sock* %22)
  store %struct.x25_sock* %23, %struct.x25_sock** %12, align 8
  %24 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %25 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.sockaddr_x25*
  store %struct.sockaddr_x25* %27, %struct.sockaddr_x25** %13, align 8
  %28 = load i32, i32* @ENOTCONN, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %18, align 4
  %30 = load %struct.sock*, %struct.sock** %11, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TCP_ESTABLISHED, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %5
  br label %184

36:                                               ; preds = %5
  %37 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %38 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @MSG_OOB, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %77

43:                                               ; preds = %36
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %18, align 4
  %46 = load %struct.sock*, %struct.sock** %11, align 8
  %47 = load i32, i32* @SOCK_URGINLINE, align 4
  %48 = call i64 @sock_flag(%struct.sock* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %43
  %51 = load %struct.x25_sock*, %struct.x25_sock** %12, align 8
  %52 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %51, i32 0, i32 3
  %53 = call i32 @skb_peek(i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50, %43
  br label %184

56:                                               ; preds = %50
  %57 = load %struct.x25_sock*, %struct.x25_sock** %12, align 8
  %58 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %57, i32 0, i32 3
  %59 = call %struct.sk_buff* @skb_dequeue(i32* %58)
  store %struct.sk_buff* %59, %struct.sk_buff** %16, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %61 = load i32, i32* @X25_STD_MIN_LEN, align 4
  %62 = call i32 @skb_pull(%struct.sk_buff* %60, i32 %61)
  %63 = load %struct.x25_sock*, %struct.x25_sock** %12, align 8
  %64 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %56
  %68 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %69 = call i8* @skb_push(%struct.sk_buff* %68, i32 1)
  store i8* %69, i8** %17, align 8
  %70 = load i8*, i8** %17, align 8
  store i8 0, i8* %70, align 1
  br label %71

71:                                               ; preds = %67, %56
  %72 = load i32, i32* @MSG_OOB, align 4
  %73 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %74 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %126

77:                                               ; preds = %36
  %78 = load %struct.sock*, %struct.sock** %11, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @MSG_DONTWAIT, align 4
  %81 = xor i32 %80, -1
  %82 = and i32 %79, %81
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @MSG_DONTWAIT, align 4
  %85 = and i32 %83, %84
  %86 = call %struct.sk_buff* @skb_recv_datagram(%struct.sock* %78, i32 %82, i32 %85, i32* %18)
  store %struct.sk_buff* %86, %struct.sk_buff** %16, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %88 = icmp ne %struct.sk_buff* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %77
  br label %184

90:                                               ; preds = %77
  %91 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @X25_Q_BIT, align 4
  %97 = and i32 %95, %96
  %98 = load i32, i32* @X25_Q_BIT, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %15, align 4
  %101 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %102 = load %struct.x25_sock*, %struct.x25_sock** %12, align 8
  %103 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %102, i32 0, i32 2
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %90
  %109 = load i32, i32* @X25_EXT_MIN_LEN, align 4
  br label %112

110:                                              ; preds = %90
  %111 = load i32, i32* @X25_STD_MIN_LEN, align 4
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i32 [ %109, %108 ], [ %111, %110 ]
  %114 = call i32 @skb_pull(%struct.sk_buff* %101, i32 %113)
  %115 = load %struct.x25_sock*, %struct.x25_sock** %12, align 8
  %116 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %112
  %120 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %121 = call i8* @skb_push(%struct.sk_buff* %120, i32 1)
  store i8* %121, i8** %17, align 8
  %122 = load i32, i32* %15, align 4
  %123 = trunc i32 %122 to i8
  %124 = load i8*, i8** %17, align 8
  store i8 %123, i8* %124, align 1
  br label %125

125:                                              ; preds = %119, %112
  br label %126

126:                                              ; preds = %125, %71
  %127 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %128 = call i32 @skb_reset_transport_header(%struct.sk_buff* %127)
  %129 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %130 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %14, align 8
  %132 = load i64, i64* %14, align 8
  %133 = load i64, i64* %9, align 8
  %134 = icmp ugt i64 %132, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %126
  %136 = load i64, i64* %9, align 8
  store i64 %136, i64* %14, align 8
  %137 = load i32, i32* @MSG_TRUNC, align 4
  %138 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %139 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %135, %126
  %143 = load i32, i32* @MSG_EOR, align 4
  %144 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %145 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 4
  %148 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %149 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %150 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load i64, i64* %14, align 8
  %153 = call i32 @skb_copy_datagram_iovec(%struct.sk_buff* %148, i32 0, i32 %151, i64 %152)
  store i32 %153, i32* %18, align 4
  %154 = load i32, i32* %18, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %142
  br label %180

157:                                              ; preds = %142
  %158 = load %struct.sockaddr_x25*, %struct.sockaddr_x25** %13, align 8
  %159 = icmp ne %struct.sockaddr_x25* %158, null
  br i1 %159, label %160, label %171

160:                                              ; preds = %157
  %161 = load i32, i32* @AF_X25, align 4
  %162 = load %struct.sockaddr_x25*, %struct.sockaddr_x25** %13, align 8
  %163 = getelementptr inbounds %struct.sockaddr_x25, %struct.sockaddr_x25* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 4
  %164 = load %struct.x25_sock*, %struct.x25_sock** %12, align 8
  %165 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.sockaddr_x25*, %struct.sockaddr_x25** %13, align 8
  %168 = getelementptr inbounds %struct.sockaddr_x25, %struct.sockaddr_x25* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 4
  %169 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %170 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %169, i32 0, i32 0
  store i32 8, i32* %170, align 8
  br label %171

171:                                              ; preds = %160, %157
  %172 = load %struct.sock*, %struct.sock** %11, align 8
  %173 = call i32 @lock_sock(%struct.sock* %172)
  %174 = load %struct.sock*, %struct.sock** %11, align 8
  %175 = call i32 @x25_check_rbuf(%struct.sock* %174)
  %176 = load %struct.sock*, %struct.sock** %11, align 8
  %177 = call i32 @release_sock(%struct.sock* %176)
  %178 = load i64, i64* %14, align 8
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %18, align 4
  br label %180

180:                                              ; preds = %171, %156
  %181 = load %struct.sock*, %struct.sock** %11, align 8
  %182 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %183 = call i32 @skb_free_datagram(%struct.sock* %181, %struct.sk_buff* %182)
  br label %184

184:                                              ; preds = %180, %89, %55, %35
  %185 = load i32, i32* %18, align 4
  ret i32 %185
}

declare dso_local %struct.x25_sock* @x25_sk(%struct.sock*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @skb_peek(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i8* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @skb_recv_datagram(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_datagram_iovec(%struct.sk_buff*, i32, i32, i64) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @x25_check_rbuf(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @skb_free_datagram(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
