; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_af_iucv.c_iucv_callback_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_af_iucv.c_iucv_callback_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.iucv_path*, %struct.iucv_message*)* }
%struct.iucv_path = type { %struct.sock* }
%struct.sock = type { i32, i32, i32 }
%struct.iucv_message = type { i32 }
%struct.iucv_sock = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.sock_msg_q = type { i32, %struct.iucv_message, %struct.iucv_path* }

@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@pr_iucv = common dso_local global %struct.TYPE_4__* null, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iucv_path*, %struct.iucv_message*)* @iucv_callback_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iucv_callback_rx(%struct.iucv_path* %0, %struct.iucv_message* %1) #0 {
  %3 = alloca %struct.iucv_path*, align 8
  %4 = alloca %struct.iucv_message*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.iucv_sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sock_msg_q*, align 8
  %9 = alloca i32, align 4
  store %struct.iucv_path* %0, %struct.iucv_path** %3, align 8
  store %struct.iucv_message* %1, %struct.iucv_message** %4, align 8
  %10 = load %struct.iucv_path*, %struct.iucv_path** %3, align 8
  %11 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %10, i32 0, i32 0
  %12 = load %struct.sock*, %struct.sock** %11, align 8
  store %struct.sock* %12, %struct.sock** %5, align 8
  %13 = load %struct.sock*, %struct.sock** %5, align 8
  %14 = call %struct.iucv_sock* @iucv_sk(%struct.sock* %13)
  store %struct.iucv_sock* %14, %struct.iucv_sock** %6, align 8
  %15 = load %struct.sock*, %struct.sock** %5, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @RCV_SHUTDOWN, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pr_iucv, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32 (%struct.iucv_path*, %struct.iucv_message*)*, i32 (%struct.iucv_path*, %struct.iucv_message*)** %23, align 8
  %25 = load %struct.iucv_path*, %struct.iucv_path** %3, align 8
  %26 = load %struct.iucv_message*, %struct.iucv_message** %4, align 8
  %27 = call i32 %24(%struct.iucv_path* %25, %struct.iucv_message* %26)
  br label %105

28:                                               ; preds = %2
  %29 = load %struct.iucv_sock*, %struct.iucv_sock** %6, align 8
  %30 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i32 @spin_lock(i32* %31)
  %33 = load %struct.iucv_sock*, %struct.iucv_sock** %6, align 8
  %34 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = call i32 @list_empty(i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load %struct.iucv_sock*, %struct.iucv_sock** %6, align 8
  %40 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %39, i32 0, i32 1
  %41 = call i32 @skb_queue_empty(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38, %28
  br label %77

44:                                               ; preds = %38
  %45 = load %struct.sock*, %struct.sock** %5, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 2
  %47 = call i32 @atomic_read(i32* %46)
  store i32 %47, i32* %9, align 4
  %48 = load %struct.iucv_message*, %struct.iucv_message** %4, align 8
  %49 = call i64 @iucv_msg_length(%struct.iucv_message* %48)
  %50 = add i64 %49, 4
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.sock*, %struct.sock** %5, align 8
  %57 = getelementptr inbounds %struct.sock, %struct.sock* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %44
  br label %77

61:                                               ; preds = %44
  %62 = load %struct.iucv_message*, %struct.iucv_message** %4, align 8
  %63 = call i64 @iucv_msg_length(%struct.iucv_message* %62)
  %64 = load i32, i32* @GFP_ATOMIC, align 4
  %65 = load i32, i32* @GFP_DMA, align 4
  %66 = or i32 %64, %65
  %67 = call %struct.sk_buff* @alloc_skb(i64 %63, i32 %66)
  store %struct.sk_buff* %67, %struct.sk_buff** %7, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %69 = icmp ne %struct.sk_buff* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %61
  br label %77

71:                                               ; preds = %61
  %72 = load %struct.sock*, %struct.sock** %5, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %74 = load %struct.iucv_path*, %struct.iucv_path** %3, align 8
  %75 = load %struct.iucv_message*, %struct.iucv_message** %4, align 8
  %76 = call i32 @iucv_process_message(%struct.sock* %72, %struct.sk_buff* %73, %struct.iucv_path* %74, %struct.iucv_message* %75)
  br label %100

77:                                               ; preds = %70, %60, %43
  %78 = load i32, i32* @GFP_ATOMIC, align 4
  %79 = load i32, i32* @GFP_DMA, align 4
  %80 = or i32 %78, %79
  %81 = call %struct.sock_msg_q* @kzalloc(i32 16, i32 %80)
  store %struct.sock_msg_q* %81, %struct.sock_msg_q** %8, align 8
  %82 = load %struct.sock_msg_q*, %struct.sock_msg_q** %8, align 8
  %83 = icmp ne %struct.sock_msg_q* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %77
  br label %100

85:                                               ; preds = %77
  %86 = load %struct.iucv_path*, %struct.iucv_path** %3, align 8
  %87 = load %struct.sock_msg_q*, %struct.sock_msg_q** %8, align 8
  %88 = getelementptr inbounds %struct.sock_msg_q, %struct.sock_msg_q* %87, i32 0, i32 2
  store %struct.iucv_path* %86, %struct.iucv_path** %88, align 8
  %89 = load %struct.sock_msg_q*, %struct.sock_msg_q** %8, align 8
  %90 = getelementptr inbounds %struct.sock_msg_q, %struct.sock_msg_q* %89, i32 0, i32 1
  %91 = load %struct.iucv_message*, %struct.iucv_message** %4, align 8
  %92 = bitcast %struct.iucv_message* %90 to i8*
  %93 = bitcast %struct.iucv_message* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %92, i8* align 4 %93, i64 4, i1 false)
  %94 = load %struct.sock_msg_q*, %struct.sock_msg_q** %8, align 8
  %95 = getelementptr inbounds %struct.sock_msg_q, %struct.sock_msg_q* %94, i32 0, i32 0
  %96 = load %struct.iucv_sock*, %struct.iucv_sock** %6, align 8
  %97 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = call i32 @list_add_tail(i32* %95, i32* %98)
  br label %100

100:                                              ; preds = %85, %84, %71
  %101 = load %struct.iucv_sock*, %struct.iucv_sock** %6, align 8
  %102 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = call i32 @spin_unlock(i32* %103)
  br label %105

105:                                              ; preds = %100, %21
  ret void
}

declare dso_local %struct.iucv_sock* @iucv_sk(%struct.sock*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @iucv_msg_length(%struct.iucv_message*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @iucv_process_message(%struct.sock*, %struct.sk_buff*, %struct.iucv_path*, %struct.iucv_message*) #1

declare dso_local %struct.sock_msg_q* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
