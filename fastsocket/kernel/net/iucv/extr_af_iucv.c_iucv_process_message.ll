; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_af_iucv.c_iucv_process_message.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_af_iucv.c_iucv_process_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (%struct.iucv_path*, %struct.iucv_message*, i32, i32*, i32, i32*)*, i32 (%struct.iucv_path*, i32*)* }
%struct.iucv_path = type { i32 }
%struct.iucv_message = type { i32, i32, i32 }
%struct.sock = type { i64, i32 }
%struct.sk_buff = type { i32, i32, i32* }
%struct.TYPE_4__ = type { i32 }

@CB_TRGCLS_LEN = common dso_local global i32 0, align 4
@IUCV_IPRMDATA = common dso_local global i32 0, align 4
@iprm_shutdown = common dso_local global i32 0, align 4
@pr_iucv = common dso_local global %struct.TYPE_3__* null, align 8
@SOCK_STREAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*, %struct.iucv_path*, %struct.iucv_message*)* @iucv_process_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iucv_process_message(%struct.sock* %0, %struct.sk_buff* %1, %struct.iucv_path* %2, %struct.iucv_message* %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.iucv_path*, align 8
  %8 = alloca %struct.iucv_message*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.iucv_path* %2, %struct.iucv_path** %7, align 8
  store %struct.iucv_message* %3, %struct.iucv_message** %8, align 8
  %11 = load %struct.iucv_message*, %struct.iucv_message** %8, align 8
  %12 = call i32 @iucv_msg_length(%struct.iucv_message* %11)
  store i32 %12, i32* %10, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = call i32 @CB_TRGCLS(%struct.sk_buff* %13)
  %15 = load %struct.iucv_message*, %struct.iucv_message** %8, align 8
  %16 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %15, i32 0, i32 2
  %17 = load i32, i32* @CB_TRGCLS_LEN, align 4
  %18 = call i32 @memcpy(i32 %14, i32* %16, i32 %17)
  %19 = load %struct.iucv_message*, %struct.iucv_message** %8, align 8
  %20 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IUCV_IPRMDATA, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ugt i32 %26, 7
  br i1 %27, label %28, label %41

28:                                               ; preds = %25
  %29 = load %struct.iucv_message*, %struct.iucv_message** %8, align 8
  %30 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @iprm_shutdown, align 4
  %33 = call i64 @memcmp(i32 %31, i32 %32, i32 8)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 2
  store i32* null, i32** %37, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  br label %40

40:                                               ; preds = %35, %28
  br label %106

41:                                               ; preds = %25, %4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pr_iucv, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32 (%struct.iucv_path*, %struct.iucv_message*, i32, i32*, i32, i32*)*, i32 (%struct.iucv_path*, %struct.iucv_message*, i32, i32*, i32, i32*)** %43, align 8
  %45 = load %struct.iucv_path*, %struct.iucv_path** %7, align 8
  %46 = load %struct.iucv_message*, %struct.iucv_message** %8, align 8
  %47 = load %struct.iucv_message*, %struct.iucv_message** %8, align 8
  %48 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IUCV_IPRMDATA, align 4
  %51 = and i32 %49, %50
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 %44(%struct.iucv_path* %45, %struct.iucv_message* %46, i32 %51, i32* %54, i32 %55, i32* null)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %41
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = call i32 @kfree_skb(%struct.sk_buff* %60)
  br label %117

62:                                               ; preds = %41
  %63 = load %struct.sock*, %struct.sock** %5, align 8
  %64 = getelementptr inbounds %struct.sock, %struct.sock* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SOCK_STREAM, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %97

68:                                               ; preds = %62
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.sock*, %struct.sock** %5, align 8
  %73 = getelementptr inbounds %struct.sock, %struct.sock* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = sdiv i32 %74, 4
  %76 = icmp sge i32 %71, %75
  br i1 %76, label %77, label %97

77:                                               ; preds = %68
  %78 = load %struct.sock*, %struct.sock** %5, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @iucv_fragment_skb(%struct.sock* %78, %struct.sk_buff* %79, i32 %80)
  store i32 %81, i32* %9, align 4
  %82 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %83 = call i32 @kfree_skb(%struct.sk_buff* %82)
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %77
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pr_iucv, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32 (%struct.iucv_path*, i32*)*, i32 (%struct.iucv_path*, i32*)** %88, align 8
  %90 = load %struct.iucv_path*, %struct.iucv_path** %7, align 8
  %91 = call i32 %89(%struct.iucv_path* %90, i32* null)
  br label %117

92:                                               ; preds = %77
  %93 = load %struct.sock*, %struct.sock** %5, align 8
  %94 = call %struct.TYPE_4__* @iucv_sk(%struct.sock* %93)
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = call %struct.sk_buff* @skb_dequeue(i32* %95)
  store %struct.sk_buff* %96, %struct.sk_buff** %6, align 8
  br label %105

97:                                               ; preds = %68, %62
  %98 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %99 = call i32 @skb_reset_transport_header(%struct.sk_buff* %98)
  %100 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %101 = call i32 @skb_reset_network_header(%struct.sk_buff* %100)
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %104 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %97, %92
  br label %106

106:                                              ; preds = %105, %40
  %107 = load %struct.sock*, %struct.sock** %5, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %109 = call i64 @sock_queue_rcv_skb(%struct.sock* %107, %struct.sk_buff* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = load %struct.sock*, %struct.sock** %5, align 8
  %113 = call %struct.TYPE_4__* @iucv_sk(%struct.sock* %112)
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %116 = call i32 @skb_queue_head(i32* %114, %struct.sk_buff* %115)
  br label %117

117:                                              ; preds = %59, %86, %111, %106
  ret void
}

declare dso_local i32 @iucv_msg_length(%struct.iucv_message*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @CB_TRGCLS(%struct.sk_buff*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @iucv_fragment_skb(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local %struct.TYPE_4__* @iucv_sk(%struct.sock*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i64 @sock_queue_rcv_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
