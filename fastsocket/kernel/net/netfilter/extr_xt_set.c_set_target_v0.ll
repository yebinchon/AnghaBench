; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_set.c_set_target_v0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_set.c_set_target_v0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_target_param = type { i32, %struct.xt_set_info_target_v0* }
%struct.xt_set_info_target_v0 = type { %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@IPSET_INVALID_ID = common dso_local global i64 0, align 8
@XT_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_target_param*)* @set_target_v0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_target_v0(%struct.sk_buff* %0, %struct.xt_target_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_target_param*, align 8
  %5 = alloca %struct.xt_set_info_target_v0*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_target_param* %1, %struct.xt_target_param** %4, align 8
  %6 = load %struct.xt_target_param*, %struct.xt_target_param** %4, align 8
  %7 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %6, i32 0, i32 1
  %8 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %7, align 8
  store %struct.xt_set_info_target_v0* %8, %struct.xt_set_info_target_v0** %5, align 8
  %9 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %5, align 8
  %10 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IPSET_INVALID_ID, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %2
  %16 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %5, align 8
  %17 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = load %struct.xt_target_param*, %struct.xt_target_param** %4, align 8
  %22 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %5, align 8
  %25 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %5, align 8
  %31 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ip_set_add(i64 %19, %struct.sk_buff* %20, i32 %23, i32 %29, i32 %35)
  br label %37

37:                                               ; preds = %15, %2
  %38 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %5, align 8
  %39 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IPSET_INVALID_ID, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %66

44:                                               ; preds = %37
  %45 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %5, align 8
  %46 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %50 = load %struct.xt_target_param*, %struct.xt_target_param** %4, align 8
  %51 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %5, align 8
  %54 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %5, align 8
  %60 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @ip_set_del(i64 %48, %struct.sk_buff* %49, i32 %52, i32 %58, i32 %64)
  br label %66

66:                                               ; preds = %44, %37
  %67 = load i32, i32* @XT_CONTINUE, align 4
  ret i32 %67
}

declare dso_local i32 @ip_set_add(i64, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @ip_set_del(i64, %struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
