; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_mount_clnt.c_nfs_mount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_mount_clnt.c_nfs_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_mount_request = type { i8*, i64, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.mountres = type { i32, i32, i32, i32 }
%struct.rpc_message = type { i32*, %struct.mountres*, i32 }
%struct.rpc_create_args = type { i8*, i64, i32, i32, i32*, i32, i32, i32, i32* }
%struct.rpc_clnt = type { i32* }

@RPC_AUTH_UNIX = common dso_local global i32 0, align 4
@mnt_program = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"NFS: sending MNT request for %s:%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@RPC_CLNT_CREATE_NONPRIVPORT = common dso_local global i32 0, align 4
@NFS_MNT3_VERSION = common dso_local global i64 0, align 8
@MOUNTPROC3_MNT = common dso_local global i64 0, align 8
@MOUNTPROC_MNT = common dso_local global i64 0, align 8
@RPC_TASK_SOFT = common dso_local global i32 0, align 4
@RPC_TASK_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"NFS: MNT request succeeded\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"NFS: failed to create MNT RPC client, status=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"NFS: MNT request failed, status=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"NFS: MNT server returned result %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_mount(%struct.nfs_mount_request* %0) #0 {
  %2 = alloca %struct.nfs_mount_request*, align 8
  %3 = alloca %struct.mountres, align 4
  %4 = alloca %struct.rpc_message, align 8
  %5 = alloca %struct.rpc_create_args, align 8
  %6 = alloca %struct.rpc_clnt*, align 8
  %7 = alloca i32, align 4
  store %struct.nfs_mount_request* %0, %struct.nfs_mount_request** %2, align 8
  %8 = getelementptr inbounds %struct.mountres, %struct.mountres* %3, i32 0, i32 0
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %struct.mountres, %struct.mountres* %3, i32 0, i32 1
  %10 = load %struct.nfs_mount_request*, %struct.nfs_mount_request** %2, align 8
  %11 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %9, align 4
  %13 = getelementptr inbounds %struct.mountres, %struct.mountres* %3, i32 0, i32 2
  %14 = load %struct.nfs_mount_request*, %struct.nfs_mount_request** %2, align 8
  %15 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %13, align 4
  %17 = getelementptr inbounds %struct.mountres, %struct.mountres* %3, i32 0, i32 3
  %18 = load %struct.nfs_mount_request*, %struct.nfs_mount_request** %2, align 8
  %19 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %17, align 4
  %21 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %4, i32 0, i32 0
  store i32* null, i32** %21, align 8
  %22 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %4, i32 0, i32 1
  store %struct.mountres* %3, %struct.mountres** %22, align 8
  %23 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %4, i32 0, i32 2
  %24 = load %struct.nfs_mount_request*, %struct.nfs_mount_request** %2, align 8
  %25 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %23, align 8
  %27 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %5, i32 0, i32 0
  %28 = load %struct.nfs_mount_request*, %struct.nfs_mount_request** %2, align 8
  %29 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %27, align 8
  %31 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %5, i32 0, i32 1
  %32 = load %struct.nfs_mount_request*, %struct.nfs_mount_request** %2, align 8
  %33 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %31, align 8
  %35 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %5, i32 0, i32 2
  store i32 0, i32* %35, align 8
  %36 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %5, i32 0, i32 3
  %37 = load i32, i32* @RPC_AUTH_UNIX, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %5, i32 0, i32 4
  store i32* @mnt_program, i32** %38, align 8
  %39 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %5, i32 0, i32 5
  %40 = load %struct.nfs_mount_request*, %struct.nfs_mount_request** %2, align 8
  %41 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %39, align 8
  %43 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %5, i32 0, i32 6
  %44 = load %struct.nfs_mount_request*, %struct.nfs_mount_request** %2, align 8
  %45 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %43, align 4
  %47 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %5, i32 0, i32 7
  %48 = load %struct.nfs_mount_request*, %struct.nfs_mount_request** %2, align 8
  %49 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %47, align 8
  %51 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %5, i32 0, i32 8
  store i32* @init_net, i32** %51, align 8
  %52 = load %struct.nfs_mount_request*, %struct.nfs_mount_request** %2, align 8
  %53 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %1
  %57 = load %struct.nfs_mount_request*, %struct.nfs_mount_request** %2, align 8
  %58 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  br label %61

60:                                               ; preds = %1
  br label %61

61:                                               ; preds = %60, %56
  %62 = phi i8* [ %59, %56 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %60 ]
  %63 = load %struct.nfs_mount_request*, %struct.nfs_mount_request** %2, align 8
  %64 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %62, i32 %65)
  %67 = load %struct.nfs_mount_request*, %struct.nfs_mount_request** %2, align 8
  %68 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %61
  %72 = load i32, i32* @RPC_CLNT_CREATE_NONPRIVPORT, align 4
  %73 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %5, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %72
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %71, %61
  %77 = call %struct.rpc_clnt* @rpc_create(%struct.rpc_create_args* %5)
  store %struct.rpc_clnt* %77, %struct.rpc_clnt** %6, align 8
  %78 = load %struct.rpc_clnt*, %struct.rpc_clnt** %6, align 8
  %79 = call i64 @IS_ERR(%struct.rpc_clnt* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %122

82:                                               ; preds = %76
  %83 = load %struct.nfs_mount_request*, %struct.nfs_mount_request** %2, align 8
  %84 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @NFS_MNT3_VERSION, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load %struct.rpc_clnt*, %struct.rpc_clnt** %6, align 8
  %90 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @MOUNTPROC3_MNT, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %4, i32 0, i32 0
  store i32* %93, i32** %94, align 8
  br label %102

95:                                               ; preds = %82
  %96 = load %struct.rpc_clnt*, %struct.rpc_clnt** %6, align 8
  %97 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* @MOUNTPROC_MNT, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %4, i32 0, i32 0
  store i32* %100, i32** %101, align 8
  br label %102

102:                                              ; preds = %95, %88
  %103 = load %struct.rpc_clnt*, %struct.rpc_clnt** %6, align 8
  %104 = load i32, i32* @RPC_TASK_SOFT, align 4
  %105 = load i32, i32* @RPC_TASK_TIMEOUT, align 4
  %106 = or i32 %104, %105
  %107 = call i32 @rpc_call_sync(%struct.rpc_clnt* %103, %struct.rpc_message* %4, i32 %106)
  store i32 %107, i32* %7, align 4
  %108 = load %struct.rpc_clnt*, %struct.rpc_clnt** %6, align 8
  %109 = call i32 @rpc_shutdown_client(%struct.rpc_clnt* %108)
  %110 = load i32, i32* %7, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %102
  br label %127

113:                                              ; preds = %102
  %114 = getelementptr inbounds %struct.mountres, %struct.mountres* %3, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  br label %130

118:                                              ; preds = %113
  %119 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %120

120:                                              ; preds = %130, %127, %122, %118
  %121 = load i32, i32* %7, align 4
  ret i32 %121

122:                                              ; preds = %81
  %123 = load %struct.rpc_clnt*, %struct.rpc_clnt** %6, align 8
  %124 = call i32 @PTR_ERR(%struct.rpc_clnt* %123)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %125)
  br label %120

127:                                              ; preds = %112
  %128 = load i32, i32* %7, align 4
  %129 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %128)
  br label %120

130:                                              ; preds = %117
  %131 = getelementptr inbounds %struct.mountres, %struct.mountres* %3, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %132)
  %134 = getelementptr inbounds %struct.mountres, %struct.mountres* %3, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %7, align 4
  br label %120
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local %struct.rpc_clnt* @rpc_create(%struct.rpc_create_args*) #1

declare dso_local i64 @IS_ERR(%struct.rpc_clnt*) #1

declare dso_local i32 @rpc_call_sync(%struct.rpc_clnt*, %struct.rpc_message*, i32) #1

declare dso_local i32 @rpc_shutdown_client(%struct.rpc_clnt*) #1

declare dso_local i32 @PTR_ERR(%struct.rpc_clnt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
