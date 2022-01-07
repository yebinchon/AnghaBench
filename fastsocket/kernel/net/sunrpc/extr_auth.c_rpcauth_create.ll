; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_auth.c_rpcauth_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_auth.c_rpcauth_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_authops = type { i32, %struct.rpc_auth* (%struct.rpc_clnt*, i32)* }
%struct.rpc_auth = type { i32 }
%struct.rpc_clnt = type { %struct.rpc_auth* }

@EINVAL = common dso_local global i32 0, align 4
@RPC_AUTH_MAXFLAVOR = common dso_local global i64 0, align 8
@auth_flavors = common dso_local global %struct.rpc_authops** null, align 8
@.str = private unnamed_addr constant [12 x i8] c"rpc-auth-%u\00", align 1
@rpc_authflavor_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_auth* @rpcauth_create(i32 %0, %struct.rpc_clnt* %1) #0 {
  %3 = alloca %struct.rpc_auth*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_clnt*, align 8
  %6 = alloca %struct.rpc_auth*, align 8
  %7 = alloca %struct.rpc_authops*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.rpc_clnt* %1, %struct.rpc_clnt** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @pseudoflavor_to_flavor(i32 %9)
  store i64 %10, i64* %8, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.rpc_auth* @ERR_PTR(i32 %12)
  store %struct.rpc_auth* %13, %struct.rpc_auth** %6, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @RPC_AUTH_MAXFLAVOR, align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %74

18:                                               ; preds = %2
  %19 = load %struct.rpc_authops**, %struct.rpc_authops*** @auth_flavors, align 8
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds %struct.rpc_authops*, %struct.rpc_authops** %19, i64 %20
  %22 = load %struct.rpc_authops*, %struct.rpc_authops** %21, align 8
  store %struct.rpc_authops* %22, %struct.rpc_authops** %7, align 8
  %23 = icmp eq %struct.rpc_authops* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @request_module(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %25)
  br label %27

27:                                               ; preds = %24, %18
  %28 = call i32 @spin_lock(i32* @rpc_authflavor_lock)
  %29 = load %struct.rpc_authops**, %struct.rpc_authops*** @auth_flavors, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds %struct.rpc_authops*, %struct.rpc_authops** %29, i64 %30
  %32 = load %struct.rpc_authops*, %struct.rpc_authops** %31, align 8
  store %struct.rpc_authops* %32, %struct.rpc_authops** %7, align 8
  %33 = load %struct.rpc_authops*, %struct.rpc_authops** %7, align 8
  %34 = icmp eq %struct.rpc_authops* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %27
  %36 = load %struct.rpc_authops*, %struct.rpc_authops** %7, align 8
  %37 = getelementptr inbounds %struct.rpc_authops, %struct.rpc_authops* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @try_module_get(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %35, %27
  %42 = call i32 @spin_unlock(i32* @rpc_authflavor_lock)
  br label %74

43:                                               ; preds = %35
  %44 = call i32 @spin_unlock(i32* @rpc_authflavor_lock)
  %45 = load %struct.rpc_authops*, %struct.rpc_authops** %7, align 8
  %46 = getelementptr inbounds %struct.rpc_authops, %struct.rpc_authops* %45, i32 0, i32 1
  %47 = load %struct.rpc_auth* (%struct.rpc_clnt*, i32)*, %struct.rpc_auth* (%struct.rpc_clnt*, i32)** %46, align 8
  %48 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call %struct.rpc_auth* %47(%struct.rpc_clnt* %48, i32 %49)
  store %struct.rpc_auth* %50, %struct.rpc_auth** %6, align 8
  %51 = load %struct.rpc_authops*, %struct.rpc_authops** %7, align 8
  %52 = getelementptr inbounds %struct.rpc_authops, %struct.rpc_authops* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @module_put(i32 %53)
  %55 = load %struct.rpc_auth*, %struct.rpc_auth** %6, align 8
  %56 = call i64 @IS_ERR(%struct.rpc_auth* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %43
  %59 = load %struct.rpc_auth*, %struct.rpc_auth** %6, align 8
  store %struct.rpc_auth* %59, %struct.rpc_auth** %3, align 8
  br label %76

60:                                               ; preds = %43
  %61 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %62 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %61, i32 0, i32 0
  %63 = load %struct.rpc_auth*, %struct.rpc_auth** %62, align 8
  %64 = icmp ne %struct.rpc_auth* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %67 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %66, i32 0, i32 0
  %68 = load %struct.rpc_auth*, %struct.rpc_auth** %67, align 8
  %69 = call i32 @rpcauth_release(%struct.rpc_auth* %68)
  br label %70

70:                                               ; preds = %65, %60
  %71 = load %struct.rpc_auth*, %struct.rpc_auth** %6, align 8
  %72 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %73 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %72, i32 0, i32 0
  store %struct.rpc_auth* %71, %struct.rpc_auth** %73, align 8
  br label %74

74:                                               ; preds = %70, %41, %17
  %75 = load %struct.rpc_auth*, %struct.rpc_auth** %6, align 8
  store %struct.rpc_auth* %75, %struct.rpc_auth** %3, align 8
  br label %76

76:                                               ; preds = %74, %58
  %77 = load %struct.rpc_auth*, %struct.rpc_auth** %3, align 8
  ret %struct.rpc_auth* %77
}

declare dso_local i64 @pseudoflavor_to_flavor(i32) #1

declare dso_local %struct.rpc_auth* @ERR_PTR(i32) #1

declare dso_local i32 @request_module(i8*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i64 @IS_ERR(%struct.rpc_auth*) #1

declare dso_local i32 @rpcauth_release(%struct.rpc_auth*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
