; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_auth_generic.c_generic_create_cred.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_auth_generic.c_generic_create_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_cred = type { i64 }
%struct.rpc_auth = type { i32 }
%struct.auth_cred = type { i32, i32, i64, i32* }
%struct.generic_cred = type { %struct.rpc_cred, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@generic_auth = common dso_local global i32 0, align 4
@generic_credops = common dso_local global i32 0, align 4
@RPCAUTH_CRED_UPTODATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"RPC:       allocated %s cred %p for uid %d gid %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"machine\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"generic\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpc_cred* (%struct.rpc_auth*, %struct.auth_cred*, i32)* @generic_create_cred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpc_cred* @generic_create_cred(%struct.rpc_auth* %0, %struct.auth_cred* %1, i32 %2) #0 {
  %4 = alloca %struct.rpc_cred*, align 8
  %5 = alloca %struct.rpc_auth*, align 8
  %6 = alloca %struct.auth_cred*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.generic_cred*, align 8
  store %struct.rpc_auth* %0, %struct.rpc_auth** %5, align 8
  store %struct.auth_cred* %1, %struct.auth_cred** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.generic_cred* @kmalloc(i32 32, i32 %9)
  store %struct.generic_cred* %10, %struct.generic_cred** %8, align 8
  %11 = load %struct.generic_cred*, %struct.generic_cred** %8, align 8
  %12 = icmp eq %struct.generic_cred* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.rpc_cred* @ERR_PTR(i32 %15)
  store %struct.rpc_cred* %16, %struct.rpc_cred** %4, align 8
  br label %80

17:                                               ; preds = %3
  %18 = load %struct.generic_cred*, %struct.generic_cred** %8, align 8
  %19 = getelementptr inbounds %struct.generic_cred, %struct.generic_cred* %18, i32 0, i32 0
  %20 = load %struct.auth_cred*, %struct.auth_cred** %6, align 8
  %21 = call i32 @rpcauth_init_cred(%struct.rpc_cred* %19, %struct.auth_cred* %20, i32* @generic_auth, i32* @generic_credops)
  %22 = load i64, i64* @RPCAUTH_CRED_UPTODATE, align 8
  %23 = shl i64 1, %22
  %24 = load %struct.generic_cred*, %struct.generic_cred** %8, align 8
  %25 = getelementptr inbounds %struct.generic_cred, %struct.generic_cred* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %25, i32 0, i32 0
  store i64 %23, i64* %26, align 8
  %27 = load %struct.auth_cred*, %struct.auth_cred** %6, align 8
  %28 = getelementptr inbounds %struct.auth_cred, %struct.auth_cred* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.generic_cred*, %struct.generic_cred** %8, align 8
  %31 = getelementptr inbounds %struct.generic_cred, %struct.generic_cred* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  store i32 %29, i32* %32, align 4
  %33 = load %struct.auth_cred*, %struct.auth_cred** %6, align 8
  %34 = getelementptr inbounds %struct.auth_cred, %struct.auth_cred* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.generic_cred*, %struct.generic_cred** %8, align 8
  %37 = getelementptr inbounds %struct.generic_cred, %struct.generic_cred* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 8
  %39 = load %struct.auth_cred*, %struct.auth_cred** %6, align 8
  %40 = getelementptr inbounds %struct.auth_cred, %struct.auth_cred* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.generic_cred*, %struct.generic_cred** %8, align 8
  %43 = getelementptr inbounds %struct.generic_cred, %struct.generic_cred* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32* %41, i32** %44, align 8
  %45 = load %struct.generic_cred*, %struct.generic_cred** %8, align 8
  %46 = getelementptr inbounds %struct.generic_cred, %struct.generic_cred* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %17
  %51 = load %struct.generic_cred*, %struct.generic_cred** %8, align 8
  %52 = getelementptr inbounds %struct.generic_cred, %struct.generic_cred* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @get_group_info(i32* %54)
  br label %56

56:                                               ; preds = %50, %17
  %57 = load %struct.auth_cred*, %struct.auth_cred** %6, align 8
  %58 = getelementptr inbounds %struct.auth_cred, %struct.auth_cred* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.generic_cred*, %struct.generic_cred** %8, align 8
  %61 = getelementptr inbounds %struct.generic_cred, %struct.generic_cred* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i64 %59, i64* %62, align 8
  %63 = load %struct.generic_cred*, %struct.generic_cred** %8, align 8
  %64 = getelementptr inbounds %struct.generic_cred, %struct.generic_cred* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %70 = load %struct.generic_cred*, %struct.generic_cred** %8, align 8
  %71 = load %struct.auth_cred*, %struct.auth_cred** %6, align 8
  %72 = getelementptr inbounds %struct.auth_cred, %struct.auth_cred* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.auth_cred*, %struct.auth_cred** %6, align 8
  %75 = getelementptr inbounds %struct.auth_cred, %struct.auth_cred* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @dprintk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %69, %struct.generic_cred* %70, i32 %73, i32 %76)
  %78 = load %struct.generic_cred*, %struct.generic_cred** %8, align 8
  %79 = getelementptr inbounds %struct.generic_cred, %struct.generic_cred* %78, i32 0, i32 0
  store %struct.rpc_cred* %79, %struct.rpc_cred** %4, align 8
  br label %80

80:                                               ; preds = %56, %13
  %81 = load %struct.rpc_cred*, %struct.rpc_cred** %4, align 8
  ret %struct.rpc_cred* %81
}

declare dso_local %struct.generic_cred* @kmalloc(i32, i32) #1

declare dso_local %struct.rpc_cred* @ERR_PTR(i32) #1

declare dso_local i32 @rpcauth_init_cred(%struct.rpc_cred*, %struct.auth_cred*, i32*, i32*) #1

declare dso_local i32 @get_group_info(i32*) #1

declare dso_local i32 @dprintk(i8*, i8*, %struct.generic_cred*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
