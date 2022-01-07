; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_auth_gss.c_gss_alloc_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_auth_gss.c_gss_alloc_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gss_upcall_msg = type { %struct.gss_auth*, i32, i32, i32, i32, i32, i32 }
%struct.gss_auth = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }
%struct.rpc_clnt = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"RPCSEC_GSS upcall waitq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gss_upcall_msg* (%struct.gss_auth*, i32, %struct.rpc_clnt*, i32)* @gss_alloc_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gss_upcall_msg* @gss_alloc_msg(%struct.gss_auth* %0, i32 %1, %struct.rpc_clnt* %2, i32 %3) #0 {
  %5 = alloca %struct.gss_upcall_msg*, align 8
  %6 = alloca %struct.gss_auth*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rpc_clnt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gss_upcall_msg*, align 8
  %11 = alloca i32, align 4
  store %struct.gss_auth* %0, %struct.gss_auth** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.rpc_clnt* %2, %struct.rpc_clnt** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @GFP_NOFS, align 4
  %13 = call %struct.gss_upcall_msg* @kzalloc(i32 32, i32 %12)
  store %struct.gss_upcall_msg* %13, %struct.gss_upcall_msg** %10, align 8
  %14 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %10, align 8
  %15 = icmp eq %struct.gss_upcall_msg* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.gss_upcall_msg* @ERR_PTR(i32 %18)
  store %struct.gss_upcall_msg* %19, %struct.gss_upcall_msg** %5, align 8
  br label %65

20:                                               ; preds = %4
  %21 = call i32 (...) @get_pipe_version()
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %10, align 8
  %26 = call i32 @kfree(%struct.gss_upcall_msg* %25)
  %27 = load i32, i32* %11, align 4
  %28 = call %struct.gss_upcall_msg* @ERR_PTR(i32 %27)
  store %struct.gss_upcall_msg* %28, %struct.gss_upcall_msg** %5, align 8
  br label %65

29:                                               ; preds = %20
  %30 = load %struct.gss_auth*, %struct.gss_auth** %6, align 8
  %31 = getelementptr inbounds %struct.gss_auth, %struct.gss_auth* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 %34
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @RPC_I(i32 %38)
  %40 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %10, align 8
  %41 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 4
  %42 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %10, align 8
  %43 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %42, i32 0, i32 5
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %10, align 8
  %46 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %45, i32 0, i32 4
  %47 = call i32 @rpc_init_wait_queue(i32* %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %10, align 8
  %49 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %48, i32 0, i32 3
  %50 = call i32 @init_waitqueue_head(i32* %49)
  %51 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %10, align 8
  %52 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %51, i32 0, i32 2
  %53 = call i32 @atomic_set(i32* %52, i32 1)
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %10, align 8
  %56 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load %struct.gss_auth*, %struct.gss_auth** %6, align 8
  %58 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %10, align 8
  %59 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %58, i32 0, i32 0
  store %struct.gss_auth* %57, %struct.gss_auth** %59, align 8
  %60 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %10, align 8
  %61 = load %struct.rpc_clnt*, %struct.rpc_clnt** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @gss_encode_msg(%struct.gss_upcall_msg* %60, %struct.rpc_clnt* %61, i32 %62)
  %64 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %10, align 8
  store %struct.gss_upcall_msg* %64, %struct.gss_upcall_msg** %5, align 8
  br label %65

65:                                               ; preds = %29, %24, %16
  %66 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %5, align 8
  ret %struct.gss_upcall_msg* %66
}

declare dso_local %struct.gss_upcall_msg* @kzalloc(i32, i32) #1

declare dso_local %struct.gss_upcall_msg* @ERR_PTR(i32) #1

declare dso_local i32 @get_pipe_version(...) #1

declare dso_local i32 @kfree(%struct.gss_upcall_msg*) #1

declare dso_local i32 @RPC_I(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @rpc_init_wait_queue(i32*, i8*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @gss_encode_msg(%struct.gss_upcall_msg*, %struct.rpc_clnt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
