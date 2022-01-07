; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_proto.c_dccp_destroy_sock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_proto.c_dccp_destroy_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32* }
%struct.dccp_sock = type { i32, i32*, i32, i32*, i32* }
%struct.TYPE_2__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dccp_destroy_sock(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.dccp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %4)
  store %struct.dccp_sock* %5, %struct.dccp_sock** %3, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.sock*, %struct.sock** %2, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @kfree_skb(i32* %13)
  %15 = load %struct.sock*, %struct.sock** %2, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  br label %17

17:                                               ; preds = %10, %1
  %18 = load %struct.sock*, %struct.sock** %2, align 8
  %19 = call %struct.TYPE_2__* @inet_csk(%struct.sock* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.sock*, %struct.sock** %2, align 8
  %25 = call i32 @inet_put_port(%struct.sock* %24)
  br label %26

26:                                               ; preds = %23, %17
  %27 = load %struct.dccp_sock*, %struct.dccp_sock** %3, align 8
  %28 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @kfree(i32* %29)
  %31 = load %struct.dccp_sock*, %struct.dccp_sock** %3, align 8
  %32 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %31, i32 0, i32 4
  store i32* null, i32** %32, align 8
  %33 = load %struct.dccp_sock*, %struct.dccp_sock** %3, align 8
  %34 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %26
  %38 = load %struct.dccp_sock*, %struct.dccp_sock** %3, align 8
  %39 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @dccp_ackvec_free(i32* %40)
  %42 = load %struct.dccp_sock*, %struct.dccp_sock** %3, align 8
  %43 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %42, i32 0, i32 3
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %37, %26
  %45 = load %struct.dccp_sock*, %struct.dccp_sock** %3, align 8
  %46 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.sock*, %struct.sock** %2, align 8
  %49 = call i32 @ccid_hc_rx_delete(i32 %47, %struct.sock* %48)
  %50 = load %struct.dccp_sock*, %struct.dccp_sock** %3, align 8
  %51 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.sock*, %struct.sock** %2, align 8
  %54 = call i32 @ccid_hc_tx_delete(i32* %52, %struct.sock* %53)
  %55 = load %struct.dccp_sock*, %struct.dccp_sock** %3, align 8
  %56 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %55, i32 0, i32 1
  store i32* null, i32** %56, align 8
  %57 = load %struct.dccp_sock*, %struct.dccp_sock** %3, align 8
  %58 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %57, i32 0, i32 2
  store i32 0, i32* %58, align 8
  %59 = load %struct.dccp_sock*, %struct.dccp_sock** %3, align 8
  %60 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %59, i32 0, i32 0
  %61 = call i32 @dccp_feat_list_purge(i32* %60)
  ret void
}

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local i32 @kfree_skb(i32*) #1

declare dso_local %struct.TYPE_2__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @inet_put_port(%struct.sock*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dccp_ackvec_free(i32*) #1

declare dso_local i32 @ccid_hc_rx_delete(i32, %struct.sock*) #1

declare dso_local i32 @ccid_hc_tx_delete(i32*, %struct.sock*) #1

declare dso_local i32 @dccp_feat_list_purge(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
