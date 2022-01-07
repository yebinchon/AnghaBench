; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_stp_timer.c_br_tcn_timer_expired.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_stp_timer.c_br_tcn_timer_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"%s: tcn timer expired\0A\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @br_tcn_timer_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br_tcn_timer_expired(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.net_bridge*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.net_bridge*
  store %struct.net_bridge* %5, %struct.net_bridge** %3, align 8
  %6 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %7 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %13 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %16 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IFF_UP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %1
  %24 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %25 = call i32 @br_transmit_tcn(%struct.net_bridge* %24)
  %26 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %27 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %26, i32 0, i32 2
  %28 = load i64, i64* @jiffies, align 8
  %29 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %30 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = call i32 @mod_timer(i32* %27, i64 %32)
  br label %34

34:                                               ; preds = %23, %1
  %35 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %36 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock(i32* %36)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @br_transmit_tcn(%struct.net_bridge*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
