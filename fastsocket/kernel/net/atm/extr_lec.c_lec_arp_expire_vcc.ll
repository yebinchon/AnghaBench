; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_lec.c_lec_arp_expire_vcc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_lec.c_lec_arp_expire_vcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lec_arp_table = type { i32, %struct.TYPE_2__*, i64, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.lec_priv = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"LEC_ARP %p %p: lec_arp_expire_vcc vpi:%d vci:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @lec_arp_expire_vcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lec_arp_expire_vcc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.lec_arp_table*, align 8
  %5 = alloca %struct.lec_priv*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.lec_arp_table*
  store %struct.lec_arp_table* %7, %struct.lec_arp_table** %4, align 8
  %8 = load %struct.lec_arp_table*, %struct.lec_arp_table** %4, align 8
  %9 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.lec_priv*
  store %struct.lec_priv* %11, %struct.lec_priv** %5, align 8
  %12 = load %struct.lec_arp_table*, %struct.lec_arp_table** %4, align 8
  %13 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %12, i32 0, i32 3
  %14 = call i32 @del_timer(i32* %13)
  %15 = load %struct.lec_arp_table*, %struct.lec_arp_table** %4, align 8
  %16 = load %struct.lec_priv*, %struct.lec_priv** %5, align 8
  %17 = load %struct.lec_arp_table*, %struct.lec_arp_table** %4, align 8
  %18 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.lec_arp_table*, %struct.lec_arp_table** %4, align 8
  %23 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  br label %28

27:                                               ; preds = %1
  br label %28

28:                                               ; preds = %27, %21
  %29 = phi i32 [ %26, %21 ], [ 0, %27 ]
  %30 = load %struct.lec_arp_table*, %struct.lec_arp_table** %4, align 8
  %31 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.lec_arp_table*, %struct.lec_arp_table** %4, align 8
  %36 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  br label %41

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40, %34
  %42 = phi i32 [ %39, %34 ], [ 0, %40 ]
  %43 = call i32 @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), %struct.lec_arp_table* %15, %struct.lec_priv* %16, i32 %29, i32 %42)
  %44 = load %struct.lec_priv*, %struct.lec_priv** %5, align 8
  %45 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %44, i32 0, i32 0
  %46 = load i64, i64* %3, align 8
  %47 = call i32 @spin_lock_irqsave(i32* %45, i64 %46)
  %48 = load %struct.lec_arp_table*, %struct.lec_arp_table** %4, align 8
  %49 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %48, i32 0, i32 0
  %50 = call i32 @hlist_del(i32* %49)
  %51 = load %struct.lec_priv*, %struct.lec_priv** %5, align 8
  %52 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %51, i32 0, i32 0
  %53 = load i64, i64* %3, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load %struct.lec_arp_table*, %struct.lec_arp_table** %4, align 8
  %56 = call i32 @lec_arp_clear_vccs(%struct.lec_arp_table* %55)
  %57 = load %struct.lec_arp_table*, %struct.lec_arp_table** %4, align 8
  %58 = call i32 @lec_arp_put(%struct.lec_arp_table* %57)
  ret void
}

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @pr_debug(i8*, %struct.lec_arp_table*, %struct.lec_priv*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lec_arp_clear_vccs(%struct.lec_arp_table*) #1

declare dso_local i32 @lec_arp_put(%struct.lec_arp_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
