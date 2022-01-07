; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-output.c_rxrpc_send_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-output.c_rxrpc_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_transport = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.sk_buff = type { i32, i32 }
%struct.kvec = type { i32, i32 }
%struct.msghdr = type { i32, i64, i64, i32*, i32* }

@.str = private unnamed_addr constant [6 x i8] c",{%d}\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c" = %d [%u]\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"send fragment\00", align 1
@IP_PMTUDISC_DONT = common dso_local global i32 0, align 4
@SOL_IP = common dso_local global i32 0, align 4
@IP_MTU_DISCOVER = common dso_local global i32 0, align 4
@IP_PMTUDISC_DO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c" = %d [frag %u]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rxrpc_send_packet(%struct.rxrpc_transport* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rxrpc_transport*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca [1 x %struct.kvec], align 4
  %7 = alloca %struct.msghdr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rxrpc_transport* %0, %struct.rxrpc_transport** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @_enter(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %6, i64 0, i64 0
  %18 = getelementptr inbounds %struct.kvec, %struct.kvec* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %6, i64 0, i64 0
  %23 = getelementptr inbounds %struct.kvec, %struct.kvec* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %4, align 8
  %25 = getelementptr inbounds %struct.rxrpc_transport, %struct.rxrpc_transport* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 4
  store i32* %29, i32** %30, align 8
  %31 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 0
  store i32 4, i32* %31, align 8
  %32 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 3
  store i32* null, i32** %32, align 8
  %33 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = sub i64 %38, 4
  %40 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %4, align 8
  %41 = getelementptr inbounds %struct.rxrpc_transport, %struct.rxrpc_transport* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp ult i64 %39, %45
  br i1 %46, label %47, label %82

47:                                               ; preds = %2
  %48 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %4, align 8
  %49 = getelementptr inbounds %struct.rxrpc_transport, %struct.rxrpc_transport* %48, i32 0, i32 1
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = call i32 @down_read(i32* %51)
  %53 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %4, align 8
  %54 = getelementptr inbounds %struct.rxrpc_transport, %struct.rxrpc_transport* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %6, i64 0, i64 0
  %59 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %6, i64 0, i64 0
  %60 = getelementptr inbounds %struct.kvec, %struct.kvec* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @kernel_sendmsg(i32 %57, %struct.msghdr* %7, %struct.kvec* %58, i32 1, i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %4, align 8
  %64 = getelementptr inbounds %struct.rxrpc_transport, %struct.rxrpc_transport* %63, i32 0, i32 1
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = call i32 @up_read(i32* %66)
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @EMSGSIZE, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %47
  br label %83

73:                                               ; preds = %47
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %4, align 8
  %76 = getelementptr inbounds %struct.rxrpc_transport, %struct.rxrpc_transport* %75, i32 0, i32 0
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @_leave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %79)
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %3, align 4
  br label %137

82:                                               ; preds = %2
  br label %83

83:                                               ; preds = %82, %72
  %84 = call i32 @_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %85 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %4, align 8
  %86 = getelementptr inbounds %struct.rxrpc_transport, %struct.rxrpc_transport* %85, i32 0, i32 1
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = call i32 @down_write(i32* %88)
  %90 = load i32, i32* @IP_PMTUDISC_DONT, align 4
  store i32 %90, i32* %9, align 4
  %91 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %4, align 8
  %92 = getelementptr inbounds %struct.rxrpc_transport, %struct.rxrpc_transport* %91, i32 0, i32 1
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @SOL_IP, align 4
  %97 = load i32, i32* @IP_MTU_DISCOVER, align 4
  %98 = bitcast i32* %9 to i8*
  %99 = call i32 @kernel_setsockopt(i32 %95, i32 %96, i32 %97, i8* %98, i32 4)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %123

102:                                              ; preds = %83
  %103 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %4, align 8
  %104 = getelementptr inbounds %struct.rxrpc_transport, %struct.rxrpc_transport* %103, i32 0, i32 1
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %6, i64 0, i64 0
  %109 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %6, i64 0, i64 0
  %110 = getelementptr inbounds %struct.kvec, %struct.kvec* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @kernel_sendmsg(i32 %107, %struct.msghdr* %7, %struct.kvec* %108, i32 1, i32 %111)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* @IP_PMTUDISC_DO, align 4
  store i32 %113, i32* %9, align 4
  %114 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %4, align 8
  %115 = getelementptr inbounds %struct.rxrpc_transport, %struct.rxrpc_transport* %114, i32 0, i32 1
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @SOL_IP, align 4
  %120 = load i32, i32* @IP_MTU_DISCOVER, align 4
  %121 = bitcast i32* %9 to i8*
  %122 = call i32 @kernel_setsockopt(i32 %118, i32 %119, i32 %120, i8* %121, i32 4)
  br label %123

123:                                              ; preds = %102, %83
  %124 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %4, align 8
  %125 = getelementptr inbounds %struct.rxrpc_transport, %struct.rxrpc_transport* %124, i32 0, i32 1
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = call i32 @up_write(i32* %127)
  %129 = load i32, i32* %8, align 4
  %130 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %4, align 8
  %131 = getelementptr inbounds %struct.rxrpc_transport, %struct.rxrpc_transport* %130, i32 0, i32 0
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @_leave(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %129, i32 %134)
  %136 = load i32, i32* %8, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %123, %73
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @kernel_sendmsg(i32, %struct.msghdr*, %struct.kvec*, i32, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @_leave(i8*, i32, i32) #1

declare dso_local i32 @_debug(i8*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @kernel_setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
