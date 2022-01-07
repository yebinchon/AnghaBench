; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcauth.c_svc_authenticate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcauth.c_svc_authenticate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_ops = type { {}*, i32 }
%struct.svc_rqst = type { %struct.auth_ops*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@rpc_auth_ok = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"svc: svc_authenticate (%d)\0A\00", align 1
@authtab_lock = common dso_local global i32 0, align 4
@RPC_AUTH_MAXFLAVOR = common dso_local global i64 0, align 8
@authtab = common dso_local global %struct.auth_ops** null, align 8
@rpc_autherr_badcred = common dso_local global i32 0, align 4
@SVC_DENIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_authenticate(%struct.svc_rqst* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.auth_ops*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @rpc_auth_ok, align 4
  %9 = load i32*, i32** %5, align 8
  store i32 %8, i32* %9, align 4
  %10 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %11 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = call i64 @svc_getnl(i32* %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = call i32 @spin_lock(i32* @authtab_lock)
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @RPC_AUTH_MAXFLAVOR, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %34, label %22

22:                                               ; preds = %2
  %23 = load %struct.auth_ops**, %struct.auth_ops*** @authtab, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.auth_ops*, %struct.auth_ops** %23, i64 %24
  %26 = load %struct.auth_ops*, %struct.auth_ops** %25, align 8
  store %struct.auth_ops* %26, %struct.auth_ops** %7, align 8
  %27 = icmp ne %struct.auth_ops* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.auth_ops*, %struct.auth_ops** %7, align 8
  %30 = getelementptr inbounds %struct.auth_ops, %struct.auth_ops* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @try_module_get(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %28, %22, %2
  %35 = call i32 @spin_unlock(i32* @authtab_lock)
  %36 = load i32, i32* @rpc_autherr_badcred, align 4
  %37 = load i32*, i32** %5, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @SVC_DENIED, align 4
  store i32 %38, i32* %3, align 4
  br label %51

39:                                               ; preds = %28
  %40 = call i32 @spin_unlock(i32* @authtab_lock)
  %41 = load %struct.auth_ops*, %struct.auth_ops** %7, align 8
  %42 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %43 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %42, i32 0, i32 0
  store %struct.auth_ops* %41, %struct.auth_ops** %43, align 8
  %44 = load %struct.auth_ops*, %struct.auth_ops** %7, align 8
  %45 = getelementptr inbounds %struct.auth_ops, %struct.auth_ops* %44, i32 0, i32 0
  %46 = bitcast {}** %45 to i32 (%struct.svc_rqst*, i32*)**
  %47 = load i32 (%struct.svc_rqst*, i32*)*, i32 (%struct.svc_rqst*, i32*)** %46, align 8
  %48 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 %47(%struct.svc_rqst* %48, i32* %49)
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %39, %34
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @svc_getnl(i32*) #1

declare dso_local i32 @dprintk(i8*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
