; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_minisocks.c_dccp_create_openreq_child.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_minisocks.c_dccp_create_openreq_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32* }
%struct.request_sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.dccp_request_sock = type { i32, i32, i32, i32, i32, i32 }
%struct.inet_connection_sock = type { i32 }
%struct.dccp_sock = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@DCCP_ROLE_SERVER = common dso_local global i32 0, align 4
@DCCP_TIMEOUT_INIT = common dso_local global i32 0, align 4
@DCCP_MIB_PASSIVEOPENS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @dccp_create_openreq_child(%struct.sock* %0, %struct.request_sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.request_sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.dccp_request_sock*, align 8
  %10 = alloca %struct.inet_connection_sock*, align 8
  %11 = alloca %struct.dccp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.request_sock* %1, %struct.request_sock** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %12 = load %struct.sock*, %struct.sock** %5, align 8
  %13 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.sock* @inet_csk_clone(%struct.sock* %12, %struct.request_sock* %13, i32 %14)
  store %struct.sock* %15, %struct.sock** %8, align 8
  %16 = load %struct.sock*, %struct.sock** %8, align 8
  %17 = icmp ne %struct.sock* %16, null
  br i1 %17, label %18, label %110

18:                                               ; preds = %3
  %19 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %20 = call %struct.dccp_request_sock* @dccp_rsk(%struct.request_sock* %19)
  store %struct.dccp_request_sock* %20, %struct.dccp_request_sock** %9, align 8
  %21 = load %struct.sock*, %struct.sock** %8, align 8
  %22 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %21)
  store %struct.inet_connection_sock* %22, %struct.inet_connection_sock** %10, align 8
  %23 = load %struct.sock*, %struct.sock** %8, align 8
  %24 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %23)
  store %struct.dccp_sock* %24, %struct.dccp_sock** %11, align 8
  %25 = load i32, i32* @DCCP_ROLE_SERVER, align 4
  %26 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %27 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %26, i32 0, i32 11
  store i32 %25, i32* %27, align 8
  %28 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %29 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %28, i32 0, i32 10
  store i32* null, i32** %29, align 8
  %30 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %31 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %30, i32 0, i32 9
  store i32* null, i32** %31, align 8
  %32 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %9, align 8
  %33 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %36 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %35, i32 0, i32 8
  store i32 %34, i32* %36, align 8
  %37 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %9, align 8
  %38 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %41 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %40, i32 0, i32 7
  store i32 %39, i32* %41, align 4
  %42 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %9, align 8
  %43 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %46 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %45, i32 0, i32 6
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @DCCP_TIMEOUT_INIT, align 4
  %48 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %10, align 8
  %49 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %51 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %50, i32 0, i32 5
  %52 = call i32 @INIT_LIST_HEAD(i32* %51)
  %53 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %9, align 8
  %54 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %57 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %59 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %58, i32 0, i32 4
  store i32 %55, i32* %59, align 8
  %60 = load %struct.sock*, %struct.sock** %8, align 8
  %61 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %9, align 8
  %62 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dccp_update_gss(%struct.sock* %60, i32 %63)
  %65 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %9, align 8
  %66 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %69 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.sock*, %struct.sock** %8, align 8
  %71 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %9, align 8
  %72 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dccp_update_gsr(%struct.sock* %70, i32 %73)
  %75 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %76 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %75, i32 0, i32 3
  %77 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %78 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %81 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @max48(i32 %79, i32 %82)
  %84 = call i32 @dccp_set_seqno(i32* %76, i32 %83)
  %85 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %86 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %85, i32 0, i32 1
  %87 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %88 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %91 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @max48(i32 %89, i32 %92)
  %94 = call i32 @dccp_set_seqno(i32* %86, i32 %93)
  %95 = load %struct.sock*, %struct.sock** %8, align 8
  %96 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %9, align 8
  %97 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %96, i32 0, i32 0
  %98 = call i64 @dccp_feat_activate_values(%struct.sock* %95, i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %18
  %101 = load %struct.sock*, %struct.sock** %8, align 8
  %102 = getelementptr inbounds %struct.sock, %struct.sock* %101, i32 0, i32 0
  store i32* null, i32** %102, align 8
  %103 = load %struct.sock*, %struct.sock** %8, align 8
  %104 = call i32 @sk_free(%struct.sock* %103)
  store %struct.sock* null, %struct.sock** %4, align 8
  br label %112

105:                                              ; preds = %18
  %106 = load %struct.sock*, %struct.sock** %8, align 8
  %107 = call i32 @dccp_init_xmit_timers(%struct.sock* %106)
  %108 = load i32, i32* @DCCP_MIB_PASSIVEOPENS, align 4
  %109 = call i32 @DCCP_INC_STATS_BH(i32 %108)
  br label %110

110:                                              ; preds = %105, %3
  %111 = load %struct.sock*, %struct.sock** %8, align 8
  store %struct.sock* %111, %struct.sock** %4, align 8
  br label %112

112:                                              ; preds = %110, %100
  %113 = load %struct.sock*, %struct.sock** %4, align 8
  ret %struct.sock* %113
}

declare dso_local %struct.sock* @inet_csk_clone(%struct.sock*, %struct.request_sock*, i32) #1

declare dso_local %struct.dccp_request_sock* @dccp_rsk(%struct.request_sock*) #1

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dccp_update_gss(%struct.sock*, i32) #1

declare dso_local i32 @dccp_update_gsr(%struct.sock*, i32) #1

declare dso_local i32 @dccp_set_seqno(i32*, i32) #1

declare dso_local i32 @max48(i32, i32) #1

declare dso_local i64 @dccp_feat_activate_values(%struct.sock*, i32*) #1

declare dso_local i32 @sk_free(%struct.sock*) #1

declare dso_local i32 @dccp_init_xmit_timers(%struct.sock*) #1

declare dso_local i32 @DCCP_INC_STATS_BH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
