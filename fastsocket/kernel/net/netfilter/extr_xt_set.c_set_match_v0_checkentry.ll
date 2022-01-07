; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_set.c_set_match_v0_checkentry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_set.c_set_match_v0_checkentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { %struct.xt_set_info_match_v0* }
%struct.xt_set_info_match_v0 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }

@IPSET_INVALID_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Cannot find set indentified by id %u to match\0A\00", align 1
@IPSET_DIM_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Protocol error: set match dimension is over the limit!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @set_match_v0_checkentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_match_v0_checkentry(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_mtchk_param*, align 8
  %4 = alloca %struct.xt_set_info_match_v0*, align 8
  %5 = alloca i64, align 8
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %3, align 8
  %6 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %7 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %6, i32 0, i32 0
  %8 = load %struct.xt_set_info_match_v0*, %struct.xt_set_info_match_v0** %7, align 8
  store %struct.xt_set_info_match_v0* %8, %struct.xt_set_info_match_v0** %4, align 8
  %9 = load %struct.xt_set_info_match_v0*, %struct.xt_set_info_match_v0** %4, align 8
  %10 = getelementptr inbounds %struct.xt_set_info_match_v0, %struct.xt_set_info_match_v0* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @ip_set_nfnl_get_byindex(i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @IPSET_INVALID_ID, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.xt_set_info_match_v0*, %struct.xt_set_info_match_v0** %4, align 8
  %19 = getelementptr inbounds %struct.xt_set_info_match_v0, %struct.xt_set_info_match_v0* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 0, i32* %2, align 4
  br label %46

23:                                               ; preds = %1
  %24 = load %struct.xt_set_info_match_v0*, %struct.xt_set_info_match_v0** %4, align 8
  %25 = getelementptr inbounds %struct.xt_set_info_match_v0, %struct.xt_set_info_match_v0* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* @IPSET_DIM_MAX, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %28, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %23
  %36 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.xt_set_info_match_v0*, %struct.xt_set_info_match_v0** %4, align 8
  %38 = getelementptr inbounds %struct.xt_set_info_match_v0, %struct.xt_set_info_match_v0* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ip_set_nfnl_put(i32 %40)
  store i32 0, i32* %2, align 4
  br label %46

42:                                               ; preds = %23
  %43 = load %struct.xt_set_info_match_v0*, %struct.xt_set_info_match_v0** %4, align 8
  %44 = getelementptr inbounds %struct.xt_set_info_match_v0, %struct.xt_set_info_match_v0* %43, i32 0, i32 0
  %45 = call i32 @compat_flags(%struct.TYPE_4__* %44)
  store i32 1, i32* %2, align 4
  br label %46

46:                                               ; preds = %42, %35, %17
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i64 @ip_set_nfnl_get_byindex(i32) #1

declare dso_local i32 @pr_warning(i8*, ...) #1

declare dso_local i32 @ip_set_nfnl_put(i32) #1

declare dso_local i32 @compat_flags(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
