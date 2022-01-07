; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_socket.c_sctp_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_socket.c_sctp_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, %struct.TYPE_4__*, i32, i32, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sctp_sock = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@TCP = common dso_local global i32 0, align 4
@LISTENING = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@POLLRDHUP = common dso_local global i32 0, align 4
@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@UDP = common dso_local global i32 0, align 4
@CLOSED = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@SOCK_ASYNC_NOSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_poll(%struct.file* %0, %struct.socket* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sctp_sock*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.socket*, %struct.socket** %6, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 0
  %13 = load %struct.sock*, %struct.sock** %12, align 8
  store %struct.sock* %13, %struct.sock** %8, align 8
  %14 = load %struct.sock*, %struct.sock** %8, align 8
  %15 = call %struct.sctp_sock* @sctp_sk(%struct.sock* %14)
  store %struct.sctp_sock* %15, %struct.sctp_sock** %9, align 8
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = load %struct.sock*, %struct.sock** %8, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @poll_wait(%struct.file* %16, i32 %19, i32* %20)
  %22 = load %struct.sock*, %struct.sock** %8, align 8
  %23 = load i32, i32* @TCP, align 4
  %24 = call i64 @sctp_style(%struct.sock* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %3
  %27 = load %struct.sock*, %struct.sock** %8, align 8
  %28 = load i32, i32* @LISTENING, align 4
  %29 = call i64 @sctp_sstate(%struct.sock* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load %struct.sctp_sock*, %struct.sctp_sock** %9, align 8
  %33 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i32 @list_empty(i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @POLLIN, align 4
  %40 = load i32, i32* @POLLRDNORM, align 4
  %41 = or i32 %39, %40
  br label %43

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42, %38
  %44 = phi i32 [ %41, %38 ], [ 0, %42 ]
  store i32 %44, i32* %4, align 4
  br label %139

45:                                               ; preds = %26, %3
  store i32 0, i32* %10, align 4
  %46 = load %struct.sock*, %struct.sock** %8, align 8
  %47 = getelementptr inbounds %struct.sock, %struct.sock* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load %struct.sock*, %struct.sock** %8, align 8
  %52 = getelementptr inbounds %struct.sock, %struct.sock* %51, i32 0, i32 3
  %53 = call i32 @skb_queue_empty(i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %50, %45
  %56 = load i32, i32* @POLLERR, align 4
  %57 = load i32, i32* %10, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %55, %50
  %60 = load %struct.sock*, %struct.sock** %8, align 8
  %61 = getelementptr inbounds %struct.sock, %struct.sock* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @RCV_SHUTDOWN, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load i32, i32* @POLLRDHUP, align 4
  %68 = load i32, i32* %10, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %66, %59
  %71 = load %struct.sock*, %struct.sock** %8, align 8
  %72 = getelementptr inbounds %struct.sock, %struct.sock* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @SHUTDOWN_MASK, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i32, i32* @POLLHUP, align 4
  %78 = load i32, i32* %10, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %76, %70
  %81 = load %struct.sock*, %struct.sock** %8, align 8
  %82 = getelementptr inbounds %struct.sock, %struct.sock* %81, i32 0, i32 2
  %83 = call i32 @skb_queue_empty(i32* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load %struct.sock*, %struct.sock** %8, align 8
  %87 = getelementptr inbounds %struct.sock, %struct.sock* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @RCV_SHUTDOWN, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %85, %80
  %93 = load i32, i32* @POLLIN, align 4
  %94 = load i32, i32* @POLLRDNORM, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* %10, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %92, %85
  %99 = load %struct.sock*, %struct.sock** %8, align 8
  %100 = load i32, i32* @UDP, align 4
  %101 = call i64 @sctp_style(%struct.sock* %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %98
  %104 = load %struct.sock*, %struct.sock** %8, align 8
  %105 = load i32, i32* @CLOSED, align 4
  %106 = call i64 @sctp_sstate(%struct.sock* %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %4, align 4
  br label %139

110:                                              ; preds = %103, %98
  %111 = load %struct.sock*, %struct.sock** %8, align 8
  %112 = call i64 @sctp_writeable(%struct.sock* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %110
  %115 = load i32, i32* @POLLOUT, align 4
  %116 = load i32, i32* @POLLWRNORM, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* %10, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %10, align 4
  br label %137

120:                                              ; preds = %110
  %121 = load i32, i32* @SOCK_ASYNC_NOSPACE, align 4
  %122 = load %struct.sock*, %struct.sock** %8, align 8
  %123 = getelementptr inbounds %struct.sock, %struct.sock* %122, i32 0, i32 1
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = call i32 @set_bit(i32 %121, i32* %125)
  %127 = load %struct.sock*, %struct.sock** %8, align 8
  %128 = call i64 @sctp_writeable(%struct.sock* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %120
  %131 = load i32, i32* @POLLOUT, align 4
  %132 = load i32, i32* @POLLWRNORM, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* %10, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %10, align 4
  br label %136

136:                                              ; preds = %130, %120
  br label %137

137:                                              ; preds = %136, %114
  %138 = load i32, i32* %10, align 4
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %137, %108, %43
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local %struct.sctp_sock* @sctp_sk(%struct.sock*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32, i32*) #1

declare dso_local i64 @sctp_style(%struct.sock*, i32) #1

declare dso_local i64 @sctp_sstate(%struct.sock*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i64 @sctp_writeable(%struct.sock*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
