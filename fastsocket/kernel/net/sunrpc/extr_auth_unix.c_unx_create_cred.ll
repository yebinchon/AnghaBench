; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_auth_unix.c_unx_create_cred.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_auth_unix.c_unx_create_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_cred = type { i64 }
%struct.rpc_auth = type { i32 }
%struct.auth_cred = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.unx_cred = type { %struct.rpc_cred, i32*, i32 }

@.str = private unnamed_addr constant [51 x i8] c"RPC:       allocating UNIX cred for uid %d gid %d\0A\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@unix_credops = common dso_local global i32 0, align 4
@RPCAUTH_CRED_UPTODATE = common dso_local global i64 0, align 8
@NFS_NGROUPS = common dso_local global i32 0, align 4
@NOGROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpc_cred* (%struct.rpc_auth*, %struct.auth_cred*, i32)* @unx_create_cred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpc_cred* @unx_create_cred(%struct.rpc_auth* %0, %struct.auth_cred* %1, i32 %2) #0 {
  %4 = alloca %struct.rpc_cred*, align 8
  %5 = alloca %struct.rpc_auth*, align 8
  %6 = alloca %struct.auth_cred*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.unx_cred*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rpc_auth* %0, %struct.rpc_auth** %5, align 8
  store %struct.auth_cred* %1, %struct.auth_cred** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.auth_cred*, %struct.auth_cred** %6, align 8
  %12 = getelementptr inbounds %struct.auth_cred, %struct.auth_cred* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.auth_cred*, %struct.auth_cred** %6, align 8
  %15 = getelementptr inbounds %struct.auth_cred, %struct.auth_cred* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @dprintk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16)
  %18 = load i32, i32* @GFP_NOFS, align 4
  %19 = call %struct.unx_cred* @kmalloc(i32 24, i32 %18)
  store %struct.unx_cred* %19, %struct.unx_cred** %8, align 8
  %20 = icmp ne %struct.unx_cred* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.rpc_cred* @ERR_PTR(i32 %23)
  store %struct.rpc_cred* %24, %struct.rpc_cred** %4, align 8
  br label %92

25:                                               ; preds = %3
  %26 = load %struct.unx_cred*, %struct.unx_cred** %8, align 8
  %27 = getelementptr inbounds %struct.unx_cred, %struct.unx_cred* %26, i32 0, i32 0
  %28 = load %struct.auth_cred*, %struct.auth_cred** %6, align 8
  %29 = load %struct.rpc_auth*, %struct.rpc_auth** %5, align 8
  %30 = call i32 @rpcauth_init_cred(%struct.rpc_cred* %27, %struct.auth_cred* %28, %struct.rpc_auth* %29, i32* @unix_credops)
  %31 = load i64, i64* @RPCAUTH_CRED_UPTODATE, align 8
  %32 = shl i64 1, %31
  %33 = load %struct.unx_cred*, %struct.unx_cred** %8, align 8
  %34 = getelementptr inbounds %struct.unx_cred, %struct.unx_cred* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %34, i32 0, i32 0
  store i64 %32, i64* %35, align 8
  %36 = load %struct.auth_cred*, %struct.auth_cred** %6, align 8
  %37 = getelementptr inbounds %struct.auth_cred, %struct.auth_cred* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = icmp ne %struct.TYPE_2__* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %25
  %41 = load %struct.auth_cred*, %struct.auth_cred** %6, align 8
  %42 = getelementptr inbounds %struct.auth_cred, %struct.auth_cred* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %40, %25
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @NFS_NGROUPS, align 4
  %49 = icmp ugt i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @NFS_NGROUPS, align 4
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %50, %46
  %53 = load %struct.auth_cred*, %struct.auth_cred** %6, align 8
  %54 = getelementptr inbounds %struct.auth_cred, %struct.auth_cred* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.unx_cred*, %struct.unx_cred** %8, align 8
  %57 = getelementptr inbounds %struct.unx_cred, %struct.unx_cred* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %74, %52
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %58
  %63 = load %struct.auth_cred*, %struct.auth_cred** %6, align 8
  %64 = getelementptr inbounds %struct.auth_cred, %struct.auth_cred* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @GROUP_AT(%struct.TYPE_2__* %65, i32 %66)
  %68 = load %struct.unx_cred*, %struct.unx_cred** %8, align 8
  %69 = getelementptr inbounds %struct.unx_cred, %struct.unx_cred* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %67, i32* %73, align 4
  br label %74

74:                                               ; preds = %62
  %75 = load i32, i32* %10, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %58

77:                                               ; preds = %58
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @NFS_NGROUPS, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %77
  %82 = load i32, i32* @NOGROUP, align 4
  %83 = load %struct.unx_cred*, %struct.unx_cred** %8, align 8
  %84 = getelementptr inbounds %struct.unx_cred, %struct.unx_cred* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %82, i32* %88, align 4
  br label %89

89:                                               ; preds = %81, %77
  %90 = load %struct.unx_cred*, %struct.unx_cred** %8, align 8
  %91 = getelementptr inbounds %struct.unx_cred, %struct.unx_cred* %90, i32 0, i32 0
  store %struct.rpc_cred* %91, %struct.rpc_cred** %4, align 8
  br label %92

92:                                               ; preds = %89, %21
  %93 = load %struct.rpc_cred*, %struct.rpc_cred** %4, align 8
  ret %struct.rpc_cred* %93
}

declare dso_local i32 @dprintk(i8*, i32, i32) #1

declare dso_local %struct.unx_cred* @kmalloc(i32, i32) #1

declare dso_local %struct.rpc_cred* @ERR_PTR(i32) #1

declare dso_local i32 @rpcauth_init_cred(%struct.rpc_cred*, %struct.auth_cred*, %struct.rpc_auth*, i32*) #1

declare dso_local i32 @GROUP_AT(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
