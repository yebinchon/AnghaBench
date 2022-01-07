; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_datagram.c_datagram_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_datagram.c_datagram_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i64, %struct.TYPE_2__*, i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@POLLERR = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@POLLRDHUP = common dso_local global i32 0, align 4
@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i64 0, align 8
@TCP_SYN_SENT = common dso_local global i64 0, align 8
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@POLLWRBAND = common dso_local global i32 0, align 4
@SOCK_ASYNC_NOSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @datagram_poll(%struct.file* %0, %struct.socket* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.socket*, %struct.socket** %6, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 0
  %12 = load %struct.sock*, %struct.sock** %11, align 8
  store %struct.sock* %12, %struct.sock** %8, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = load %struct.sock*, %struct.sock** %8, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @sock_poll_wait(%struct.file* %13, i32 %16, i32* %17)
  store i32 0, i32* %9, align 4
  %19 = load %struct.sock*, %struct.sock** %8, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %3
  %24 = load %struct.sock*, %struct.sock** %8, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 4
  %26 = call i32 @skb_queue_empty(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23, %3
  %29 = load i32, i32* @POLLERR, align 4
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %28, %23
  %33 = load %struct.sock*, %struct.sock** %8, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @RCV_SHUTDOWN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i32, i32* @POLLRDHUP, align 4
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %39, %32
  %44 = load %struct.sock*, %struct.sock** %8, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @SHUTDOWN_MASK, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* @POLLHUP, align 4
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %49, %43
  %54 = load %struct.sock*, %struct.sock** %8, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 3
  %56 = call i32 @skb_queue_empty(i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load %struct.sock*, %struct.sock** %8, align 8
  %60 = getelementptr inbounds %struct.sock, %struct.sock* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @RCV_SHUTDOWN, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58, %53
  %66 = load i32, i32* @POLLIN, align 4
  %67 = load i32, i32* @POLLRDNORM, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* %9, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %65, %58
  %72 = load %struct.sock*, %struct.sock** %8, align 8
  %73 = call i64 @connection_based(%struct.sock* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %94

75:                                               ; preds = %71
  %76 = load %struct.sock*, %struct.sock** %8, align 8
  %77 = getelementptr inbounds %struct.sock, %struct.sock* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @TCP_CLOSE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load i32, i32* @POLLHUP, align 4
  %83 = load i32, i32* %9, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %81, %75
  %86 = load %struct.sock*, %struct.sock** %8, align 8
  %87 = getelementptr inbounds %struct.sock, %struct.sock* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @TCP_SYN_SENT, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %4, align 4
  br label %115

93:                                               ; preds = %85
  br label %94

94:                                               ; preds = %93, %71
  %95 = load %struct.sock*, %struct.sock** %8, align 8
  %96 = call i64 @sock_writeable(%struct.sock* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %94
  %99 = load i32, i32* @POLLOUT, align 4
  %100 = load i32, i32* @POLLWRNORM, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @POLLWRBAND, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* %9, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %9, align 4
  br label %113

106:                                              ; preds = %94
  %107 = load i32, i32* @SOCK_ASYNC_NOSPACE, align 4
  %108 = load %struct.sock*, %struct.sock** %8, align 8
  %109 = getelementptr inbounds %struct.sock, %struct.sock* %108, i32 0, i32 2
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = call i32 @set_bit(i32 %107, i32* %111)
  br label %113

113:                                              ; preds = %106, %98
  %114 = load i32, i32* %9, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %113, %91
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @sock_poll_wait(%struct.file*, i32, i32*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i64 @connection_based(%struct.sock*) #1

declare dso_local i64 @sock_writeable(%struct.sock*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
