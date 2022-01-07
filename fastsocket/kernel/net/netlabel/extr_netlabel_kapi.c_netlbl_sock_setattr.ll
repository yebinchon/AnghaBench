; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_kapi.c_netlbl_sock_setattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_kapi.c_netlbl_sock_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.netlbl_lsm_secattr = type { i32 }
%struct.netlbl_dom_map = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EDESTADDRREQ = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netlbl_sock_setattr(%struct.sock* %0, i32 %1, %struct.netlbl_lsm_secattr* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.netlbl_lsm_secattr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.netlbl_dom_map*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.netlbl_lsm_secattr* %2, %struct.netlbl_lsm_secattr** %6, align 8
  %9 = call i32 (...) @rcu_read_lock()
  %10 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %6, align 8
  %11 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.netlbl_dom_map* @netlbl_domhsh_getentry(i32 %12)
  store %struct.netlbl_dom_map* %13, %struct.netlbl_dom_map** %8, align 8
  %14 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %8, align 8
  %15 = icmp eq %struct.netlbl_dom_map* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %7, align 4
  br label %45

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %41 [
    i32 132, label %21
  ]

21:                                               ; preds = %19
  %22 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %8, align 8
  %23 = getelementptr inbounds %struct.netlbl_dom_map, %struct.netlbl_dom_map* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %37 [
    i32 130, label %25
    i32 129, label %28
    i32 128, label %36
  ]

25:                                               ; preds = %21
  %26 = load i32, i32* @EDESTADDRREQ, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %40

28:                                               ; preds = %21
  %29 = load %struct.sock*, %struct.sock** %4, align 8
  %30 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %8, align 8
  %31 = getelementptr inbounds %struct.netlbl_dom_map, %struct.netlbl_dom_map* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %6, align 8
  %35 = call i32 @cipso_v4_sock_setattr(%struct.sock* %29, i32 %33, %struct.netlbl_lsm_secattr* %34)
  store i32 %35, i32* %7, align 4
  br label %40

36:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %40

37:                                               ; preds = %21
  %38 = load i32, i32* @ENOENT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %37, %36, %28, %25
  br label %44

41:                                               ; preds = %19
  %42 = load i32, i32* @EPROTONOSUPPORT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %41, %40
  br label %45

45:                                               ; preds = %44, %16
  %46 = call i32 (...) @rcu_read_unlock()
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.netlbl_dom_map* @netlbl_domhsh_getentry(i32) #1

declare dso_local i32 @cipso_v4_sock_setattr(%struct.sock*, i32, %struct.netlbl_lsm_secattr*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
