; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_proto_sctp.c_sctp_unregister_app.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_proto_sctp.c_sctp_unregister_app.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ip_vs_app = type { i32 }

@sctp_app_lock = common dso_local global i32 0, align 4
@ip_vs_protocol_sctp = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_vs_app*)* @sctp_unregister_app to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_unregister_app(%struct.ip_vs_app* %0) #0 {
  %2 = alloca %struct.ip_vs_app*, align 8
  store %struct.ip_vs_app* %0, %struct.ip_vs_app** %2, align 8
  %3 = call i32 @spin_lock_bh(i32* @sctp_app_lock)
  %4 = call i32 @atomic_dec(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ip_vs_protocol_sctp, i32 0, i32 0))
  %5 = load %struct.ip_vs_app*, %struct.ip_vs_app** %2, align 8
  %6 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %5, i32 0, i32 0
  %7 = call i32 @list_del(i32* %6)
  %8 = call i32 @spin_unlock_bh(i32* @sctp_app_lock)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
