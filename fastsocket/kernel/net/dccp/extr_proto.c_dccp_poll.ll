; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_proto.c_dccp_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_proto.c_dccp_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i32, %struct.TYPE_2__*, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@DCCP_LISTEN = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@DCCP_CLOSED = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLRDHUP = common dso_local global i32 0, align 4
@DCCPF_REQUESTING = common dso_local global i32 0, align 4
@DCCPF_RESPOND = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@SOCK_ASYNC_NOSPACE = common dso_local global i32 0, align 4
@SOCK_NOSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_poll(%struct.file* %0, %struct.socket* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.socket*, %struct.socket** %6, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 0
  %12 = load %struct.sock*, %struct.sock** %11, align 8
  store %struct.sock* %12, %struct.sock** %9, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = load %struct.sock*, %struct.sock** %9, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @sock_poll_wait(%struct.file* %13, i32 %16, i32* %17)
  %19 = load %struct.sock*, %struct.sock** %9, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @DCCP_LISTEN, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load %struct.sock*, %struct.sock** %9, align 8
  %26 = call i32 @inet_csk_listen_poll(%struct.sock* %25)
  store i32 %26, i32* %4, align 4
  br label %135

27:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  %28 = load %struct.sock*, %struct.sock** %9, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @POLLERR, align 4
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %32, %27
  %35 = load %struct.sock*, %struct.sock** %9, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SHUTDOWN_MASK, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.sock*, %struct.sock** %9, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @DCCP_CLOSED, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40, %34
  %47 = load i32, i32* @POLLHUP, align 4
  %48 = load i32, i32* %8, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %46, %40
  %51 = load %struct.sock*, %struct.sock** %9, align 8
  %52 = getelementptr inbounds %struct.sock, %struct.sock* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @RCV_SHUTDOWN, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %50
  %58 = load i32, i32* @POLLIN, align 4
  %59 = load i32, i32* @POLLRDNORM, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @POLLRDHUP, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %57, %50
  %66 = load %struct.sock*, %struct.sock** %9, align 8
  %67 = getelementptr inbounds %struct.sock, %struct.sock* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = shl i32 1, %68
  %70 = load i32, i32* @DCCPF_REQUESTING, align 4
  %71 = load i32, i32* @DCCPF_RESPOND, align 4
  %72 = or i32 %70, %71
  %73 = xor i32 %72, -1
  %74 = and i32 %69, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %133

76:                                               ; preds = %65
  %77 = load %struct.sock*, %struct.sock** %9, align 8
  %78 = getelementptr inbounds %struct.sock, %struct.sock* %77, i32 0, i32 3
  %79 = call i64 @atomic_read(i32* %78)
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load i32, i32* @POLLIN, align 4
  %83 = load i32, i32* @POLLRDNORM, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* %8, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %81, %76
  %88 = load %struct.sock*, %struct.sock** %9, align 8
  %89 = getelementptr inbounds %struct.sock, %struct.sock* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @SEND_SHUTDOWN, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %132, label %94

94:                                               ; preds = %87
  %95 = load %struct.sock*, %struct.sock** %9, align 8
  %96 = call i64 @sk_stream_wspace(%struct.sock* %95)
  %97 = load %struct.sock*, %struct.sock** %9, align 8
  %98 = call i64 @sk_stream_min_wspace(%struct.sock* %97)
  %99 = icmp sge i64 %96, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %94
  %101 = load i32, i32* @POLLOUT, align 4
  %102 = load i32, i32* @POLLWRNORM, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* %8, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %8, align 4
  br label %131

106:                                              ; preds = %94
  %107 = load i32, i32* @SOCK_ASYNC_NOSPACE, align 4
  %108 = load %struct.sock*, %struct.sock** %9, align 8
  %109 = getelementptr inbounds %struct.sock, %struct.sock* %108, i32 0, i32 2
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = call i32 @set_bit(i32 %107, i32* %111)
  %113 = load i32, i32* @SOCK_NOSPACE, align 4
  %114 = load %struct.sock*, %struct.sock** %9, align 8
  %115 = getelementptr inbounds %struct.sock, %struct.sock* %114, i32 0, i32 2
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = call i32 @set_bit(i32 %113, i32* %117)
  %119 = load %struct.sock*, %struct.sock** %9, align 8
  %120 = call i64 @sk_stream_wspace(%struct.sock* %119)
  %121 = load %struct.sock*, %struct.sock** %9, align 8
  %122 = call i64 @sk_stream_min_wspace(%struct.sock* %121)
  %123 = icmp sge i64 %120, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %106
  %125 = load i32, i32* @POLLOUT, align 4
  %126 = load i32, i32* @POLLWRNORM, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* %8, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %8, align 4
  br label %130

130:                                              ; preds = %124, %106
  br label %131

131:                                              ; preds = %130, %100
  br label %132

132:                                              ; preds = %131, %87
  br label %133

133:                                              ; preds = %132, %65
  %134 = load i32, i32* %8, align 4
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %133, %24
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i32 @sock_poll_wait(%struct.file*, i32, i32*) #1

declare dso_local i32 @inet_csk_listen_poll(%struct.sock*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @sk_stream_wspace(%struct.sock*) #1

declare dso_local i64 @sk_stream_min_wspace(%struct.sock*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
