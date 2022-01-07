; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/unix/extr_af_unix.c_unix_dgram_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/unix/extr_af_unix.c_unix_dgram_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i64, i64, %struct.TYPE_3__*, i32, i32, i64, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@POLLERR = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@POLLRDHUP = common dso_local global i32 0, align 4
@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@TCP_CLOSE = common dso_local global i64 0, align 8
@TCP_SYN_SENT = common dso_local global i64 0, align 8
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@POLLWRBAND = common dso_local global i32 0, align 4
@SOCK_ASYNC_NOSPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.socket*, i32*)* @unix_dgram_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unix_dgram_poll(%struct.file* %0, %struct.socket* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.socket*, %struct.socket** %6, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %14, %struct.sock** %8, align 8
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = load %struct.sock*, %struct.sock** %8, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 7
  %18 = load i32*, i32** %17, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @sock_poll_wait(%struct.file* %15, i32* %18, i32* %19)
  store i32 0, i32* %10, align 4
  %21 = load %struct.sock*, %struct.sock** %8, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %3
  %26 = load %struct.sock*, %struct.sock** %8, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 5
  %28 = call i32 @skb_queue_empty(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25, %3
  %31 = load i32, i32* @POLLERR, align 4
  %32 = load i32, i32* %10, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %30, %25
  %35 = load %struct.sock*, %struct.sock** %8, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @RCV_SHUTDOWN, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i32, i32* @POLLRDHUP, align 4
  %43 = load i32, i32* %10, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %41, %34
  %46 = load %struct.sock*, %struct.sock** %8, align 8
  %47 = getelementptr inbounds %struct.sock, %struct.sock* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @SHUTDOWN_MASK, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i32, i32* @POLLHUP, align 4
  %53 = load i32, i32* %10, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %51, %45
  %56 = load %struct.sock*, %struct.sock** %8, align 8
  %57 = getelementptr inbounds %struct.sock, %struct.sock* %56, i32 0, i32 4
  %58 = call i32 @skb_queue_empty(i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load %struct.sock*, %struct.sock** %8, align 8
  %62 = getelementptr inbounds %struct.sock, %struct.sock* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @RCV_SHUTDOWN, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %60, %55
  %68 = load i32, i32* @POLLIN, align 4
  %69 = load i32, i32* @POLLRDNORM, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* %10, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %67, %60
  %74 = load %struct.sock*, %struct.sock** %8, align 8
  %75 = getelementptr inbounds %struct.sock, %struct.sock* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @SOCK_SEQPACKET, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %98

79:                                               ; preds = %73
  %80 = load %struct.sock*, %struct.sock** %8, align 8
  %81 = getelementptr inbounds %struct.sock, %struct.sock* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @TCP_CLOSE, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load i32, i32* @POLLHUP, align 4
  %87 = load i32, i32* %10, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %85, %79
  %90 = load %struct.sock*, %struct.sock** %8, align 8
  %91 = getelementptr inbounds %struct.sock, %struct.sock* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @TCP_SYN_SENT, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %4, align 4
  br label %149

97:                                               ; preds = %89
  br label %98

98:                                               ; preds = %97, %73
  %99 = load %struct.sock*, %struct.sock** %8, align 8
  %100 = call i32 @unix_writable(%struct.sock* %99)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %129

103:                                              ; preds = %98
  %104 = load %struct.sock*, %struct.sock** %8, align 8
  %105 = call %struct.sock* @unix_peer_get(%struct.sock* %104)
  store %struct.sock* %105, %struct.sock** %9, align 8
  %106 = load %struct.sock*, %struct.sock** %9, align 8
  %107 = icmp ne %struct.sock* %106, null
  br i1 %107, label %108, label %128

108:                                              ; preds = %103
  %109 = load %struct.sock*, %struct.sock** %9, align 8
  %110 = call %struct.sock* @unix_peer(%struct.sock* %109)
  %111 = load %struct.sock*, %struct.sock** %8, align 8
  %112 = icmp ne %struct.sock* %110, %111
  br i1 %112, label %113, label %125

113:                                              ; preds = %108
  %114 = load %struct.file*, %struct.file** %5, align 8
  %115 = load %struct.sock*, %struct.sock** %9, align 8
  %116 = call %struct.TYPE_4__* @unix_sk(%struct.sock* %115)
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32*, i32** %7, align 8
  %119 = call i32 @sock_poll_wait(%struct.file* %114, i32* %117, i32* %118)
  %120 = load %struct.sock*, %struct.sock** %9, align 8
  %121 = call i64 @unix_recvq_full(%struct.sock* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %113
  store i32 0, i32* %11, align 4
  br label %124

124:                                              ; preds = %123, %113
  br label %125

125:                                              ; preds = %124, %108
  %126 = load %struct.sock*, %struct.sock** %9, align 8
  %127 = call i32 @sock_put(%struct.sock* %126)
  br label %128

128:                                              ; preds = %125, %103
  br label %129

129:                                              ; preds = %128, %98
  %130 = load i32, i32* %11, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %129
  %133 = load i32, i32* @POLLOUT, align 4
  %134 = load i32, i32* @POLLWRNORM, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @POLLWRBAND, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* %10, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %10, align 4
  br label %147

140:                                              ; preds = %129
  %141 = load i32, i32* @SOCK_ASYNC_NOSPACE, align 4
  %142 = load %struct.sock*, %struct.sock** %8, align 8
  %143 = getelementptr inbounds %struct.sock, %struct.sock* %142, i32 0, i32 3
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = call i32 @set_bit(i32 %141, i32* %145)
  br label %147

147:                                              ; preds = %140, %132
  %148 = load i32, i32* %10, align 4
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %147, %95
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i32 @sock_poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @unix_writable(%struct.sock*) #1

declare dso_local %struct.sock* @unix_peer_get(%struct.sock*) #1

declare dso_local %struct.sock* @unix_peer(%struct.sock*) #1

declare dso_local %struct.TYPE_4__* @unix_sk(%struct.sock*) #1

declare dso_local i64 @unix_recvq_full(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
