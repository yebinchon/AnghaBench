; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_ulog.c_ebt_log_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_ulog.c_ebt_log_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.nf_loginfo = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32 }
%struct.ebt_ulog_info = type { i8*, i32, i64, i32 }

@NF_LOG_TYPE_ULOG = common dso_local global i64 0, align 8
@EBT_ULOG_DEFAULT_NLGROUP = common dso_local global i32 0, align 4
@EBT_ULOG_DEFAULT_QTHRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.sk_buff*, %struct.net_device*, %struct.net_device*, %struct.nf_loginfo*, i8*)* @ebt_log_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ebt_log_packet(i32 %0, i32 %1, %struct.sk_buff* %2, %struct.net_device* %3, %struct.net_device* %4, %struct.nf_loginfo* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.nf_loginfo*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.ebt_ulog_info, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.net_device* %3, %struct.net_device** %11, align 8
  store %struct.net_device* %4, %struct.net_device** %12, align 8
  store %struct.nf_loginfo* %5, %struct.nf_loginfo** %13, align 8
  store i8* %6, i8** %14, align 8
  %16 = load %struct.nf_loginfo*, %struct.nf_loginfo** %13, align 8
  %17 = icmp ne %struct.nf_loginfo* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %7
  %19 = load %struct.nf_loginfo*, %struct.nf_loginfo** %13, align 8
  %20 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NF_LOG_TYPE_ULOG, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %18, %7
  %25 = load i32, i32* @EBT_ULOG_DEFAULT_NLGROUP, align 4
  %26 = getelementptr inbounds %struct.ebt_ulog_info, %struct.ebt_ulog_info* %15, i32 0, i32 3
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.ebt_ulog_info, %struct.ebt_ulog_info* %15, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* @EBT_ULOG_DEFAULT_QTHRESHOLD, align 4
  %29 = getelementptr inbounds %struct.ebt_ulog_info, %struct.ebt_ulog_info* %15, i32 0, i32 1
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.ebt_ulog_info, %struct.ebt_ulog_info* %15, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  store i8 0, i8* %32, align 1
  br label %56

33:                                               ; preds = %18
  %34 = load %struct.nf_loginfo*, %struct.nf_loginfo** %13, align 8
  %35 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.ebt_ulog_info, %struct.ebt_ulog_info* %15, i32 0, i32 3
  store i32 %38, i32* %39, align 8
  %40 = load %struct.nf_loginfo*, %struct.nf_loginfo** %13, align 8
  %41 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.ebt_ulog_info, %struct.ebt_ulog_info* %15, i32 0, i32 2
  store i64 %44, i64* %45, align 8
  %46 = load %struct.nf_loginfo*, %struct.nf_loginfo** %13, align 8
  %47 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.ebt_ulog_info, %struct.ebt_ulog_info* %15, i32 0, i32 1
  store i32 %50, i32* %51, align 8
  %52 = getelementptr inbounds %struct.ebt_ulog_info, %struct.ebt_ulog_info* %15, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = call i32 @strlcpy(i8* %53, i8* %54, i32 8)
  br label %56

56:                                               ; preds = %33, %24
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %59 = load %struct.net_device*, %struct.net_device** %11, align 8
  %60 = load %struct.net_device*, %struct.net_device** %12, align 8
  %61 = load i8*, i8** %14, align 8
  %62 = call i32 @ebt_ulog_packet(i32 %57, %struct.sk_buff* %58, %struct.net_device* %59, %struct.net_device* %60, %struct.ebt_ulog_info* %15, i8* %61)
  ret void
}

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @ebt_ulog_packet(i32, %struct.sk_buff*, %struct.net_device*, %struct.net_device*, %struct.ebt_ulog_info*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
