; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_irlap_frame.c_irlap_recv_ua_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_irlap_frame.c_irlap_recv_ua_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irlap_cb = type { i32 }
%struct.sk_buff = type { i32 }
%struct.irlap_info = type { i32 }

@RECV_UA_RSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irlap_cb*, %struct.sk_buff*, %struct.irlap_info*)* @irlap_recv_ua_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irlap_recv_ua_frame(%struct.irlap_cb* %0, %struct.sk_buff* %1, %struct.irlap_info* %2) #0 {
  %4 = alloca %struct.irlap_cb*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.irlap_info*, align 8
  store %struct.irlap_cb* %0, %struct.irlap_cb** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.irlap_info* %2, %struct.irlap_info** %6, align 8
  %7 = load %struct.irlap_cb*, %struct.irlap_cb** %4, align 8
  %8 = load i32, i32* @RECV_UA_RSP, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = load %struct.irlap_info*, %struct.irlap_info** %6, align 8
  %11 = call i32 @irlap_do_event(%struct.irlap_cb* %7, i32 %8, %struct.sk_buff* %9, %struct.irlap_info* %10)
  ret void
}

declare dso_local i32 @irlap_do_event(%struct.irlap_cb*, i32, %struct.sk_buff*, %struct.irlap_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
