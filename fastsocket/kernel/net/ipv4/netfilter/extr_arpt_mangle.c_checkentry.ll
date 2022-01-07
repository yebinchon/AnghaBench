; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_arpt_mangle.c_checkentry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_arpt_mangle.c_checkentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgchk_param = type { %struct.arpt_mangle* }
%struct.arpt_mangle = type { i32, i64 }

@ARPT_MANGLE_MASK = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i64 0, align 8
@NF_ACCEPT = common dso_local global i64 0, align 8
@ARPT_CONTINUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_tgchk_param*)* @checkentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkentry(%struct.xt_tgchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_tgchk_param*, align 8
  %4 = alloca %struct.arpt_mangle*, align 8
  store %struct.xt_tgchk_param* %0, %struct.xt_tgchk_param** %3, align 8
  %5 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %6 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %5, i32 0, i32 0
  %7 = load %struct.arpt_mangle*, %struct.arpt_mangle** %6, align 8
  store %struct.arpt_mangle* %7, %struct.arpt_mangle** %4, align 8
  %8 = load %struct.arpt_mangle*, %struct.arpt_mangle** %4, align 8
  %9 = getelementptr inbounds %struct.arpt_mangle, %struct.arpt_mangle* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @ARPT_MANGLE_MASK, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = load %struct.arpt_mangle*, %struct.arpt_mangle** %4, align 8
  %17 = getelementptr inbounds %struct.arpt_mangle, %struct.arpt_mangle* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @ARPT_MANGLE_MASK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15, %1
  store i32 0, i32* %2, align 4
  br label %43

23:                                               ; preds = %15
  %24 = load %struct.arpt_mangle*, %struct.arpt_mangle** %4, align 8
  %25 = getelementptr inbounds %struct.arpt_mangle, %struct.arpt_mangle* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NF_DROP, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = load %struct.arpt_mangle*, %struct.arpt_mangle** %4, align 8
  %31 = getelementptr inbounds %struct.arpt_mangle, %struct.arpt_mangle* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NF_ACCEPT, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.arpt_mangle*, %struct.arpt_mangle** %4, align 8
  %37 = getelementptr inbounds %struct.arpt_mangle, %struct.arpt_mangle* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ARPT_CONTINUE, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %43

42:                                               ; preds = %35, %29, %23
  store i32 1, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %41, %22
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
