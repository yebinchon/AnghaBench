; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_misc_rpc.c_pickup_rpc_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_misc_rpc.c_pickup_rpc_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.rpc_err = type { i64 }
%struct.rpc_msg = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { %struct.TYPE_14__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64 }

@XDR_DECODE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i64 0, align 8
@MSG_ACCEPTED = common dso_local global i64 0, align 8
@XDR_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pickup_rpc_reply(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rpc_err, align 8
  %12 = alloca %struct.rpc_msg, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %13, align 4
  %14 = ptrtoint %struct.rpc_msg* %12 to i32
  %15 = call i32 @memset(i32 %14, i32 0, i32 24)
  %16 = ptrtoint %struct.TYPE_13__* %9 to i32
  %17 = call i32 @memset(i32 %16, i32 0, i32 4)
  %18 = load i32, i32* %7, align 4
  %19 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %12, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* %8, align 4
  %23 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %12, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @XDR_DECODE, align 4
  %29 = call i32 @xdrmem_create(%struct.TYPE_13__* %9, i32 %26, i32 %27, i32 %28)
  %30 = call i32 @xdr_replymsg(%struct.TYPE_13__* %9, %struct.rpc_msg* %12)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %4
  %34 = load i32, i32* @EIO, align 4
  store i32 %34, i32* %13, align 4
  br label %44

35:                                               ; preds = %4
  %36 = call i32 @_seterr_reply(%struct.rpc_msg* %12, %struct.rpc_err* %11)
  %37 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %11, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @RPC_SUCCESS, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @EIO, align 4
  store i32 %42, i32* %13, align 4
  br label %44

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %41, %33
  %45 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %12, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MSG_ACCEPTED, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %12, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load i32, i32* @XDR_FREE, align 4
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %12, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = call i32 @xdr_opaque_auth(%struct.TYPE_13__* %9, %struct.TYPE_14__* %60)
  br label %62

62:                                               ; preds = %56, %50, %44
  %63 = call i32 @xdr_destroy(%struct.TYPE_13__* %9)
  %64 = load i32, i32* %13, align 4
  ret i32 %64
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @xdrmem_create(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @xdr_replymsg(%struct.TYPE_13__*, %struct.rpc_msg*) #1

declare dso_local i32 @_seterr_reply(%struct.rpc_msg*, %struct.rpc_err*) #1

declare dso_local i32 @xdr_opaque_auth(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i32 @xdr_destroy(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
