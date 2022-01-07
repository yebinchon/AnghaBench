; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_af_inet.c_inet_stream_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_af_inet.c_inet_stream_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.sock* }
%struct.sock = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.sock*, i32)*, i32 (%struct.sock*, %struct.sockaddr*, i32)* }
%struct.sockaddr = type { i64 }

@AF_UNSPEC = common dso_local global i64 0, align 8
@SS_DISCONNECTING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@TCPF_SYN_SENT = common dso_local global i32 0, align 4
@TCPF_SYN_RECV = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_stream_connect(%struct.socket* %0, %struct.sockaddr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.socket*, %struct.socket** %5, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 1
  %14 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %14, %struct.sock** %9, align 8
  %15 = load %struct.sock*, %struct.sock** %9, align 8
  %16 = call i32 @lock_sock(%struct.sock* %15)
  %17 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %18 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AF_UNSPEC, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %4
  %23 = load %struct.sock*, %struct.sock** %9, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)** %26, align 8
  %28 = load %struct.sock*, %struct.sock** %9, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 %27(%struct.sock* %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i32, i32* @SS_DISCONNECTING, align 4
  br label %36

35:                                               ; preds = %22
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i32 [ %34, %33 ], [ 128, %35 ]
  %38 = load %struct.socket*, %struct.socket** %5, align 8
  %39 = getelementptr inbounds %struct.socket, %struct.socket* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %122

40:                                               ; preds = %4
  %41 = load %struct.socket*, %struct.socket** %5, align 8
  %42 = getelementptr inbounds %struct.socket, %struct.socket* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %44 [
    i32 130, label %47
    i32 129, label %50
    i32 128, label %53
  ]

44:                                               ; preds = %40
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %10, align 4
  br label %122

47:                                               ; preds = %40
  %48 = load i32, i32* @EISCONN, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %10, align 4
  br label %122

50:                                               ; preds = %40
  %51 = load i32, i32* @EALREADY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %10, align 4
  br label %80

53:                                               ; preds = %40
  %54 = load i32, i32* @EISCONN, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %10, align 4
  %56 = load %struct.sock*, %struct.sock** %9, align 8
  %57 = getelementptr inbounds %struct.sock, %struct.sock* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @TCP_CLOSE, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %122

62:                                               ; preds = %53
  %63 = load %struct.sock*, %struct.sock** %9, align 8
  %64 = getelementptr inbounds %struct.sock, %struct.sock* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, %struct.sockaddr*, i32)** %66, align 8
  %68 = load %struct.sock*, %struct.sock** %9, align 8
  %69 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 %67(%struct.sock* %68, %struct.sockaddr* %69, i32 %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  br label %122

75:                                               ; preds = %62
  %76 = load %struct.socket*, %struct.socket** %5, align 8
  %77 = getelementptr inbounds %struct.socket, %struct.socket* %76, i32 0, i32 0
  store i32 129, i32* %77, align 8
  %78 = load i32, i32* @EINPROGRESS, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %75, %50
  %81 = load %struct.sock*, %struct.sock** %9, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @O_NONBLOCK, align 4
  %84 = and i32 %82, %83
  %85 = call i64 @sock_sndtimeo(%struct.sock* %81, i32 %84)
  store i64 %85, i64* %11, align 8
  %86 = load %struct.sock*, %struct.sock** %9, align 8
  %87 = getelementptr inbounds %struct.sock, %struct.sock* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = shl i32 1, %88
  %90 = load i32, i32* @TCPF_SYN_SENT, align 4
  %91 = load i32, i32* @TCPF_SYN_RECV, align 4
  %92 = or i32 %90, %91
  %93 = and i32 %89, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %112

95:                                               ; preds = %80
  %96 = load i64, i64* %11, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load %struct.sock*, %struct.sock** %9, align 8
  %100 = load i64, i64* %11, align 8
  %101 = call i32 @inet_wait_for_connect(%struct.sock* %99, i64 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %98, %95
  br label %122

104:                                              ; preds = %98
  %105 = load i64, i64* %11, align 8
  %106 = call i32 @sock_intr_errno(i64 %105)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* @current, align 4
  %108 = call i64 @signal_pending(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  br label %122

111:                                              ; preds = %104
  br label %112

112:                                              ; preds = %111, %80
  %113 = load %struct.sock*, %struct.sock** %9, align 8
  %114 = getelementptr inbounds %struct.sock, %struct.sock* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @TCP_CLOSE, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %126

119:                                              ; preds = %112
  %120 = load %struct.socket*, %struct.socket** %5, align 8
  %121 = getelementptr inbounds %struct.socket, %struct.socket* %120, i32 0, i32 0
  store i32 130, i32* %121, align 8
  store i32 0, i32* %10, align 4
  br label %122

122:                                              ; preds = %153, %119, %110, %103, %74, %61, %47, %44, %36
  %123 = load %struct.sock*, %struct.sock** %9, align 8
  %124 = call i32 @release_sock(%struct.sock* %123)
  %125 = load i32, i32* %10, align 4
  ret i32 %125

126:                                              ; preds = %118
  %127 = load %struct.sock*, %struct.sock** %9, align 8
  %128 = call i64 @sock_error(%struct.sock* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  br label %135

131:                                              ; preds = %126
  %132 = load i32, i32* @ECONNABORTED, align 4
  %133 = sub nsw i32 0, %132
  %134 = sext i32 %133 to i64
  br label %135

135:                                              ; preds = %131, %130
  %136 = phi i64 [ %128, %130 ], [ %134, %131 ]
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %10, align 4
  %138 = load %struct.socket*, %struct.socket** %5, align 8
  %139 = getelementptr inbounds %struct.socket, %struct.socket* %138, i32 0, i32 0
  store i32 128, i32* %139, align 8
  %140 = load %struct.sock*, %struct.sock** %9, align 8
  %141 = getelementptr inbounds %struct.sock, %struct.sock* %140, i32 0, i32 1
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)** %143, align 8
  %145 = load %struct.sock*, %struct.sock** %9, align 8
  %146 = load i32, i32* %8, align 4
  %147 = call i32 %144(%struct.sock* %145, i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %135
  %150 = load i32, i32* @SS_DISCONNECTING, align 4
  %151 = load %struct.socket*, %struct.socket** %5, align 8
  %152 = getelementptr inbounds %struct.socket, %struct.socket* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  br label %153

153:                                              ; preds = %149, %135
  br label %122
}

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_sndtimeo(%struct.sock*, i32) #1

declare dso_local i32 @inet_wait_for_connect(%struct.sock*, i64) #1

declare dso_local i32 @sock_intr_errno(i64) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i64 @sock_error(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
