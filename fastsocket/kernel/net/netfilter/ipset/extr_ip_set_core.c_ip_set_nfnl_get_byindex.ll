; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_core.c_ip_set_nfnl_get_byindex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_core.c_ip_set_nfnl_get_byindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ip_set_max = common dso_local global i64 0, align 8
@IPSET_INVALID_ID = common dso_local global i64 0, align 8
@ip_set_list = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ip_set_nfnl_get_byindex(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @ip_set_max, align 8
  %6 = icmp sgt i64 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i64, i64* @IPSET_INVALID_ID, align 8
  store i64 %8, i64* %2, align 8
  br label %24

9:                                                ; preds = %1
  %10 = call i32 (...) @nfnl_lock()
  %11 = load i64*, i64** @ip_set_list, align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @__ip_set_get(i64 %17)
  br label %21

19:                                               ; preds = %9
  %20 = load i64, i64* @IPSET_INVALID_ID, align 8
  store i64 %20, i64* %3, align 8
  br label %21

21:                                               ; preds = %19, %16
  %22 = call i32 (...) @nfnl_unlock()
  %23 = load i64, i64* %3, align 8
  store i64 %23, i64* %2, align 8
  br label %24

24:                                               ; preds = %21, %7
  %25 = load i64, i64* %2, align 8
  ret i64 %25
}

declare dso_local i32 @nfnl_lock(...) #1

declare dso_local i32 @__ip_set_get(i64) #1

declare dso_local i32 @nfnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
