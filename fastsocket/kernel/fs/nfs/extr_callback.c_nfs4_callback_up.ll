; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_callback.c_nfs4_callback_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_callback.c_nfs4_callback_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_serv = type { i32* }

@.str = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@init_net = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@nfs_callback_set_tcpport = common dso_local global i32 0, align 4
@SVC_SOCK_ANONYMOUS = common dso_local global i32 0, align 4
@nfs_callback_tcpport = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"NFS: Callback listener port = %u (af %u)\0A\00", align 1
@PF_INET6 = common dso_local global i32 0, align 4
@nfs_callback_tcpport6 = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.svc_rqst* @nfs4_callback_up(%struct.svc_serv* %0) #0 {
  %2 = alloca %struct.svc_rqst*, align 8
  %3 = alloca %struct.svc_serv*, align 8
  %4 = alloca i32, align 4
  store %struct.svc_serv* %0, %struct.svc_serv** %3, align 8
  %5 = load %struct.svc_serv*, %struct.svc_serv** %3, align 8
  %6 = load i32, i32* @PF_INET, align 4
  %7 = load i32, i32* @nfs_callback_set_tcpport, align 4
  %8 = load i32, i32* @SVC_SOCK_ANONYMOUS, align 4
  %9 = call i32 @svc_create_xprt(%struct.svc_serv* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* @init_net, i32 %6, i32 %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp sle i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %45

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* @nfs_callback_tcpport, align 4
  %15 = load i32, i32* @nfs_callback_tcpport, align 4
  %16 = load i32, i32* @PF_INET, align 4
  %17 = call i32 @dprintk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load %struct.svc_serv*, %struct.svc_serv** %3, align 8
  %19 = load i32, i32* @PF_INET6, align 4
  %20 = load i32, i32* @nfs_callback_set_tcpport, align 4
  %21 = load i32, i32* @SVC_SOCK_ANONYMOUS, align 4
  %22 = call i32 @svc_create_xprt(%struct.svc_serv* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* @init_net, i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %13
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* @nfs_callback_tcpport6, align 4
  %27 = load i32, i32* @nfs_callback_tcpport6, align 4
  %28 = load i32, i32* @PF_INET6, align 4
  %29 = call i32 @dprintk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %28)
  br label %38

30:                                               ; preds = %13
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @EAFNOSUPPORT, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %37

36:                                               ; preds = %30
  br label %45

37:                                               ; preds = %35
  br label %38

38:                                               ; preds = %37, %25
  %39 = load %struct.svc_serv*, %struct.svc_serv** %3, align 8
  %40 = load %struct.svc_serv*, %struct.svc_serv** %3, align 8
  %41 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = call %struct.svc_rqst* @svc_prepare_thread(%struct.svc_serv* %39, i32* %43)
  store %struct.svc_rqst* %44, %struct.svc_rqst** %2, align 8
  br label %54

45:                                               ; preds = %36, %12
  %46 = load i32, i32* %4, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i32, i32* %4, align 4
  %53 = call %struct.svc_rqst* @ERR_PTR(i32 %52)
  store %struct.svc_rqst* %53, %struct.svc_rqst** %2, align 8
  br label %54

54:                                               ; preds = %51, %38
  %55 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  ret %struct.svc_rqst* %55
}

declare dso_local i32 @svc_create_xprt(%struct.svc_serv*, i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32) #1

declare dso_local %struct.svc_rqst* @svc_prepare_thread(%struct.svc_serv*, i32*) #1

declare dso_local %struct.svc_rqst* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
