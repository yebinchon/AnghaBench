; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_tcp_listen.c_rds_tcp_accept_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_tcp_listen.c_rds_tcp_accept_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 (%struct.socket*, %struct.socket*, i32)* }
%struct.rds_connection = type { i32 }
%struct.inet_sock = type { i32, i32, i32, i32 }

@O_NONBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"accepted tcp %pI4:%u -> %pI4:%u\0A\00", align 1
@rds_tcp_transport = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RDS_CONN_DOWN = common dso_local global i32 0, align 4
@RDS_CONN_CONNECTING = common dso_local global i32 0, align 4
@RDS_CONN_UP = common dso_local global i64 0, align 8
@s_tcp_listen_closed_stale = common dso_local global i32 0, align 4
@s_tcp_connect_raced = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @rds_tcp_accept_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rds_tcp_accept_one(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.rds_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inet_sock*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  store %struct.socket* null, %struct.socket** %3, align 8
  %7 = load %struct.socket*, %struct.socket** %2, align 8
  %8 = getelementptr inbounds %struct.socket, %struct.socket* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.socket*, %struct.socket** %2, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.socket*, %struct.socket** %2, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @sock_create_lite(i32 %11, i32 %16, i32 %21, %struct.socket** %3)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %109

26:                                               ; preds = %1
  %27 = load %struct.socket*, %struct.socket** %2, align 8
  %28 = getelementptr inbounds %struct.socket, %struct.socket* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.socket*, %struct.socket** %3, align 8
  %31 = getelementptr inbounds %struct.socket, %struct.socket* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.socket*, %struct.socket** %2, align 8
  %33 = getelementptr inbounds %struct.socket, %struct.socket* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load %struct.socket*, %struct.socket** %3, align 8
  %36 = getelementptr inbounds %struct.socket, %struct.socket* %35, i32 0, i32 1
  store %struct.TYPE_3__* %34, %struct.TYPE_3__** %36, align 8
  %37 = load %struct.socket*, %struct.socket** %2, align 8
  %38 = getelementptr inbounds %struct.socket, %struct.socket* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32 (%struct.socket*, %struct.socket*, i32)*, i32 (%struct.socket*, %struct.socket*, i32)** %40, align 8
  %42 = load %struct.socket*, %struct.socket** %2, align 8
  %43 = load %struct.socket*, %struct.socket** %3, align 8
  %44 = load i32, i32* @O_NONBLOCK, align 4
  %45 = call i32 %41(%struct.socket* %42, %struct.socket* %43, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %26
  br label %109

49:                                               ; preds = %26
  %50 = load %struct.socket*, %struct.socket** %3, align 8
  %51 = call i32 @rds_tcp_tune(%struct.socket* %50)
  %52 = load %struct.socket*, %struct.socket** %3, align 8
  %53 = getelementptr inbounds %struct.socket, %struct.socket* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = call %struct.inet_sock* @inet_sk(%struct.TYPE_4__* %54)
  store %struct.inet_sock* %55, %struct.inet_sock** %6, align 8
  %56 = load %struct.inet_sock*, %struct.inet_sock** %6, align 8
  %57 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %56, i32 0, i32 1
  %58 = load %struct.inet_sock*, %struct.inet_sock** %6, align 8
  %59 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ntohs(i32 %60)
  %62 = load %struct.inet_sock*, %struct.inet_sock** %6, align 8
  %63 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %62, i32 0, i32 0
  %64 = load %struct.inet_sock*, %struct.inet_sock** %6, align 8
  %65 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ntohs(i32 %66)
  %68 = call i32 @rdsdebug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32* %57, i32 %61, i32* %63, i32 %67)
  %69 = load %struct.inet_sock*, %struct.inet_sock** %6, align 8
  %70 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.inet_sock*, %struct.inet_sock** %6, align 8
  %73 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call %struct.rds_connection* @rds_conn_create(i32 %71, i32 %74, i32* @rds_tcp_transport, i32 %75)
  store %struct.rds_connection* %76, %struct.rds_connection** %4, align 8
  %77 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %78 = call i64 @IS_ERR(%struct.rds_connection* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %49
  %81 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %82 = call i32 @PTR_ERR(%struct.rds_connection* %81)
  store i32 %82, i32* %5, align 4
  br label %109

83:                                               ; preds = %49
  %84 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %85 = load i32, i32* @RDS_CONN_DOWN, align 4
  %86 = load i32, i32* @RDS_CONN_CONNECTING, align 4
  %87 = call i32 @rds_conn_transition(%struct.rds_connection* %84, i32 %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %103, label %89

89:                                               ; preds = %83
  %90 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %91 = call i64 @rds_conn_state(%struct.rds_connection* %90)
  %92 = load i64, i64* @RDS_CONN_UP, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i32, i32* @s_tcp_listen_closed_stale, align 4
  %96 = call i32 @rds_tcp_stats_inc(i32 %95)
  br label %100

97:                                               ; preds = %89
  %98 = load i32, i32* @s_tcp_connect_raced, align 4
  %99 = call i32 @rds_tcp_stats_inc(i32 %98)
  br label %100

100:                                              ; preds = %97, %94
  %101 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %102 = call i32 @rds_conn_drop(%struct.rds_connection* %101)
  store i32 0, i32* %5, align 4
  br label %109

103:                                              ; preds = %83
  %104 = load %struct.socket*, %struct.socket** %3, align 8
  %105 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %106 = call i32 @rds_tcp_set_callbacks(%struct.socket* %104, %struct.rds_connection* %105)
  %107 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %108 = call i32 @rds_connect_complete(%struct.rds_connection* %107)
  store %struct.socket* null, %struct.socket** %3, align 8
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %103, %100, %80, %48, %25
  %110 = load %struct.socket*, %struct.socket** %3, align 8
  %111 = icmp ne %struct.socket* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load %struct.socket*, %struct.socket** %3, align 8
  %114 = call i32 @sock_release(%struct.socket* %113)
  br label %115

115:                                              ; preds = %112, %109
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @sock_create_lite(i32, i32, i32, %struct.socket**) #1

declare dso_local i32 @rds_tcp_tune(%struct.socket*) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.TYPE_4__*) #1

declare dso_local i32 @rdsdebug(i8*, i32*, i32, i32*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.rds_connection* @rds_conn_create(i32, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.rds_connection*) #1

declare dso_local i32 @PTR_ERR(%struct.rds_connection*) #1

declare dso_local i32 @rds_conn_transition(%struct.rds_connection*, i32, i32) #1

declare dso_local i64 @rds_conn_state(%struct.rds_connection*) #1

declare dso_local i32 @rds_tcp_stats_inc(i32) #1

declare dso_local i32 @rds_conn_drop(%struct.rds_connection*) #1

declare dso_local i32 @rds_tcp_set_callbacks(%struct.socket*, %struct.rds_connection*) #1

declare dso_local i32 @rds_connect_complete(%struct.rds_connection*) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
