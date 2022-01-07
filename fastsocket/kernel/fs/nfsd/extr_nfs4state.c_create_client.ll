; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_create_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_create_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_client = type { i32*, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.svc_rqst = type { i32, i32 }
%struct.xdr_netobj = type { i32 }
%struct.sockaddr = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@HEXDIR_LEN = common dso_local global i32 0, align 4
@nfsd4_do_callback_rpc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Backchannel slot table\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_client* (i32, i8*, %struct.svc_rqst*, i32*)* @create_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_client* @create_client(i32 %0, i8* %1, %struct.svc_rqst* %2, i32* %3) #0 {
  %5 = alloca %struct.nfs4_client*, align 8
  %6 = alloca %struct.xdr_netobj, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.svc_rqst*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nfs4_client*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca i8*, align 8
  %13 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %6, i32 0, i32 0
  store i32 %0, i32* %13, align 4
  store i8* %1, i8** %7, align 8
  store %struct.svc_rqst* %2, %struct.svc_rqst** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %15 = call %struct.sockaddr* @svc_addr(%struct.svc_rqst* %14)
  store %struct.sockaddr* %15, %struct.sockaddr** %11, align 8
  %16 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %6, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.nfs4_client* @alloc_client(i32 %17)
  store %struct.nfs4_client* %18, %struct.nfs4_client** %10, align 8
  %19 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %20 = icmp eq %struct.nfs4_client* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store %struct.nfs4_client* null, %struct.nfs4_client** %5, align 8
  br label %112

22:                                               ; preds = %4
  %23 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %24 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %23, i32 0, i32 18
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %27 = call i8* @svc_gss_principal(%struct.svc_rqst* %26)
  store i8* %27, i8** %12, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %44

30:                                               ; preds = %22
  %31 = load i8*, i8** %12, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32* @kstrdup(i8* %31, i32 %32)
  %34 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %35 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %34, i32 0, i32 17
  store i32* %33, i32** %35, align 8
  %36 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %37 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %36, i32 0, i32 17
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %42 = call i32 @free_client(%struct.nfs4_client* %41)
  store %struct.nfs4_client* null, %struct.nfs4_client** %5, align 8
  br label %112

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43, %22
  %45 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %46 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %45, i32 0, i32 16
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* @HEXDIR_LEN, align 4
  %50 = call i32 @memcpy(i32 %47, i8* %48, i32 %49)
  %51 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %52 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %51, i32 0, i32 15
  %53 = call i32 @atomic_set(i32* %52, i32 0)
  %54 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %55 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %54, i32 0, i32 14
  %56 = call i32 @atomic_set(i32* %55, i32 0)
  %57 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %58 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %57, i32 0, i32 13
  %59 = call i32 @INIT_LIST_HEAD(i32* %58)
  %60 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %61 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %60, i32 0, i32 12
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  %63 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %64 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %63, i32 0, i32 11
  %65 = call i32 @INIT_LIST_HEAD(i32* %64)
  %66 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %67 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %66, i32 0, i32 10
  %68 = call i32 @INIT_LIST_HEAD(i32* %67)
  %69 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %70 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %69, i32 0, i32 9
  %71 = call i32 @INIT_LIST_HEAD(i32* %70)
  %72 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %73 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %72, i32 0, i32 8
  %74 = call i32 @spin_lock_init(i32* %73)
  %75 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %76 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %75, i32 0, i32 7
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* @nfsd4_do_callback_rpc, align 4
  %79 = call i32 @INIT_WORK(i32* %77, i32 %78)
  %80 = call i32 (...) @get_seconds()
  %81 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %82 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %81, i32 0, i32 6
  store i32 %80, i32* %82, align 4
  %83 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %84 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %83, i32 0, i32 5
  %85 = call i32 @clear_bit(i32 0, i32* %84)
  %86 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %87 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %86, i32 0, i32 4
  %88 = call i32 @rpc_init_wait_queue(i32* %87, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %89 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = call i32 @copy_verf(%struct.nfs4_client* %89, i32* %90)
  %92 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %93 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %92, i32 0, i32 3
  %94 = bitcast i32* %93 to %struct.sockaddr*
  %95 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %96 = call i32 @rpc_copy_addr(%struct.sockaddr* %94, %struct.sockaddr* %95)
  %97 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %98 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %101 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  %102 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %103 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %102, i32 0, i32 1
  %104 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %105 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %104, i32 0, i32 0
  %106 = call i32 @copy_cred(i32* %103, i32* %105)
  %107 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %108 = call i32 @gen_confirm(%struct.nfs4_client* %107)
  %109 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %110 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %109, i32 0, i32 0
  store i32* null, i32** %110, align 8
  %111 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  store %struct.nfs4_client* %111, %struct.nfs4_client** %5, align 8
  br label %112

112:                                              ; preds = %44, %40, %21
  %113 = load %struct.nfs4_client*, %struct.nfs4_client** %5, align 8
  ret %struct.nfs4_client* %113
}

declare dso_local %struct.sockaddr* @svc_addr(%struct.svc_rqst*) #1

declare dso_local %struct.nfs4_client* @alloc_client(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i8* @svc_gss_principal(%struct.svc_rqst*) #1

declare dso_local i32* @kstrdup(i8*, i32) #1

declare dso_local i32 @free_client(%struct.nfs4_client*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @get_seconds(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @rpc_init_wait_queue(i32*, i8*) #1

declare dso_local i32 @copy_verf(%struct.nfs4_client*, i32*) #1

declare dso_local i32 @rpc_copy_addr(%struct.sockaddr*, %struct.sockaddr*) #1

declare dso_local i32 @copy_cred(i32*, i32*) #1

declare dso_local i32 @gen_confirm(%struct.nfs4_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
