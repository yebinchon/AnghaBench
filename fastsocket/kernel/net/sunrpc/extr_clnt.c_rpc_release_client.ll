; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_clnt.c_rpc_release_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_clnt.c_rpc_release_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"RPC:       rpc_release_client(%p)\0A\00", align 1
@destroy_wait = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpc_release_client(%struct.rpc_clnt* %0) #0 {
  %2 = alloca %struct.rpc_clnt*, align 8
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %2, align 8
  %3 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %4 = call i32 @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.rpc_clnt* %3)
  %5 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %6 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %5, i32 0, i32 1
  %7 = call i64 @list_empty(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @wake_up(i32* @destroy_wait)
  br label %11

11:                                               ; preds = %9, %1
  %12 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %13 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %12, i32 0, i32 0
  %14 = call i64 @atomic_dec_and_test(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %18 = call i32 @rpc_free_auth(%struct.rpc_clnt* %17)
  br label %19

19:                                               ; preds = %16, %11
  ret void
}

declare dso_local i32 @dprintk(i8*, %struct.rpc_clnt*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @rpc_free_auth(%struct.rpc_clnt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
