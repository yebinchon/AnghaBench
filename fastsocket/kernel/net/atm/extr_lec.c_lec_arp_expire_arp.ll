; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_lec.c_lec_arp_expire_arp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_lec.c_lec_arp_expire_arp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lec_arp_table = type { i64, i64, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"lec_arp_expire_arp\0A\00", align 1
@ESI_ARP_PENDING = common dso_local global i64 0, align 8
@l_rdesc_arp_xmt = common dso_local global i32 0, align 4
@l_arp_xmt = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @lec_arp_expire_arp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lec_arp_expire_arp(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.lec_arp_table*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.lec_arp_table*
  store %struct.lec_arp_table* %5, %struct.lec_arp_table** %3, align 8
  %6 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.lec_arp_table*, %struct.lec_arp_table** %3, align 8
  %8 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ESI_ARP_PENDING, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %59

12:                                               ; preds = %1
  %13 = load %struct.lec_arp_table*, %struct.lec_arp_table** %3, align 8
  %14 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.lec_arp_table*, %struct.lec_arp_table** %3, align 8
  %17 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %16, i32 0, i32 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sle i64 %15, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %12
  %23 = load %struct.lec_arp_table*, %struct.lec_arp_table** %3, align 8
  %24 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.lec_arp_table*, %struct.lec_arp_table** %3, align 8
  %29 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %28, i32 0, i32 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* @l_rdesc_arp_xmt, align 4
  %32 = load %struct.lec_arp_table*, %struct.lec_arp_table** %3, align 8
  %33 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @send_to_lecd(%struct.TYPE_2__* %30, i32 %31, i32 %34, i32* null, i32* null)
  br label %45

36:                                               ; preds = %22
  %37 = load %struct.lec_arp_table*, %struct.lec_arp_table** %3, align 8
  %38 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %37, i32 0, i32 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* @l_arp_xmt, align 4
  %41 = load %struct.lec_arp_table*, %struct.lec_arp_table** %3, align 8
  %42 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @send_to_lecd(%struct.TYPE_2__* %39, i32 %40, i32 %43, i32* null, i32* null)
  br label %45

45:                                               ; preds = %36, %27
  %46 = load %struct.lec_arp_table*, %struct.lec_arp_table** %3, align 8
  %47 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %47, align 8
  br label %50

50:                                               ; preds = %45, %12
  %51 = load %struct.lec_arp_table*, %struct.lec_arp_table** %3, align 8
  %52 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %51, i32 0, i32 2
  %53 = load i64, i64* @jiffies, align 8
  %54 = load i32, i32* @HZ, align 4
  %55 = mul nsw i32 1, %54
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %53, %56
  %58 = call i32 @mod_timer(i32* %52, i64 %57)
  br label %59

59:                                               ; preds = %50, %1
  ret void
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @send_to_lecd(%struct.TYPE_2__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
