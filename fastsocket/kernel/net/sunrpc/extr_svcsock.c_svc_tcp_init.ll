; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcsock.c_svc_tcp_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcsock.c_svc_tcp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_sock = type { %struct.TYPE_4__, i32*, i64, i64, %struct.sock* }
%struct.TYPE_4__ = type { i32 }
%struct.sock = type { i64, i32, i32, i32 }
%struct.svc_serv = type { i32 }
%struct.TYPE_3__ = type { i32 }

@svc_tcp_class = common dso_local global i32 0, align 4
@XPT_CACHE_AUTH = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"setting up TCP socket for listening\0A\00", align 1
@XPT_LISTENER = common dso_local global i32 0, align 4
@svc_tcp_listen_data_ready = common dso_local global i32 0, align 4
@XPT_CONN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"setting up TCP socket for reading\0A\00", align 1
@svc_tcp_state_change = common dso_local global i32 0, align 4
@svc_tcp_data_ready = common dso_local global i32 0, align 4
@svc_tcp_write_space = common dso_local global i32 0, align 4
@TCP_NAGLE_OFF = common dso_local global i32 0, align 4
@XPT_DATA = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@XPT_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_sock*, %struct.svc_serv*)* @svc_tcp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_tcp_init(%struct.svc_sock* %0, %struct.svc_serv* %1) #0 {
  %3 = alloca %struct.svc_sock*, align 8
  %4 = alloca %struct.svc_serv*, align 8
  %5 = alloca %struct.sock*, align 8
  store %struct.svc_sock* %0, %struct.svc_sock** %3, align 8
  store %struct.svc_serv* %1, %struct.svc_serv** %4, align 8
  %6 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %7 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %6, i32 0, i32 4
  %8 = load %struct.sock*, %struct.sock** %7, align 8
  store %struct.sock* %8, %struct.sock** %5, align 8
  %9 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %10 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %9, i32 0, i32 0
  %11 = load %struct.svc_serv*, %struct.svc_serv** %4, align 8
  %12 = call i32 @svc_xprt_init(i32* @svc_tcp_class, %struct.TYPE_4__* %10, %struct.svc_serv* %11)
  %13 = load i32, i32* @XPT_CACHE_AUTH, align 4
  %14 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %15 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = call i32 @set_bit(i32 %13, i32* %16)
  %18 = load %struct.sock*, %struct.sock** %5, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TCP_LISTEN, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %2
  %24 = call i32 @dprintk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @XPT_LISTENER, align 4
  %26 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %27 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @set_bit(i32 %25, i32* %28)
  %30 = load i32, i32* @svc_tcp_listen_data_ready, align 4
  %31 = load %struct.sock*, %struct.sock** %5, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @XPT_CONN, align 4
  %34 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %35 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 @set_bit(i32 %33, i32* %36)
  br label %81

38:                                               ; preds = %2
  %39 = call i32 @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @svc_tcp_state_change, align 4
  %41 = load %struct.sock*, %struct.sock** %5, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @svc_tcp_data_ready, align 4
  %44 = load %struct.sock*, %struct.sock** %5, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @svc_tcp_write_space, align 4
  %47 = load %struct.sock*, %struct.sock** %5, align 8
  %48 = getelementptr inbounds %struct.sock, %struct.sock* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %50 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  %51 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %52 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %54 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = call i32 @memset(i32* %56, i32 0, i32 8)
  %58 = load i32, i32* @TCP_NAGLE_OFF, align 4
  %59 = load %struct.sock*, %struct.sock** %5, align 8
  %60 = call %struct.TYPE_3__* @tcp_sk(%struct.sock* %59)
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %58
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* @XPT_DATA, align 4
  %65 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %66 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = call i32 @set_bit(i32 %64, i32* %67)
  %69 = load %struct.sock*, %struct.sock** %5, align 8
  %70 = getelementptr inbounds %struct.sock, %struct.sock* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @TCP_ESTABLISHED, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %38
  %75 = load i32, i32* @XPT_CLOSE, align 4
  %76 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %77 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = call i32 @set_bit(i32 %75, i32* %78)
  br label %80

80:                                               ; preds = %74, %38
  br label %81

81:                                               ; preds = %80, %23
  ret void
}

declare dso_local i32 @svc_xprt_init(i32*, %struct.TYPE_4__*, %struct.svc_serv*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.TYPE_3__* @tcp_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
