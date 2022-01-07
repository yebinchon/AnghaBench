; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp.c_tcp_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp.c_tcp_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.tcp_sock = type { i64, i64, i32, i32 }

@TCP_LISTEN = common dso_local global i32 0, align 4
@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLRDHUP = common dso_local global i32 0, align 4
@TCPF_SYN_SENT = common dso_local global i32 0, align 4
@TCPF_SYN_RECV = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@SOCK_URGINLINE = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@SOCK_ASYNC_NOSPACE = common dso_local global i32 0, align 4
@SOCK_NOSPACE = common dso_local global i32 0, align 4
@TCP_URG_VALID = common dso_local global i32 0, align 4
@POLLPRI = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_poll(%struct.file* %0, %struct.socket* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.tcp_sock*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.socket*, %struct.socket** %6, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %14, %struct.sock** %9, align 8
  %15 = load %struct.sock*, %struct.sock** %9, align 8
  %16 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %15)
  store %struct.tcp_sock* %16, %struct.tcp_sock** %10, align 8
  %17 = load %struct.sock*, %struct.sock** %9, align 8
  %18 = call i32 @inet_sock_cpu_or_flow_record(%struct.sock* %17)
  %19 = load %struct.file*, %struct.file** %5, align 8
  %20 = load %struct.sock*, %struct.sock** %9, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @sock_poll_wait(%struct.file* %19, i32 %22, i32* %23)
  %25 = load %struct.sock*, %struct.sock** %9, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @TCP_LISTEN, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load %struct.sock*, %struct.sock** %9, align 8
  %32 = call i32 @inet_csk_listen_poll(%struct.sock* %31)
  store i32 %32, i32* %4, align 4
  br label %186

33:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  %34 = load %struct.sock*, %struct.sock** %9, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SHUTDOWN_MASK, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.sock*, %struct.sock** %9, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @TCP_CLOSE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39, %33
  %46 = load i32, i32* @POLLHUP, align 4
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %45, %39
  %50 = load %struct.sock*, %struct.sock** %9, align 8
  %51 = getelementptr inbounds %struct.sock, %struct.sock* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @RCV_SHUTDOWN, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %49
  %57 = load i32, i32* @POLLIN, align 4
  %58 = load i32, i32* @POLLRDNORM, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @POLLRDHUP, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %56, %49
  %65 = load %struct.sock*, %struct.sock** %9, align 8
  %66 = getelementptr inbounds %struct.sock, %struct.sock* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = shl i32 1, %67
  %69 = load i32, i32* @TCPF_SYN_SENT, align 4
  %70 = load i32, i32* @TCPF_SYN_RECV, align 4
  %71 = or i32 %69, %70
  %72 = xor i32 %71, -1
  %73 = and i32 %68, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %174

75:                                               ; preds = %64
  %76 = load %struct.sock*, %struct.sock** %9, align 8
  %77 = load i32, i32* @INT_MAX, align 4
  %78 = call i32 @sock_rcvlowat(%struct.sock* %76, i32 0, i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %80 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %83 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %81, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %75
  %87 = load %struct.sock*, %struct.sock** %9, align 8
  %88 = load i32, i32* @SOCK_URGINLINE, align 4
  %89 = call i32 @sock_flag(%struct.sock* %87, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %86
  %92 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %93 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %99

99:                                               ; preds = %96, %91, %86, %75
  %100 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %101 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %105 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = sub nsw i64 %103, %106
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = icmp sge i64 %107, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %99
  %112 = load i32, i32* @POLLIN, align 4
  %113 = load i32, i32* @POLLRDNORM, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* %8, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %111, %99
  %118 = load %struct.sock*, %struct.sock** %9, align 8
  %119 = getelementptr inbounds %struct.sock, %struct.sock* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @SEND_SHUTDOWN, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %162, label %124

124:                                              ; preds = %117
  %125 = load %struct.sock*, %struct.sock** %9, align 8
  %126 = call i64 @sk_stream_wspace(%struct.sock* %125)
  %127 = load %struct.sock*, %struct.sock** %9, align 8
  %128 = call i64 @sk_stream_min_wspace(%struct.sock* %127)
  %129 = icmp sge i64 %126, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %124
  %131 = load i32, i32* @POLLOUT, align 4
  %132 = load i32, i32* @POLLWRNORM, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* %8, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %8, align 4
  br label %161

136:                                              ; preds = %124
  %137 = load i32, i32* @SOCK_ASYNC_NOSPACE, align 4
  %138 = load %struct.sock*, %struct.sock** %9, align 8
  %139 = getelementptr inbounds %struct.sock, %struct.sock* %138, i32 0, i32 3
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = call i32 @set_bit(i32 %137, i32* %141)
  %143 = load i32, i32* @SOCK_NOSPACE, align 4
  %144 = load %struct.sock*, %struct.sock** %9, align 8
  %145 = getelementptr inbounds %struct.sock, %struct.sock* %144, i32 0, i32 3
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = call i32 @set_bit(i32 %143, i32* %147)
  %149 = load %struct.sock*, %struct.sock** %9, align 8
  %150 = call i64 @sk_stream_wspace(%struct.sock* %149)
  %151 = load %struct.sock*, %struct.sock** %9, align 8
  %152 = call i64 @sk_stream_min_wspace(%struct.sock* %151)
  %153 = icmp sge i64 %150, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %136
  %155 = load i32, i32* @POLLOUT, align 4
  %156 = load i32, i32* @POLLWRNORM, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* %8, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %8, align 4
  br label %160

160:                                              ; preds = %154, %136
  br label %161

161:                                              ; preds = %160, %130
  br label %162

162:                                              ; preds = %161, %117
  %163 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %164 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @TCP_URG_VALID, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %162
  %170 = load i32, i32* @POLLPRI, align 4
  %171 = load i32, i32* %8, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %8, align 4
  br label %173

173:                                              ; preds = %169, %162
  br label %174

174:                                              ; preds = %173, %64
  %175 = call i32 (...) @smp_rmb()
  %176 = load %struct.sock*, %struct.sock** %9, align 8
  %177 = getelementptr inbounds %struct.sock, %struct.sock* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %174
  %181 = load i32, i32* @POLLERR, align 4
  %182 = load i32, i32* %8, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %8, align 4
  br label %184

184:                                              ; preds = %180, %174
  %185 = load i32, i32* %8, align 4
  store i32 %185, i32* %4, align 4
  br label %186

186:                                              ; preds = %184, %30
  %187 = load i32, i32* %4, align 4
  ret i32 %187
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @inet_sock_cpu_or_flow_record(%struct.sock*) #1

declare dso_local i32 @sock_poll_wait(%struct.file*, i32, i32*) #1

declare dso_local i32 @inet_csk_listen_poll(%struct.sock*) #1

declare dso_local i32 @sock_rcvlowat(%struct.sock*, i32, i32) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i64 @sk_stream_wspace(%struct.sock*) #1

declare dso_local i64 @sk_stream_min_wspace(%struct.sock*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @smp_rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
