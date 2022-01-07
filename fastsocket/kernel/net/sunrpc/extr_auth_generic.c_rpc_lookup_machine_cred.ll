; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_auth_generic.c_rpc_lookup_machine_cred.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_auth_generic.c_rpc_lookup_machine_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.rpc_cred* (%struct.TYPE_5__*, %struct.auth_cred*, i32)* }
%struct.rpc_cred = type { i32 }
%struct.auth_cred = type { i32, i32, i32 }

@RPC_MACHINE_CRED_GROUPID = common dso_local global i32 0, align 4
@RPC_MACHINE_CRED_USERID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"RPC:       looking up machine cred\0A\00", align 1
@generic_auth = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_cred* @rpc_lookup_machine_cred() #0 {
  %1 = alloca %struct.auth_cred, align 4
  %2 = getelementptr inbounds %struct.auth_cred, %struct.auth_cred* %1, i32 0, i32 0
  store i32 1, i32* %2, align 4
  %3 = getelementptr inbounds %struct.auth_cred, %struct.auth_cred* %1, i32 0, i32 1
  %4 = load i32, i32* @RPC_MACHINE_CRED_GROUPID, align 4
  store i32 %4, i32* %3, align 4
  %5 = getelementptr inbounds %struct.auth_cred, %struct.auth_cred* %1, i32 0, i32 2
  %6 = load i32, i32* @RPC_MACHINE_CRED_USERID, align 4
  store i32 %6, i32* %5, align 4
  %7 = call i32 @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @generic_auth, i32 0, i32 0), align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.rpc_cred* (%struct.TYPE_5__*, %struct.auth_cred*, i32)*, %struct.rpc_cred* (%struct.TYPE_5__*, %struct.auth_cred*, i32)** %9, align 8
  %11 = call %struct.rpc_cred* %10(%struct.TYPE_5__* @generic_auth, %struct.auth_cred* %1, i32 0)
  ret %struct.rpc_cred* %11
}

declare dso_local i32 @dprintk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
