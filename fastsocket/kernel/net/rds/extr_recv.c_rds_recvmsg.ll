; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_recv.c_rds_recvmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_recv.c_rds_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32* }
%struct.msghdr = type { i32, i32, i64, i32 }
%struct.rds_sock = type { i64, i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.rds_incoming = type { i32, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 (%struct.rds_incoming*, i32, i64)* }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"size %zu flags 0x%x timeo %ld\0A\00", align 1
@MSG_OOB = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"recvmsg woke inc %p timeo %ld\0A\00", align 1
@MAX_SCHEDULE_TIMEOUT = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"copying inc %p from %pI4:%u to user\0A\00", align 1
@MSG_PEEK = common dso_local global i32 0, align 4
@s_recv_deliver_raced = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@s_recv_delivered = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rds_recvmsg(%struct.kiocb* %0, %struct.socket* %1, %struct.msghdr* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.rds_sock*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sockaddr_in*, align 8
  %17 = alloca %struct.rds_incoming*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store %struct.msghdr* %2, %struct.msghdr** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %18 = load %struct.socket*, %struct.socket** %7, align 8
  %19 = getelementptr inbounds %struct.socket, %struct.socket* %18, i32 0, i32 0
  %20 = load %struct.sock*, %struct.sock** %19, align 8
  store %struct.sock* %20, %struct.sock** %11, align 8
  %21 = load %struct.sock*, %struct.sock** %11, align 8
  %22 = call %struct.rds_sock* @rds_sk_to_rs(%struct.sock* %21)
  store %struct.rds_sock* %22, %struct.rds_sock** %12, align 8
  store i32 0, i32* %14, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @MSG_DONTWAIT, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %15, align 4
  store %struct.rds_incoming* null, %struct.rds_incoming** %17, align 8
  %26 = load %struct.sock*, %struct.sock** %11, align 8
  %27 = load i32, i32* %15, align 4
  %28 = call i64 @sock_rcvtimeo(%struct.sock* %26, i32 %27)
  store i64 %28, i64* %13, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i64, i64* %13, align 8
  %32 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %29, i32 %30, i64 %31)
  %33 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %34 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @MSG_OOB, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %5
  br label %227

40:                                               ; preds = %5
  br label %41

41:                                               ; preds = %40, %101, %150
  %42 = load %struct.rds_sock*, %struct.rds_sock** %12, align 8
  %43 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %42, i32 0, i32 1
  %44 = call i32 @list_empty(i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load %struct.rds_sock*, %struct.rds_sock** %12, align 8
  %48 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %49 = call i32 @rds_notify_queue_get(%struct.rds_sock* %47, %struct.msghdr* %48)
  store i32 %49, i32* %14, align 4
  br label %220

50:                                               ; preds = %41
  %51 = load %struct.rds_sock*, %struct.rds_sock** %12, align 8
  %52 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load %struct.rds_sock*, %struct.rds_sock** %12, align 8
  %57 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %58 = call i32 @rds_notify_cong(%struct.rds_sock* %56, %struct.msghdr* %57)
  store i32 %58, i32* %14, align 4
  br label %220

59:                                               ; preds = %50
  %60 = load %struct.rds_sock*, %struct.rds_sock** %12, align 8
  %61 = call i64 @rds_next_incoming(%struct.rds_sock* %60, %struct.rds_incoming** %17)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %111, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %15, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* @EAGAIN, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %14, align 4
  br label %220

69:                                               ; preds = %63
  %70 = load %struct.sock*, %struct.sock** %11, align 8
  %71 = getelementptr inbounds %struct.sock, %struct.sock* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.rds_sock*, %struct.rds_sock** %12, align 8
  %75 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %74, i32 0, i32 1
  %76 = call i32 @list_empty(i32* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %69
  %79 = load %struct.rds_sock*, %struct.rds_sock** %12, align 8
  %80 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %78
  %84 = load %struct.rds_sock*, %struct.rds_sock** %12, align 8
  %85 = call i64 @rds_next_incoming(%struct.rds_sock* %84, %struct.rds_incoming** %17)
  %86 = icmp ne i64 %85, 0
  br label %87

87:                                               ; preds = %83, %78, %69
  %88 = phi i1 [ true, %78 ], [ true, %69 ], [ %86, %83 ]
  %89 = zext i1 %88 to i32
  %90 = load i64, i64* %13, align 8
  %91 = call i64 @wait_event_interruptible_timeout(i32 %73, i32 %89, i64 %90)
  store i64 %91, i64* %13, align 8
  %92 = load %struct.rds_incoming*, %struct.rds_incoming** %17, align 8
  %93 = load i64, i64* %13, align 8
  %94 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), %struct.rds_incoming* %92, i64 %93)
  %95 = load i64, i64* %13, align 8
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %87
  %98 = load i64, i64* %13, align 8
  %99 = load i64, i64* @MAX_SCHEDULE_TIMEOUT, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %97, %87
  br label %41

102:                                              ; preds = %97
  %103 = load i64, i64* %13, align 8
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %14, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i32, i32* @ETIMEDOUT, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %14, align 4
  br label %110

110:                                              ; preds = %107, %102
  br label %220

111:                                              ; preds = %59
  %112 = load %struct.rds_incoming*, %struct.rds_incoming** %17, align 8
  %113 = load %struct.rds_incoming*, %struct.rds_incoming** %17, align 8
  %114 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %113, i32 0, i32 2
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load %struct.rds_incoming*, %struct.rds_incoming** %17, align 8
  %118 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @ntohs(i32 %120)
  %122 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), %struct.rds_incoming* %112, i32* %116, i32 %121)
  %123 = load %struct.rds_incoming*, %struct.rds_incoming** %17, align 8
  %124 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %123, i32 0, i32 2
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32 (%struct.rds_incoming*, i32, i64)*, i32 (%struct.rds_incoming*, i32, i64)** %128, align 8
  %130 = load %struct.rds_incoming*, %struct.rds_incoming** %17, align 8
  %131 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %132 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load i64, i64* %9, align 8
  %135 = call i32 %129(%struct.rds_incoming* %130, i32 %133, i64 %134)
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* %14, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %111
  br label %220

