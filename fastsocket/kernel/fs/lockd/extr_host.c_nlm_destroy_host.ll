; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_host.c_nlm_destroy_host.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_host.c_nlm_destroy_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_host = type { %struct.rpc_clnt*, i32, i32, i32 }
%struct.rpc_clnt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlm_host*)* @nlm_destroy_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm_destroy_host(%struct.nlm_host* %0) #0 {
  %2 = alloca %struct.nlm_host*, align 8
  %3 = alloca %struct.rpc_clnt*, align 8
  store %struct.nlm_host* %0, %struct.nlm_host** %2, align 8
  %4 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %5 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %4, i32 0, i32 3
  %6 = call i32 @list_empty(i32* %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %12 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %11, i32 0, i32 2
  %13 = call i32 @atomic_read(i32* %12)
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %16 = call i32 @nsm_unmonitor(%struct.nlm_host* %15)
  %17 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %18 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @nsm_release(i32 %19)
  %21 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %22 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %21, i32 0, i32 0
  %23 = load %struct.rpc_clnt*, %struct.rpc_clnt** %22, align 8
  store %struct.rpc_clnt* %23, %struct.rpc_clnt** %3, align 8
  %24 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  %25 = icmp ne %struct.rpc_clnt* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  %28 = call i32 @rpc_shutdown_client(%struct.rpc_clnt* %27)
  br label %29

29:                                               ; preds = %26, %1
  %30 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %31 = call i32 @kfree(%struct.nlm_host* %30)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @nsm_unmonitor(%struct.nlm_host*) #1

declare dso_local i32 @nsm_release(i32) #1

declare dso_local i32 @rpc_shutdown_client(%struct.rpc_clnt*) #1

declare dso_local i32 @kfree(%struct.nlm_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
