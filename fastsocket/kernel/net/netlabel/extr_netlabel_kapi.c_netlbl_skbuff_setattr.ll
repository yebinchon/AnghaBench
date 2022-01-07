; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_kapi.c_netlbl_skbuff_setattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_kapi.c_netlbl_skbuff_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlbl_lsm_secattr = type { i32 }
%struct.iphdr = type { i32 }
%struct.netlbl_domaddr4_map = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netlbl_skbuff_setattr(%struct.sk_buff* %0, i32 %1, %struct.netlbl_lsm_secattr* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.netlbl_lsm_secattr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iphdr*, align 8
  %9 = alloca %struct.netlbl_domaddr4_map*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.netlbl_lsm_secattr* %2, %struct.netlbl_lsm_secattr** %6, align 8
  %10 = call i32 (...) @rcu_read_lock()
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %46 [
    i32 131, label %12
  ]

12:                                               ; preds = %3
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %13)
  store %struct.iphdr* %14, %struct.iphdr** %8, align 8
  %15 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %6, align 8
  %16 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %19 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.netlbl_domaddr4_map* @netlbl_domhsh_getentry_af4(i32 %17, i32 %20)
  store %struct.netlbl_domaddr4_map* %21, %struct.netlbl_domaddr4_map** %9, align 8
  %22 = load %struct.netlbl_domaddr4_map*, %struct.netlbl_domaddr4_map** %9, align 8
  %23 = icmp eq %struct.netlbl_domaddr4_map* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %12
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %50

27:                                               ; preds = %12
  %28 = load %struct.netlbl_domaddr4_map*, %struct.netlbl_domaddr4_map** %9, align 8
  %29 = getelementptr inbounds %struct.netlbl_domaddr4_map, %struct.netlbl_domaddr4_map* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %42 [
    i32 129, label %31
    i32 128, label %39
  ]

31:                                               ; preds = %27
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = load %struct.netlbl_domaddr4_map*, %struct.netlbl_domaddr4_map** %9, align 8
  %34 = getelementptr inbounds %struct.netlbl_domaddr4_map, %struct.netlbl_domaddr4_map* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %6, align 8
  %38 = call i32 @cipso_v4_skbuff_setattr(%struct.sk_buff* %32, i32 %36, %struct.netlbl_lsm_secattr* %37)
  store i32 %38, i32* %7, align 4
  br label %45

39:                                               ; preds = %27
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = call i32 @cipso_v4_skbuff_delattr(%struct.sk_buff* %40)
  store i32 %41, i32* %7, align 4
  br label %45

42:                                               ; preds = %27
  %43 = load i32, i32* @ENOENT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %42, %39, %31
  br label %49

46:                                               ; preds = %3
  %47 = load i32, i32* @EPROTONOSUPPORT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %46, %45
  br label %50

50:                                               ; preds = %49, %24
  %51 = call i32 (...) @rcu_read_unlock()
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.netlbl_domaddr4_map* @netlbl_domhsh_getentry_af4(i32, i32) #1

declare dso_local i32 @cipso_v4_skbuff_setattr(%struct.sk_buff*, i32, %struct.netlbl_lsm_secattr*) #1

declare dso_local i32 @cipso_v4_skbuff_delattr(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
