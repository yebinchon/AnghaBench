; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_user.h_netlbl_netlink_auditinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_user.h_netlbl_netlink_auditinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlbl_audit = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.netlbl_audit*)* @netlbl_netlink_auditinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netlbl_netlink_auditinfo(%struct.sk_buff* %0, %struct.netlbl_audit* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.netlbl_audit*, align 8
  %5 = alloca %struct.TYPE_2__, align 4
  %6 = alloca { i64, i32 }, align 8
  %7 = alloca %struct.TYPE_2__, align 4
  %8 = alloca { i64, i32 }, align 8
  %9 = alloca %struct.TYPE_2__, align 4
  %10 = alloca { i64, i32 }, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.netlbl_audit* %1, %struct.netlbl_audit** %4, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = call { i64, i32 } @NETLINK_CB(%struct.sk_buff* %11)
  store { i64, i32 } %12, { i64, i32 }* %6, align 8
  %13 = bitcast { i64, i32 }* %6 to i8*
  %14 = bitcast %struct.TYPE_2__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 8 %13, i64 12, i1 false)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.netlbl_audit*, %struct.netlbl_audit** %4, align 8
  %18 = getelementptr inbounds %struct.netlbl_audit, %struct.netlbl_audit* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = call { i64, i32 } @NETLINK_CB(%struct.sk_buff* %19)
  store { i64, i32 } %20, { i64, i32 }* %8, align 8
  %21 = bitcast { i64, i32 }* %8 to i8*
  %22 = bitcast %struct.TYPE_2__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 8 %21, i64 12, i1 false)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.netlbl_audit*, %struct.netlbl_audit** %4, align 8
  %26 = getelementptr inbounds %struct.netlbl_audit, %struct.netlbl_audit* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = call { i64, i32 } @NETLINK_CB(%struct.sk_buff* %27)
  store { i64, i32 } %28, { i64, i32 }* %10, align 8
  %29 = bitcast { i64, i32 }* %10 to i8*
  %30 = bitcast %struct.TYPE_2__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 8 %29, i64 12, i1 false)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.netlbl_audit*, %struct.netlbl_audit** %4, align 8
  %34 = getelementptr inbounds %struct.netlbl_audit, %struct.netlbl_audit* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  ret void
}

declare dso_local { i64, i32 } @NETLINK_CB(%struct.sk_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
