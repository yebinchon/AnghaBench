; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_multiport.c_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_multiport.c_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@IPPROTO_UDPLITE = common dso_local global i64 0, align 8
@IPPROTO_SCTP = common dso_local global i64 0, align 8
@IPPROTO_DCCP = common dso_local global i64 0, align 8
@XT_INV_PROTO = common dso_local global i64 0, align 8
@XT_MULTIPORT_SOURCE = common dso_local global i64 0, align 8
@XT_MULTIPORT_DESTINATION = common dso_local global i64 0, align 8
@XT_MULTIPORT_EITHER = common dso_local global i64 0, align 8
@XT_MULTI_PORTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64)* @check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @IPPROTO_TCP, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %28, label %12

12:                                               ; preds = %4
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @IPPROTO_UDP, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %28, label %16

16:                                               ; preds = %12
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @IPPROTO_UDPLITE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @IPPROTO_SCTP, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @IPPROTO_DCCP, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %24, %20, %16, %12, %4
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @XT_INV_PROTO, align 8
  %31 = and i64 %29, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %28
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @XT_MULTIPORT_SOURCE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @XT_MULTIPORT_DESTINATION, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* @XT_MULTIPORT_EITHER, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41, %37, %33
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @XT_MULTI_PORTS, align 8
  %48 = icmp sle i64 %46, %47
  br label %49

49:                                               ; preds = %45, %41, %28, %24
  %50 = phi i1 [ false, %41 ], [ false, %28 ], [ false, %24 ], [ %48, %45 ]
  %51 = zext i1 %50 to i32
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
