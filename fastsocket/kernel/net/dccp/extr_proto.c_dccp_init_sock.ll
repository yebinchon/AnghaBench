; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_proto.c_dccp_init_sock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_proto.c_dccp_init_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 }
%struct.dccp_sock = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.inet_connection_sock = type { i32, i32, i32 }

@DCCP_TIMEOUT_INIT = common dso_local global i32 0, align 4
@sysctl_dccp_request_retries = common dso_local global i32 0, align 4
@DCCP_CLOSED = common dso_local global i32 0, align 4
@dccp_write_space = common dso_local global i32 0, align 4
@dccp_sync_mss = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@DCCP_ROLE_UNDEFINED = common dso_local global i32 0, align 4
@DCCP_SERVICE_CODE_IS_ABSENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_init_sock(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dccp_sock*, align 8
  %7 = alloca %struct.inet_connection_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %8)
  store %struct.dccp_sock* %9, %struct.dccp_sock** %6, align 8
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %10)
  store %struct.inet_connection_sock* %11, %struct.inet_connection_sock** %7, align 8
  %12 = load i32, i32* @DCCP_TIMEOUT_INIT, align 4
  %13 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %7, align 8
  %14 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @sysctl_dccp_request_retries, align 4
  %16 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %7, align 8
  %17 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @DCCP_CLOSED, align 4
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @dccp_write_space, align 4
  %22 = load %struct.sock*, %struct.sock** %4, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @dccp_sync_mss, align 4
  %25 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %7, align 8
  %26 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.dccp_sock*, %struct.dccp_sock** %6, align 8
  %28 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %27, i32 0, i32 0
  store i32 536, i32* %28, align 4
  %29 = load i32, i32* @jiffies, align 4
  %30 = load %struct.dccp_sock*, %struct.dccp_sock** %6, align 8
  %31 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @DCCP_ROLE_UNDEFINED, align 4
  %33 = load %struct.dccp_sock*, %struct.dccp_sock** %6, align 8
  %34 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @DCCP_SERVICE_CODE_IS_ABSENT, align 4
  %36 = load %struct.dccp_sock*, %struct.dccp_sock** %6, align 8
  %37 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load %struct.dccp_sock*, %struct.dccp_sock** %6, align 8
  %39 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %38, i32 0, i32 2
  store i32 1, i32* %39, align 4
  %40 = load %struct.dccp_sock*, %struct.dccp_sock** %6, align 8
  %41 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  %42 = load %struct.sock*, %struct.sock** %4, align 8
  %43 = call i32 @dccp_init_xmit_timers(%struct.sock* %42)
  %44 = load %struct.dccp_sock*, %struct.dccp_sock** %6, align 8
  %45 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %44, i32 0, i32 3
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  %47 = load i32, i32* %5, align 4
  %48 = call i64 @likely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %2
  %51 = load %struct.sock*, %struct.sock** %4, align 8
  %52 = call i32 @dccp_feat_init(%struct.sock* %51)
  store i32 %52, i32* %3, align 4
  br label %54

53:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %50
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i32 @dccp_init_xmit_timers(%struct.sock*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @dccp_feat_init(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
