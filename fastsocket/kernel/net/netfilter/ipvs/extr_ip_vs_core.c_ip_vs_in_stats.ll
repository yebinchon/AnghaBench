; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_core.c_ip_vs_in_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_core.c_ip_vs_in_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.ip_vs_conn = type { %struct.ip_vs_dest* }
%struct.ip_vs_dest = type { i32, %struct.TYPE_12__*, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.sk_buff = type { i64 }

@IP_VS_DEST_F_AVAILABLE = common dso_local global i32 0, align 4
@ip_vs_stats = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_vs_conn*, %struct.sk_buff*)* @ip_vs_in_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_vs_in_stats(%struct.ip_vs_conn* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ip_vs_conn*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ip_vs_dest*, align 8
  store %struct.ip_vs_conn* %0, %struct.ip_vs_conn** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %7 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %6, i32 0, i32 0
  %8 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %7, align 8
  store %struct.ip_vs_dest* %8, %struct.ip_vs_dest** %5, align 8
  %9 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %10 = icmp ne %struct.ip_vs_dest* %9, null
  br i1 %10, label %11, label %88

11:                                               ; preds = %2
  %12 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %13 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IP_VS_DEST_F_AVAILABLE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %88

18:                                               ; preds = %11
  %19 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %20 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %24 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %33 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %31
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %35, align 4
  %40 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %41 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock(i32* %42)
  %44 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %45 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %44, i32 0, i32 1
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = call i32 @spin_lock(i32* %48)
  %50 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %51 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %50, i32 0, i32 1
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %62 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %61, i32 0, i32 1
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %60
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %66, align 4
  %71 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %72 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %71, i32 0, i32 1
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = call i32 @spin_unlock(i32* %75)
  %77 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @ip_vs_stats, i32 0, i32 0))
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @ip_vs_stats, i32 0, i32 1, i32 1), align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @ip_vs_stats, i32 0, i32 1, i32 1), align 4
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @ip_vs_stats, i32 0, i32 1, i32 0), align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @ip_vs_stats, i32 0, i32 1, i32 0), align 4
  %87 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @ip_vs_stats, i32 0, i32 0))
  br label %88

88:                                               ; preds = %18, %11, %2
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
