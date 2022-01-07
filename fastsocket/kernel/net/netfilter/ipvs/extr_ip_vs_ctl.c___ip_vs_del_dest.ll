; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ctl.c___ip_vs_del_dest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ctl.c___ip_vs_del_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_dest = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@__ip_vs_rs_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Moving dest %s:%u into trash, dest->refcnt=%d\0A\00", align 1
@ip_vs_dest_trash = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_vs_dest*)* @__ip_vs_del_dest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ip_vs_del_dest(%struct.ip_vs_dest* %0) #0 {
  %2 = alloca %struct.ip_vs_dest*, align 8
  store %struct.ip_vs_dest* %0, %struct.ip_vs_dest** %2, align 8
  %3 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %2, align 8
  %4 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %3, i32 0, i32 6
  %5 = call i32 @ip_vs_kill_estimator(i32* %4)
  %6 = call i32 @write_lock_bh(i32* @__ip_vs_rs_lock)
  %7 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %2, align 8
  %8 = call i32 @ip_vs_rs_unhash(%struct.ip_vs_dest* %7)
  %9 = call i32 @write_unlock_bh(i32* @__ip_vs_rs_lock)
  %10 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %2, align 8
  %11 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %10, i32 0, i32 0
  %12 = call i64 @atomic_dec_and_test(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %2, align 8
  %16 = call i32 @ip_vs_dst_reset(%struct.ip_vs_dest* %15)
  %17 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %2, align 8
  %18 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %17, i32 0, i32 5
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @atomic_dec(i32* %20)
  %22 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %2, align 8
  %23 = call i32 @kfree(%struct.ip_vs_dest* %22)
  br label %45

24:                                               ; preds = %1
  %25 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %2, align 8
  %26 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %2, align 8
  %29 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %28, i32 0, i32 3
  %30 = call i32 @IP_VS_DBG_ADDR(i32 %27, i32* %29)
  %31 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %2, align 8
  %32 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ntohs(i32 %33)
  %35 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %2, align 8
  %36 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %35, i32 0, i32 0
  %37 = call i32 @atomic_read(i32* %36)
  %38 = call i32 @IP_VS_DBG_BUF(i32 3, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %34, i32 %37)
  %39 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %2, align 8
  %40 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %39, i32 0, i32 1
  %41 = call i32 @list_add(i32* %40, i32* @ip_vs_dest_trash)
  %42 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %2, align 8
  %43 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %42, i32 0, i32 0
  %44 = call i32 @atomic_inc(i32* %43)
  br label %45

45:                                               ; preds = %24, %14
  ret void
}

declare dso_local i32 @ip_vs_kill_estimator(i32*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @ip_vs_rs_unhash(%struct.ip_vs_dest*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @ip_vs_dst_reset(%struct.ip_vs_dest*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @kfree(%struct.ip_vs_dest*) #1

declare dso_local i32 @IP_VS_DBG_BUF(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @IP_VS_DBG_ADDR(i32, i32*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
