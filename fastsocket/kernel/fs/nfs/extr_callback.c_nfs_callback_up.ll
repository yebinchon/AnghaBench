; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_callback.c_nfs_callback_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_callback.c_nfs_callback_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_callback_data = type { i32, %struct.svc_rqst*, %struct.svc_rqst*, %struct.svc_serv* }
%struct.svc_rqst = type { i32 }
%struct.svc_serv = type { i32 }
%struct.rpc_xprt = type { i32 }

@nfs_callback_info = common dso_local global %struct.nfs_callback_data* null, align 8
@nfs_callback_mutex = common dso_local global i32 0, align 4
@nfs4_callback_program = common dso_local global i32 0, align 4
@NFS4_CALLBACK_BUFSIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"nfsv4.%u-svc\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"NFS: Couldn't create callback socket or server thread; err = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_callback_up(i64 %0, %struct.rpc_xprt* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.rpc_xprt*, align 8
  %5 = alloca %struct.svc_serv*, align 8
  %6 = alloca %struct.svc_rqst*, align 8
  %7 = alloca i32 (i8*)*, align 8
  %8 = alloca %struct.nfs_callback_data*, align 8
  %9 = alloca [12 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.rpc_xprt* %1, %struct.rpc_xprt** %4, align 8
  store %struct.svc_serv* null, %struct.svc_serv** %5, align 8
  %12 = load %struct.nfs_callback_data*, %struct.nfs_callback_data** @nfs_callback_info, align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds %struct.nfs_callback_data, %struct.nfs_callback_data* %12, i64 %13
  store %struct.nfs_callback_data* %14, %struct.nfs_callback_data** %8, align 8
  store i32 0, i32* %10, align 4
  %15 = call i32 @mutex_lock(i32* @nfs_callback_mutex)
  %16 = load %struct.nfs_callback_data*, %struct.nfs_callback_data** %8, align 8
  %17 = getelementptr inbounds %struct.nfs_callback_data, %struct.nfs_callback_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 8
  %20 = icmp ne i32 %18, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load %struct.nfs_callback_data*, %struct.nfs_callback_data** %8, align 8
  %23 = getelementptr inbounds %struct.nfs_callback_data, %struct.nfs_callback_data* %22, i32 0, i32 1
  %24 = load %struct.svc_rqst*, %struct.svc_rqst** %23, align 8
  %25 = icmp ne %struct.svc_rqst* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %21, %2
  %27 = load i64, i64* %3, align 8
  %28 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %29 = load %struct.nfs_callback_data*, %struct.nfs_callback_data** %8, align 8
  %30 = call i32 @nfs_callback_bc_serv(i64 %27, %struct.rpc_xprt* %28, %struct.nfs_callback_data* %29)
  br label %96

31:                                               ; preds = %21
  %32 = load i32, i32* @NFS4_CALLBACK_BUFSIZE, align 4
  %33 = call %struct.svc_serv* @svc_create(i32* @nfs4_callback_program, i32 %32, i32* null)
  store %struct.svc_serv* %33, %struct.svc_serv** %5, align 8
  %34 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %35 = icmp ne %struct.svc_serv* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %10, align 4
  br label %105

39:                                               ; preds = %31
  %40 = load i64, i64* %3, align 8
  %41 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %42 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %43 = bitcast i32 (i8*)** %7 to i32 (i8*)*
  %44 = call i32 @nfs_minorversion_callback_svc_setup(i64 %40, %struct.svc_serv* %41, %struct.rpc_xprt* %42, %struct.svc_rqst** %6, i32 (i8*)* %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %49 = call %struct.svc_rqst* @nfs4_callback_up(%struct.svc_serv* %48)
  store %struct.svc_rqst* %49, %struct.svc_rqst** %6, align 8
  store i32 (i8*)* @nfs4_callback_svc, i32 (i8*)** %7, align 8
  br label %50

50:                                               ; preds = %47, %39
  %51 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %52 = call i64 @IS_ERR(%struct.svc_rqst* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %56 = call i32 @PTR_ERR(%struct.svc_rqst* %55)
  store i32 %56, i32* %10, align 4
  br label %105

57:                                               ; preds = %50
  %58 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %59 = call i32 @svc_sock_update_bufs(%struct.svc_serv* %58)
  %60 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i64 0, i64 0
  %61 = load i64, i64* %3, align 8
  %62 = call i32 @sprintf(i8* %60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %61)
  %63 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %64 = load %struct.nfs_callback_data*, %struct.nfs_callback_data** %8, align 8
  %65 = getelementptr inbounds %struct.nfs_callback_data, %struct.nfs_callback_data* %64, i32 0, i32 3
  store %struct.svc_serv* %63, %struct.svc_serv** %65, align 8
  %66 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %67 = load %struct.nfs_callback_data*, %struct.nfs_callback_data** %8, align 8
  %68 = getelementptr inbounds %struct.nfs_callback_data, %struct.nfs_callback_data* %67, i32 0, i32 2
  store %struct.svc_rqst* %66, %struct.svc_rqst** %68, align 8
  %69 = load i32 (i8*)*, i32 (i8*)** %7, align 8
  %70 = load %struct.nfs_callback_data*, %struct.nfs_callback_data** %8, align 8
  %71 = getelementptr inbounds %struct.nfs_callback_data, %struct.nfs_callback_data* %70, i32 0, i32 2
  %72 = load %struct.svc_rqst*, %struct.svc_rqst** %71, align 8
  %73 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i64 0, i64 0
  %74 = call %struct.svc_rqst* @kthread_run(i32 (i8*)* %69, %struct.svc_rqst* %72, i8* %73)
  %75 = load %struct.nfs_callback_data*, %struct.nfs_callback_data** %8, align 8
  %76 = getelementptr inbounds %struct.nfs_callback_data, %struct.nfs_callback_data* %75, i32 0, i32 1
  store %struct.svc_rqst* %74, %struct.svc_rqst** %76, align 8
  %77 = load %struct.nfs_callback_data*, %struct.nfs_callback_data** %8, align 8
  %78 = getelementptr inbounds %struct.nfs_callback_data, %struct.nfs_callback_data* %77, i32 0, i32 1
  %79 = load %struct.svc_rqst*, %struct.svc_rqst** %78, align 8
  %80 = call i64 @IS_ERR(%struct.svc_rqst* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %57
  %83 = load %struct.nfs_callback_data*, %struct.nfs_callback_data** %8, align 8
  %84 = getelementptr inbounds %struct.nfs_callback_data, %struct.nfs_callback_data* %83, i32 0, i32 1
  %85 = load %struct.svc_rqst*, %struct.svc_rqst** %84, align 8
  %86 = call i32 @PTR_ERR(%struct.svc_rqst* %85)
  store i32 %86, i32* %10, align 4
  %87 = load %struct.nfs_callback_data*, %struct.nfs_callback_data** %8, align 8
  %88 = getelementptr inbounds %struct.nfs_callback_data, %struct.nfs_callback_data* %87, i32 0, i32 2
  %89 = load %struct.svc_rqst*, %struct.svc_rqst** %88, align 8
  %90 = call i32 @svc_exit_thread(%struct.svc_rqst* %89)
  %91 = load %struct.nfs_callback_data*, %struct.nfs_callback_data** %8, align 8
  %92 = getelementptr inbounds %struct.nfs_callback_data, %struct.nfs_callback_data* %91, i32 0, i32 2
  store %struct.svc_rqst* null, %struct.svc_rqst** %92, align 8
  %93 = load %struct.nfs_callback_data*, %struct.nfs_callback_data** %8, align 8
  %94 = getelementptr inbounds %struct.nfs_callback_data, %struct.nfs_callback_data* %93, i32 0, i32 1
  store %struct.svc_rqst* null, %struct.svc_rqst** %94, align 8
  br label %105

95:                                               ; preds = %57
  br label %96

96:                                               ; preds = %105, %95, %26
  %97 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %98 = icmp ne %struct.svc_serv* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %101 = call i32 @svc_destroy(%struct.svc_serv* %100)
  br label %102

102:                                              ; preds = %99, %96
  %103 = call i32 @mutex_unlock(i32* @nfs_callback_mutex)
  %104 = load i32, i32* %10, align 4
  ret i32 %104

105:                                              ; preds = %82, %54, %36
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @dprintk(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  %108 = load %struct.nfs_callback_data*, %struct.nfs_callback_data** %8, align 8
  %109 = getelementptr inbounds %struct.nfs_callback_data, %struct.nfs_callback_data* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %109, align 8
  br label %96
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nfs_callback_bc_serv(i64, %struct.rpc_xprt*, %struct.nfs_callback_data*) #1

declare dso_local %struct.svc_serv* @svc_create(i32*, i32, i32*) #1

declare dso_local i32 @nfs_minorversion_callback_svc_setup(i64, %struct.svc_serv*, %struct.rpc_xprt*, %struct.svc_rqst**, i32 (i8*)*) #1

declare dso_local %struct.svc_rqst* @nfs4_callback_up(%struct.svc_serv*) #1

declare dso_local i32 @nfs4_callback_svc(i8*) #1

declare dso_local i64 @IS_ERR(%struct.svc_rqst*) #1

declare dso_local i32 @PTR_ERR(%struct.svc_rqst*) #1

declare dso_local i32 @svc_sock_update_bufs(%struct.svc_serv*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local %struct.svc_rqst* @kthread_run(i32 (i8*)*, %struct.svc_rqst*, i8*) #1

declare dso_local i32 @svc_exit_thread(%struct.svc_rqst*) #1

declare dso_local i32 @svc_destroy(%struct.svc_serv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