139:                                              ; preds = %111
  %140 = load %struct.rds_sock*, %struct.rds_sock** %12, align 8
  %141 = load %struct.rds_incoming*, %struct.rds_incoming** %17, align 8
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* @MSG_PEEK, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  %148 = call i32 @rds_still_queued(%struct.rds_sock* %140, %struct.rds_incoming* %141, i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %155, label %150

150:                                              ; preds = %139
  %151 = load %struct.rds_incoming*, %struct.rds_incoming** %17, align 8
  %152 = call i32 @rds_inc_put(%struct.rds_incoming* %151)
  store %struct.rds_incoming* null, %struct.rds_incoming** %17, align 8
  %153 = load i32, i32* @s_recv_deliver_raced, align 4
  %154 = call i32 @rds_stats_inc(i32 %153)
  br label %41

155:                                              ; preds = %139
  %156 = load i32, i32* %14, align 4
  %157 = load %struct.rds_incoming*, %struct.rds_incoming** %17, align 8
  %158 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @be32_to_cpu(i32 %160)
  %162 = icmp slt i32 %156, %161
  br i1 %162, label %163, label %180

163:                                              ; preds = %155
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* @MSG_TRUNC, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %163
  %169 = load %struct.rds_incoming*, %struct.rds_incoming** %17, align 8
  %170 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @be32_to_cpu(i32 %172)
  store i32 %173, i32* %14, align 4
  br label %174

174:                                              ; preds = %168, %163
  %175 = load i32, i32* @MSG_TRUNC, align 4
  %176 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %177 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %174, %155
  %181 = load %struct.rds_incoming*, %struct.rds_incoming** %17, align 8
  %182 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %183 = call i64 @rds_cmsg_recv(%struct.rds_incoming* %181, %struct.msghdr* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %180
  %186 = load i32, i32* @EFAULT, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %14, align 4
  br label %227

188:                                              ; preds = %180
  %189 = load i32, i32* @s_recv_delivered, align 4
  %190 = call i32 @rds_stats_inc(i32 %189)
  %191 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %192 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = inttoptr i64 %193 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %194, %struct.sockaddr_in** %16, align 8
  %195 = load %struct.sockaddr_in*, %struct.sockaddr_in** %16, align 8
  %196 = icmp ne %struct.sockaddr_in* %195, null
  br i1 %196, label %197, label %219

197:                                              ; preds = %188
  %198 = load i32, i32* @AF_INET, align 4
  %199 = load %struct.sockaddr_in*, %struct.sockaddr_in** %16, align 8
  %200 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %199, i32 0, i32 3
  store i32 %198, i32* %200, align 4
  %201 = load %struct.rds_incoming*, %struct.rds_incoming** %17, align 8
  %202 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.sockaddr_in*, %struct.sockaddr_in** %16, align 8
  %206 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %205, i32 0, i32 2
  store i32 %204, i32* %206, align 4
  %207 = load %struct.rds_incoming*, %struct.rds_incoming** %17, align 8
  %208 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.sockaddr_in*, %struct.sockaddr_in** %16, align 8
  %211 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  store i32 %209, i32* %212, align 4
  %213 = load %struct.sockaddr_in*, %struct.sockaddr_in** %16, align 8
  %214 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @memset(i32 %215, i32 0, i32 4)
  %217 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %218 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %217, i32 0, i32 0
  store i32 16, i32* %218, align 8
  br label %219

219:                                              ; preds = %197, %188
  br label %220

220:                                              ; preds = %219, %138, %110, %66, %55, %46
  %221 = load %struct.rds_incoming*, %struct.rds_incoming** %17, align 8
  %222 = icmp ne %struct.rds_incoming* %221, null
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = load %struct.rds_incoming*, %struct.rds_incoming** %17, align 8
  %225 = call i32 @rds_inc_put(%struct.rds_incoming* %224)
  br label %226

226:                                              ; preds = %223, %220
  br label %227

227:                                              ; preds = %226, %185, %39
  %228 = load i32, i32* %14, align 4
  ret i32 %228
}

declare dso_local %struct.rds_sock* @rds_sk_to_rs(%struct.sock*) #1

declare dso_local i64 @sock_rcvtimeo(%struct.sock*, i32) #1

declare dso_local i32 @rdsdebug(i8*, ...) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @rds_notify_queue_get(%struct.rds_sock*, %struct.msghdr*) #1

declare dso_local i32 @rds_notify_cong(%struct.rds_sock*, %struct.msghdr*) #1

declare dso_local i64 @rds_next_incoming(%struct.rds_sock*, %struct.rds_incoming**) #1

declare dso_local i64 @wait_event_interruptible_timeout(i32, i32, i64) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @rds_still_queued(%struct.rds_sock*, %struct.rds_incoming*, i32) #1

declare dso_local i32 @rds_inc_put(%struct.rds_incoming*) #1

declare dso_local i32 @rds_stats_inc(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @rds_cmsg_recv(%struct.rds_incoming*, %struct.msghdr*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
