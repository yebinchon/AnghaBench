; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_set.c_set_target.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_set.c_set_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_target_param = type { i32, %struct.xt_set_info_target* }
%struct.xt_set_info_target = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i32 }

@IPSET_INVALID_ID = common dso_local global i64 0, align 8
@XT_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_target_param*)* @set_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_target(%struct.sk_buff* %0, %struct.xt_target_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_target_param*, align 8
  %5 = alloca %struct.xt_set_info_target*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_target_param* %1, %struct.xt_target_param** %4, align 8
  %6 = load %struct.xt_target_param*, %struct.xt_target_param** %4, align 8
  %7 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %6, i32 0, i32 1
  %8 = load %struct.xt_set_info_target*, %struct.xt_set_info_target** %7, align 8
  store %struct.xt_set_info_target* %8, %struct.xt_set_info_target** %5, align 8
  %9 = load %struct.xt_set_info_target*, %struct.xt_set_info_target** %5, align 8
  %10 = getelementptr inbounds %struct.xt_set_info_target, %struct.xt_set_info_target* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IPSET_INVALID_ID, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %2
  %16 = load %struct.xt_set_info_target*, %struct.xt_set_info_target** %5, align 8
  %17 = getelementptr inbounds %struct.xt_set_info_target, %struct.xt_set_info_target* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = load %struct.xt_target_param*, %struct.xt_target_param** %4, align 8
  %22 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.xt_set_info_target*, %struct.xt_set_info_target** %5, align 8
  %25 = getelementptr inbounds %struct.xt_set_info_target, %struct.xt_set_info_target* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.xt_set_info_target*, %struct.xt_set_info_target** %5, align 8
  %29 = getelementptr inbounds %struct.xt_set_info_target, %struct.xt_set_info_target* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @ip_set_add(i64 %19, %struct.sk_buff* %20, i32 %23, i32 %27, i32 %31)
  br label %33

33:                                               ; preds = %15, %2
  %34 = load %struct.xt_set_info_target*, %struct.xt_set_info_target** %5, align 8
  %35 = getelementptr inbounds %struct.xt_set_info_target, %struct.xt_set_info_target* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IPSET_INVALID_ID, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %33
  %41 = load %struct.xt_set_info_target*, %struct.xt_set_info_target** %5, align 8
  %42 = getelementptr inbounds %struct.xt_set_info_target, %struct.xt_set_info_target* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %46 = load %struct.xt_target_param*, %struct.xt_target_param** %4, align 8
  %47 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.xt_set_info_target*, %struct.xt_set_info_target** %5, align 8
  %50 = getelementptr inbounds %struct.xt_set_info_target, %struct.xt_set_info_target* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.xt_set_info_target*, %struct.xt_set_info_target** %5, align 8
  %54 = getelementptr inbounds %struct.xt_set_info_target, %struct.xt_set_info_target* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ip_set_del(i64 %44, %struct.sk_buff* %45, i32 %48, i32 %52, i32 %56)
  br label %58

58:                                               ; preds = %40, %33
  %59 = load i32, i32* @XT_CONTINUE, align 4
  ret i32 %59
}

declare dso_local i32 @ip_set_add(i64, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @ip_set_del(i64, %struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
