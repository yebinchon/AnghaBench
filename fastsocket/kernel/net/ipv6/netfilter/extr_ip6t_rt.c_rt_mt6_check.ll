; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_ip6t_rt.c_rt_mt6_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_ip6t_rt.c_rt_mt6_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { %struct.ip6t_rt* }
%struct.ip6t_rt = type { i32, i32, i64 }

@IP6T_RT_INV_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ip6t_rt: unknown flags %X\0A\00", align 1
@IP6T_RT_RES = common dso_local global i32 0, align 4
@IP6T_RT_FST_MASK = common dso_local global i32 0, align 4
@IP6T_RT_TYP = common dso_local global i32 0, align 4
@IP6T_RT_INV_TYP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"`--rt-type 0' required before `--rt-0-*'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @rt_mt6_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt_mt6_check(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_mtchk_param*, align 8
  %4 = alloca %struct.ip6t_rt*, align 8
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %3, align 8
  %5 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %6 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %5, i32 0, i32 0
  %7 = load %struct.ip6t_rt*, %struct.ip6t_rt** %6, align 8
  store %struct.ip6t_rt* %7, %struct.ip6t_rt** %4, align 8
  %8 = load %struct.ip6t_rt*, %struct.ip6t_rt** %4, align 8
  %9 = getelementptr inbounds %struct.ip6t_rt, %struct.ip6t_rt* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @IP6T_RT_INV_MASK, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.ip6t_rt*, %struct.ip6t_rt** %4, align 8
  %17 = getelementptr inbounds %struct.ip6t_rt, %struct.ip6t_rt* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 0, i32* %2, align 4
  br label %51

20:                                               ; preds = %1
  %21 = load %struct.ip6t_rt*, %struct.ip6t_rt** %4, align 8
  %22 = getelementptr inbounds %struct.ip6t_rt, %struct.ip6t_rt* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IP6T_RT_RES, align 4
  %25 = load i32, i32* @IP6T_RT_FST_MASK, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %20
  %30 = load %struct.ip6t_rt*, %struct.ip6t_rt** %4, align 8
  %31 = getelementptr inbounds %struct.ip6t_rt, %struct.ip6t_rt* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IP6T_RT_TYP, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %29
  %37 = load %struct.ip6t_rt*, %struct.ip6t_rt** %4, align 8
  %38 = getelementptr inbounds %struct.ip6t_rt, %struct.ip6t_rt* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %36
  %42 = load %struct.ip6t_rt*, %struct.ip6t_rt** %4, align 8
  %43 = getelementptr inbounds %struct.ip6t_rt, %struct.ip6t_rt* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @IP6T_RT_INV_TYP, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41, %36, %29
  %49 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %51

50:                                               ; preds = %41, %20
  store i32 1, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %48, %15
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @pr_debug(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
