; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_minisocks.c_dccp_reqsk_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_minisocks.c_dccp_reqsk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_sock = type { i32 }
%struct.dccp_sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.dccp_request_sock = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_reqsk_init(%struct.request_sock* %0, %struct.dccp_sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.request_sock*, align 8
  %5 = alloca %struct.dccp_sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.dccp_request_sock*, align 8
  store %struct.request_sock* %0, %struct.request_sock** %4, align 8
  store %struct.dccp_sock* %1, %struct.dccp_sock** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %8 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %9 = call %struct.dccp_request_sock* @dccp_rsk(%struct.request_sock* %8)
  store %struct.dccp_request_sock* %9, %struct.dccp_request_sock** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = call %struct.TYPE_4__* @dccp_hdr(%struct.sk_buff* %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %15 = call %struct.TYPE_3__* @inet_rsk(%struct.request_sock* %14)
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  store i32 %13, i32* %16, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call %struct.TYPE_4__* @dccp_hdr(%struct.sk_buff* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %22 = call %struct.TYPE_3__* @inet_rsk(%struct.request_sock* %21)
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 8
  %24 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %25 = call %struct.TYPE_3__* @inet_rsk(%struct.request_sock* %24)
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %7, align 8
  %28 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %30 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %29, i32 0, i32 0
  %31 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %7, align 8
  %32 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %31, i32 0, i32 0
  %33 = call i32 @dccp_feat_clone_list(i32* %30, i32* %32)
  ret i32 %33
}

declare dso_local %struct.dccp_request_sock* @dccp_rsk(%struct.request_sock*) #1

declare dso_local %struct.TYPE_4__* @dccp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_3__* @inet_rsk(%struct.request_sock*) #1

declare dso_local i32 @dccp_feat_clone_list(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
