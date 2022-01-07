; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_clnt.c_rpc_free_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_clnt.c_rpc_free_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i64, i64, i32, i32*, %struct.rpc_clnt*, %struct.rpc_clnt*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"RPC:       destroying %s client for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_clnt*)* @rpc_free_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpc_free_client(%struct.rpc_clnt* %0) #0 {
  %2 = alloca %struct.rpc_clnt*, align 8
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %2, align 8
  %3 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %4 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %3, i32 0, i32 7
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %7 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @dprintk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %5, i64 %8)
  %10 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %11 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %10, i32 0, i32 6
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @IS_ERR(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %18 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %17, i32 0, i32 6
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @rpc_remove_client_dir(i32 %20)
  %22 = call i32 (...) @rpc_put_mount()
  br label %23

23:                                               ; preds = %16, %1
  %24 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %25 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %24, i32 0, i32 5
  %26 = load %struct.rpc_clnt*, %struct.rpc_clnt** %25, align 8
  %27 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %28 = icmp ne %struct.rpc_clnt* %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %31 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %30, i32 0, i32 5
  %32 = load %struct.rpc_clnt*, %struct.rpc_clnt** %31, align 8
  %33 = call i32 @rpc_release_client(%struct.rpc_clnt* %32)
  br label %49

34:                                               ; preds = %23
  %35 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %36 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %39 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %44 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.rpc_clnt*
  %47 = call i32 @kfree(%struct.rpc_clnt* %46)
  br label %48

48:                                               ; preds = %42, %34
  br label %49

49:                                               ; preds = %48, %29
  %50 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %51 = call i32 @rpc_unregister_client(%struct.rpc_clnt* %50)
  %52 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %53 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @rpc_free_iostats(i32* %54)
  %56 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %57 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %56, i32 0, i32 4
  %58 = load %struct.rpc_clnt*, %struct.rpc_clnt** %57, align 8
  %59 = call i32 @kfree(%struct.rpc_clnt* %58)
  %60 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %61 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %60, i32 0, i32 3
  store i32* null, i32** %61, align 8
  %62 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %63 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @xprt_put(i32 %64)
  %66 = call i32 (...) @rpciod_down()
  %67 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %68 = call i32 @kfree(%struct.rpc_clnt* %67)
  ret void
}

declare dso_local i32 @dprintk(i8*, i32, i64) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @rpc_remove_client_dir(i32) #1

declare dso_local i32 @rpc_put_mount(...) #1

declare dso_local i32 @rpc_release_client(%struct.rpc_clnt*) #1

declare dso_local i32 @kfree(%struct.rpc_clnt*) #1

declare dso_local i32 @rpc_unregister_client(%struct.rpc_clnt*) #1

declare dso_local i32 @rpc_free_iostats(i32*) #1

declare dso_local i32 @xprt_put(i32) #1

declare dso_local i32 @rpciod_down(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
