; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_alloc_init_session.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_alloc_init_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_session = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs4_client*, i32 }
%struct.svc_rqst = type { i32 }
%struct.nfs4_client = type { %struct.TYPE_2__, %struct.nfsd4_session*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.nfsd4_create_session = type { i32, i32, %struct.nfsd4_channel_attrs }
%struct.nfsd4_channel_attrs = type { i32, i32 }
%struct.sockaddr = type { i32 }

@client_lock = common dso_local global i32 0, align 4
@sessionid_hashtbl = common dso_local global i32* null, align 8
@SESSION4_BACK_CHAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfsd4_session* (%struct.svc_rqst*, %struct.nfs4_client*, %struct.nfsd4_create_session*)* @alloc_init_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfsd4_session* @alloc_init_session(%struct.svc_rqst* %0, %struct.nfs4_client* %1, %struct.nfsd4_create_session* %2) #0 {
  %4 = alloca %struct.nfsd4_session*, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfs4_client*, align 8
  %7 = alloca %struct.nfsd4_create_session*, align 8
  %8 = alloca %struct.nfsd4_session*, align 8
  %9 = alloca %struct.nfsd4_channel_attrs*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sockaddr*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfs4_client* %1, %struct.nfs4_client** %6, align 8
  store %struct.nfsd4_create_session* %2, %struct.nfsd4_create_session** %7, align 8
  %15 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %16 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %15, i32 0, i32 2
  store %struct.nfsd4_channel_attrs* %16, %struct.nfsd4_channel_attrs** %9, align 8
  %17 = load %struct.nfsd4_channel_attrs*, %struct.nfsd4_channel_attrs** %9, align 8
  %18 = getelementptr inbounds %struct.nfsd4_channel_attrs, %struct.nfsd4_channel_attrs* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @nfsd4_sanitize_slot_size(i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.nfsd4_channel_attrs*, %struct.nfsd4_channel_attrs** %9, align 8
  %23 = getelementptr inbounds %struct.nfsd4_channel_attrs, %struct.nfsd4_channel_attrs* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @nfsd4_get_drc_mem(i32 %21, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call %struct.nfsd4_session* @alloc_session(i32 %26, i32 %27)
  store %struct.nfsd4_session* %28, %struct.nfsd4_session** %8, align 8
  %29 = load %struct.nfsd4_session*, %struct.nfsd4_session** %8, align 8
  %30 = icmp ne %struct.nfsd4_session* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.nfsd4_channel_attrs*, %struct.nfsd4_channel_attrs** %9, align 8
  %34 = getelementptr inbounds %struct.nfsd4_channel_attrs, %struct.nfsd4_channel_attrs* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @nfsd4_put_drc_mem(i32 %32, i32 %35)
  store %struct.nfsd4_session* null, %struct.nfsd4_session** %4, align 8
  br label %136

37:                                               ; preds = %3
  %38 = load %struct.nfsd4_session*, %struct.nfsd4_session** %8, align 8
  %39 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %38, i32 0, i32 9
  %40 = load %struct.nfsd4_channel_attrs*, %struct.nfsd4_channel_attrs** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @init_forechannel_attrs(i32* %39, %struct.nfsd4_channel_attrs* %40, i32 %41, i32 %42)
  %44 = load %struct.nfs4_client*, %struct.nfs4_client** %6, align 8
  %45 = load %struct.nfsd4_session*, %struct.nfsd4_session** %8, align 8
  %46 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %45, i32 0, i32 8
  store %struct.nfs4_client* %44, %struct.nfs4_client** %46, align 8
  %47 = load %struct.nfsd4_session*, %struct.nfsd4_session** %8, align 8
  %48 = call i32 @gen_sessionid(%struct.nfsd4_session* %47)
  %49 = load %struct.nfsd4_session*, %struct.nfsd4_session** %8, align 8
  %50 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %49, i32 0, i32 7
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  %52 = load %struct.nfsd4_session*, %struct.nfsd4_session** %8, align 8
  %53 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %55 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.nfsd4_session*, %struct.nfsd4_session** %8, align 8
  %58 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %60 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.nfsd4_session*, %struct.nfsd4_session** %8, align 8
  %63 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 8
  %64 = load %struct.nfsd4_session*, %struct.nfsd4_session** %8, align 8
  %65 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %64, i32 0, i32 2
  %66 = call i32 @kref_init(i32* %65)
  %67 = load %struct.nfsd4_session*, %struct.nfsd4_session** %8, align 8
  %68 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %67, i32 0, i32 5
  %69 = call i32 @hash_sessionid(i32* %68)
  store i32 %69, i32* %13, align 4
  %70 = call i32 @spin_lock(i32* @client_lock)
  %71 = load %struct.nfsd4_session*, %struct.nfsd4_session** %8, align 8
  %72 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %71, i32 0, i32 4
  %73 = load i32*, i32** @sessionid_hashtbl, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = call i32 @list_add(i32* %72, i32* %76)
  %78 = load %struct.nfsd4_session*, %struct.nfsd4_session** %8, align 8
  %79 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %78, i32 0, i32 3
  %80 = load %struct.nfs4_client*, %struct.nfs4_client** %6, align 8
  %81 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %80, i32 0, i32 2
  %82 = call i32 @list_add(i32* %79, i32* %81)
  %83 = call i32 @spin_unlock(i32* @client_lock)
  %84 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %85 = load %struct.nfsd4_session*, %struct.nfsd4_session** %8, align 8
  %86 = call i32 @nfsd4_new_conn(%struct.svc_rqst* %84, %struct.nfsd4_session* %85)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %37
  %90 = load %struct.nfsd4_session*, %struct.nfsd4_session** %8, align 8
  %91 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %90, i32 0, i32 2
  %92 = call i32 @free_session(i32* %91)
  store %struct.nfsd4_session* null, %struct.nfsd4_session** %4, align 8
  br label %136

93:                                               ; preds = %37
  %94 = load %struct.nfs4_client*, %struct.nfs4_client** %6, align 8
  %95 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %94, i32 0, i32 1
  %96 = load %struct.nfsd4_session*, %struct.nfsd4_session** %95, align 8
  %97 = icmp ne %struct.nfsd4_session* %96, null
  br i1 %97, label %134, label %98

98:                                               ; preds = %93
  %99 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %7, align 8
  %100 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @SESSION4_BACK_CHAN, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %134

105:                                              ; preds = %98
  %106 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %107 = call %struct.sockaddr* @svc_addr(%struct.svc_rqst* %106)
  store %struct.sockaddr* %107, %struct.sockaddr** %14, align 8
  %108 = load %struct.nfsd4_session*, %struct.nfsd4_session** %8, align 8
  %109 = load %struct.nfs4_client*, %struct.nfs4_client** %6, align 8
  %110 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %109, i32 0, i32 1
  store %struct.nfsd4_session* %108, %struct.nfsd4_session** %110, align 8
  %111 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %112 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.nfs4_client*, %struct.nfs4_client** %6, align 8
  %115 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 2
  store i32 %113, i32* %116, align 8
  %117 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %118 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @svc_xprt_get(i32 %119)
  %121 = load %struct.nfs4_client*, %struct.nfs4_client** %6, align 8
  %122 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = bitcast i32* %123 to %struct.sockaddr*
  %125 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %126 = call i32 @rpc_copy_addr(%struct.sockaddr* %124, %struct.sockaddr* %125)
  %127 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %128 = call i32 @svc_addr_len(%struct.sockaddr* %127)
  %129 = load %struct.nfs4_client*, %struct.nfs4_client** %6, align 8
  %130 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  store i32 %128, i32* %131, align 8
  %132 = load %struct.nfs4_client*, %struct.nfs4_client** %6, align 8
  %133 = call i32 @nfsd4_probe_callback(%struct.nfs4_client* %132)
  br label %134

134:                                              ; preds = %105, %98, %93
  %135 = load %struct.nfsd4_session*, %struct.nfsd4_session** %8, align 8
  store %struct.nfsd4_session* %135, %struct.nfsd4_session** %4, align 8
  br label %136

136:                                              ; preds = %134, %89, %31
  %137 = load %struct.nfsd4_session*, %struct.nfsd4_session** %4, align 8
  ret %struct.nfsd4_session* %137
}

declare dso_local i32 @nfsd4_sanitize_slot_size(i32) #1

declare dso_local i32 @nfsd4_get_drc_mem(i32, i32) #1

declare dso_local %struct.nfsd4_session* @alloc_session(i32, i32) #1

declare dso_local i32 @nfsd4_put_drc_mem(i32, i32) #1

declare dso_local i32 @init_forechannel_attrs(i32*, %struct.nfsd4_channel_attrs*, i32, i32) #1

declare dso_local i32 @gen_sessionid(%struct.nfsd4_session*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @hash_sessionid(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nfsd4_new_conn(%struct.svc_rqst*, %struct.nfsd4_session*) #1

declare dso_local i32 @free_session(i32*) #1

declare dso_local %struct.sockaddr* @svc_addr(%struct.svc_rqst*) #1

declare dso_local i32 @svc_xprt_get(i32) #1

declare dso_local i32 @rpc_copy_addr(%struct.sockaddr*, %struct.sockaddr*) #1

declare dso_local i32 @svc_addr_len(%struct.sockaddr*) #1

declare dso_local i32 @nfsd4_probe_callback(%struct.nfs4_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
