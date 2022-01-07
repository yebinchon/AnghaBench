; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_af_bluetooth.c_bt_sock_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_af_bluetooth.c_bt_sock_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i32, %struct.TYPE_2__*, i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"sock %p, sk %p\00", align 1
@BT_LISTEN = common dso_local global i64 0, align 8
@POLLERR = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@POLLRDHUP = common dso_local global i32 0, align 4
@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@BT_CLOSED = common dso_local global i64 0, align 8
@BT_CONNECT = common dso_local global i64 0, align 8
@BT_CONNECT2 = common dso_local global i64 0, align 8
@BT_CONFIG = common dso_local global i64 0, align 8
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@POLLWRBAND = common dso_local global i32 0, align 4
@SOCK_ASYNC_NOSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bt_sock_poll(%struct.file* %0, %struct.socket* %1, i32* %2) #0 {
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
  store i32 0, i32* %9, align 4
  %13 = load %struct.socket*, %struct.socket** %6, align 8
  %14 = load %struct.sock*, %struct.sock** %8, align 8
  %15 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.socket* %13, %struct.sock* %14)
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = load %struct.sock*, %struct.sock** %8, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @poll_wait(%struct.file* %16, i32 %19, i32* %20)
  %22 = load %struct.sock*, %struct.sock** %8, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BT_LISTEN, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load %struct.sock*, %struct.sock** %8, align 8
  %29 = call i32 @bt_accept_poll(%struct.sock* %28)
  store i32 %29, i32* %4, align 4
  br label %134

30:                                               ; preds = %3
  %31 = load %struct.sock*, %struct.sock** %8, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.sock*, %struct.sock** %8, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 4
  %38 = call i32 @skb_queue_empty(i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35, %30
  %41 = load i32, i32* @POLLERR, align 4
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %40, %35
  %45 = load %struct.sock*, %struct.sock** %8, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @RCV_SHUTDOWN, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32, i32* @POLLRDHUP, align 4
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %51, %44
  %56 = load %struct.sock*, %struct.sock** %8, align 8
  %57 = getelementptr inbounds %struct.sock, %struct.sock* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @SHUTDOWN_MASK, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i32, i32* @POLLHUP, align 4
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %61, %55
  %66 = load %struct.sock*, %struct.sock** %8, align 8
  %67 = getelementptr inbounds %struct.sock, %struct.sock* %66, i32 0, i32 3
  %68 = call i32 @skb_queue_empty(i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load %struct.sock*, %struct.sock** %8, align 8
  %72 = getelementptr inbounds %struct.sock, %struct.sock* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @RCV_SHUTDOWN, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %70, %65
  %78 = load i32, i32* @POLLIN, align 4
  %79 = load i32, i32* @POLLRDNORM, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* %9, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %77, %70
  %84 = load %struct.sock*, %struct.sock** %8, align 8
  %85 = getelementptr inbounds %struct.sock, %struct.sock* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @BT_CLOSED, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load i32, i32* @POLLHUP, align 4
  %91 = load i32, i32* %9, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %89, %83
  %94 = load %struct.sock*, %struct.sock** %8, align 8
  %95 = getelementptr inbounds %struct.sock, %struct.sock* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @BT_CONNECT, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %111, label %99

99:                                               ; preds = %93
  %100 = load %struct.sock*, %struct.sock** %8, align 8
  %101 = getelementptr inbounds %struct.sock, %struct.sock* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @BT_CONNECT2, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %111, label %105

105:                                              ; preds = %99
  %106 = load %struct.sock*, %struct.sock** %8, align 8
  %107 = getelementptr inbounds %struct.sock, %struct.sock* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @BT_CONFIG, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %105, %99, %93
  %112 = load i32, i32* %9, align 4
  store i32 %112, i32* %4, align 4
  br label %134

113:                                              ; preds = %105
  %114 = load %struct.sock*, %struct.sock** %8, align 8
  %115 = call i64 @sock_writeable(%struct.sock* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %113
  %118 = load i32, i32* @POLLOUT, align 4
  %119 = load i32, i32* @POLLWRNORM, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @POLLWRBAND, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* %9, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %9, align 4
  br label %132

125:                                              ; preds = %113
  %126 = load i32, i32* @SOCK_ASYNC_NOSPACE, align 4
  %127 = load %struct.sock*, %struct.sock** %8, align 8
  %128 = getelementptr inbounds %struct.sock, %struct.sock* %127, i32 0, i32 2
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = call i32 @set_bit(i32 %126, i32* %130)
  br label %132

132:                                              ; preds = %125, %117
  %133 = load i32, i32* %9, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %132, %111, %27
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @BT_DBG(i8*, %struct.socket*, %struct.sock*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32, i32*) #1

declare dso_local i32 @bt_accept_poll(%struct.sock*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i64 @sock_writeable(%struct.sock*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
