; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_af_iucv.c_iucv_sock_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_af_iucv.c_iucv_sock_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32, i32, i32, i32 }
%struct.socket = type { i32 }
%struct.iucv_sock = type { i32, i32, i32, i32*, i32, i32, i64, i64, i32, i64, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@init_net = common dso_local global i32 0, align 4
@PF_IUCV = common dso_local global i32 0, align 4
@iucv_proto = common dso_local global i32 0, align 4
@afiucv_hs_callback_txnotify = common dso_local global i32 0, align 4
@pr_iucv = common dso_local global i64 0, align 8
@AF_IUCV_TRANS_IUCV = common dso_local global i32 0, align 4
@AF_IUCV_TRANS_HIPER = common dso_local global i32 0, align 4
@iucv_sock_destruct = common dso_local global i32 0, align 4
@IUCV_CONN_TIMEOUT = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@IUCV_OPEN = common dso_local global i32 0, align 4
@iucv_sock_timeout = common dso_local global i32 0, align 4
@iucv_sk_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.socket*, i32, i32)* @iucv_sock_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @iucv_sock_alloc(%struct.socket* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.iucv_sock*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @PF_IUCV, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.sock* @sk_alloc(i32* @init_net, i32 %10, i32 %11, i32* @iucv_proto)
  store %struct.sock* %12, %struct.sock** %8, align 8
  %13 = load %struct.sock*, %struct.sock** %8, align 8
  %14 = icmp ne %struct.sock* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.sock* null, %struct.sock** %4, align 8
  br label %103

16:                                               ; preds = %3
  %17 = load %struct.sock*, %struct.sock** %8, align 8
  %18 = call %struct.iucv_sock* @iucv_sk(%struct.sock* %17)
  store %struct.iucv_sock* %18, %struct.iucv_sock** %9, align 8
  %19 = load %struct.socket*, %struct.socket** %5, align 8
  %20 = load %struct.sock*, %struct.sock** %8, align 8
  %21 = call i32 @sock_init_data(%struct.socket* %19, %struct.sock* %20)
  %22 = load %struct.iucv_sock*, %struct.iucv_sock** %9, align 8
  %23 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %22, i32 0, i32 14
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.iucv_sock*, %struct.iucv_sock** %9, align 8
  %26 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %25, i32 0, i32 13
  %27 = call i32 @spin_lock_init(i32* %26)
  %28 = load %struct.iucv_sock*, %struct.iucv_sock** %9, align 8
  %29 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %28, i32 0, i32 12
  %30 = call i32 @skb_queue_head_init(i32* %29)
  %31 = load %struct.iucv_sock*, %struct.iucv_sock** %9, align 8
  %32 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %31, i32 0, i32 11
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.iucv_sock*, %struct.iucv_sock** %9, align 8
  %36 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %35, i32 0, i32 11
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @spin_lock_init(i32* %37)
  %39 = load %struct.iucv_sock*, %struct.iucv_sock** %9, align 8
  %40 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %39, i32 0, i32 10
  %41 = call i32 @skb_queue_head_init(i32* %40)
  %42 = load %struct.iucv_sock*, %struct.iucv_sock** %9, align 8
  %43 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %42, i32 0, i32 9
  store i64 0, i64* %43, align 8
  %44 = load %struct.iucv_sock*, %struct.iucv_sock** %9, align 8
  %45 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %44, i32 0, i32 8
  %46 = call i32 @atomic_set(i32* %45, i32 0)
  %47 = load %struct.iucv_sock*, %struct.iucv_sock** %9, align 8
  %48 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %47, i32 0, i32 7
  store i64 0, i64* %48, align 8
  %49 = load %struct.iucv_sock*, %struct.iucv_sock** %9, align 8
  %50 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %49, i32 0, i32 6
  store i64 0, i64* %50, align 8
  %51 = load %struct.iucv_sock*, %struct.iucv_sock** %9, align 8
  %52 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %51, i32 0, i32 5
  %53 = call i32 @atomic_set(i32* %52, i32 0)
  %54 = load %struct.iucv_sock*, %struct.iucv_sock** %9, align 8
  %55 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %54, i32 0, i32 4
  %56 = call i32 @atomic_set(i32* %55, i32 0)
  %57 = load %struct.iucv_sock*, %struct.iucv_sock** %9, align 8
  %58 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %57, i32 0, i32 3
  store i32* null, i32** %58, align 8
  %59 = load i32, i32* @afiucv_hs_callback_txnotify, align 4
  %60 = load %struct.iucv_sock*, %struct.iucv_sock** %9, align 8
  %61 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.iucv_sock*, %struct.iucv_sock** %9, align 8
  %63 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %62, i32 0, i32 1
  %64 = call i32 @memset(i32* %63, i32 0, i32 32)
  %65 = load i64, i64* @pr_iucv, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %16
  %68 = load i32, i32* @AF_IUCV_TRANS_IUCV, align 4
  %69 = load %struct.iucv_sock*, %struct.iucv_sock** %9, align 8
  %70 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  br label %75

71:                                               ; preds = %16
  %72 = load i32, i32* @AF_IUCV_TRANS_HIPER, align 4
  %73 = load %struct.iucv_sock*, %struct.iucv_sock** %9, align 8
  %74 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %71, %67
  %76 = load i32, i32* @iucv_sock_destruct, align 4
  %77 = load %struct.sock*, %struct.sock** %8, align 8
  %78 = getelementptr inbounds %struct.sock, %struct.sock* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @IUCV_CONN_TIMEOUT, align 4
  %80 = load %struct.sock*, %struct.sock** %8, align 8
  %81 = getelementptr inbounds %struct.sock, %struct.sock* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @GFP_DMA, align 4
  %83 = load %struct.sock*, %struct.sock** %8, align 8
  %84 = getelementptr inbounds %struct.sock, %struct.sock* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.sock*, %struct.sock** %8, align 8
  %86 = load i32, i32* @SOCK_ZAPPED, align 4
  %87 = call i32 @sock_reset_flag(%struct.sock* %85, i32 %86)
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.sock*, %struct.sock** %8, align 8
  %90 = getelementptr inbounds %struct.sock, %struct.sock* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @IUCV_OPEN, align 4
  %92 = load %struct.sock*, %struct.sock** %8, align 8
  %93 = getelementptr inbounds %struct.sock, %struct.sock* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = load %struct.sock*, %struct.sock** %8, align 8
  %95 = getelementptr inbounds %struct.sock, %struct.sock* %94, i32 0, i32 1
  %96 = load i32, i32* @iucv_sock_timeout, align 4
  %97 = load %struct.sock*, %struct.sock** %8, align 8
  %98 = ptrtoint %struct.sock* %97 to i64
  %99 = call i32 @setup_timer(i32* %95, i32 %96, i64 %98)
  %100 = load %struct.sock*, %struct.sock** %8, align 8
  %101 = call i32 @iucv_sock_link(i32* @iucv_sk_list, %struct.sock* %100)
  %102 = load %struct.sock*, %struct.sock** %8, align 8
  store %struct.sock* %102, %struct.sock** %4, align 8
  br label %103

103:                                              ; preds = %75, %15
  %104 = load %struct.sock*, %struct.sock** %4, align 8
  ret %struct.sock* %104
}

declare dso_local %struct.sock* @sk_alloc(i32*, i32, i32, i32*) #1

declare dso_local %struct.iucv_sock* @iucv_sk(%struct.sock*) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @iucv_sock_link(i32*, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
