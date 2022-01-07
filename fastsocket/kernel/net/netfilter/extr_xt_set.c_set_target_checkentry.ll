; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_set.c_set_target_checkentry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_set.c_set_target_checkentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgchk_param = type { %struct.xt_set_info_target* }
%struct.xt_set_info_target = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@IPSET_INVALID_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Cannot find add_set index %u as target\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Cannot find del_set index %u as target\0A\00", align 1
@IPSET_DIM_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [57 x i8] c"Protocol error: SET target dimension is over the limit!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_tgchk_param*)* @set_target_checkentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_target_checkentry(%struct.xt_tgchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_tgchk_param*, align 8
  %4 = alloca %struct.xt_set_info_target*, align 8
  %5 = alloca i64, align 8
  store %struct.xt_tgchk_param* %0, %struct.xt_tgchk_param** %3, align 8
  %6 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %7 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %6, i32 0, i32 0
  %8 = load %struct.xt_set_info_target*, %struct.xt_set_info_target** %7, align 8
  store %struct.xt_set_info_target* %8, %struct.xt_set_info_target** %4, align 8
  %9 = load %struct.xt_set_info_target*, %struct.xt_set_info_target** %4, align 8
  %10 = getelementptr inbounds %struct.xt_set_info_target, %struct.xt_set_info_target* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IPSET_INVALID_ID, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %1
  %16 = load %struct.xt_set_info_target*, %struct.xt_set_info_target** %4, align 8
  %17 = getelementptr inbounds %struct.xt_set_info_target, %struct.xt_set_info_target* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @ip_set_nfnl_get_byindex(i64 %19)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @IPSET_INVALID_ID, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %15
  %25 = load %struct.xt_set_info_target*, %struct.xt_set_info_target** %4, align 8
  %26 = getelementptr inbounds %struct.xt_set_info_target, %struct.xt_set_info_target* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %28)
  store i32 0, i32* %2, align 4
  br label %110

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.xt_set_info_target*, %struct.xt_set_info_target** %4, align 8
  %33 = getelementptr inbounds %struct.xt_set_info_target, %struct.xt_set_info_target* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @IPSET_INVALID_ID, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %67

38:                                               ; preds = %31
  %39 = load %struct.xt_set_info_target*, %struct.xt_set_info_target** %4, align 8
  %40 = getelementptr inbounds %struct.xt_set_info_target, %struct.xt_set_info_target* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @ip_set_nfnl_get_byindex(i64 %42)
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @IPSET_INVALID_ID, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %38
  %48 = load %struct.xt_set_info_target*, %struct.xt_set_info_target** %4, align 8
  %49 = getelementptr inbounds %struct.xt_set_info_target, %struct.xt_set_info_target* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %51)
  %53 = load %struct.xt_set_info_target*, %struct.xt_set_info_target** %4, align 8
  %54 = getelementptr inbounds %struct.xt_set_info_target, %struct.xt_set_info_target* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @IPSET_INVALID_ID, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %47
  %60 = load %struct.xt_set_info_target*, %struct.xt_set_info_target** %4, align 8
  %61 = getelementptr inbounds %struct.xt_set_info_target, %struct.xt_set_info_target* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @ip_set_nfnl_put(i64 %63)
  br label %65

65:                                               ; preds = %59, %47
  store i32 0, i32* %2, align 4
  br label %110

66:                                               ; preds = %38
  br label %67

67:                                               ; preds = %66, %31
  %68 = load %struct.xt_set_info_target*, %struct.xt_set_info_target** %4, align 8
  %69 = getelementptr inbounds %struct.xt_set_info_target, %struct.xt_set_info_target* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @IPSET_DIM_MAX, align 8
  %73 = icmp sgt i64 %71, %72
  br i1 %73, label %81, label %74

74:                                               ; preds = %67
  %75 = load %struct.xt_set_info_target*, %struct.xt_set_info_target** %4, align 8
  %76 = getelementptr inbounds %struct.xt_set_info_target, %struct.xt_set_info_target* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @IPSET_DIM_MAX, align 8
  %80 = icmp sgt i64 %78, %79
  br i1 %80, label %81, label %109

81:                                               ; preds = %74, %67
  %82 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  %83 = load %struct.xt_set_info_target*, %struct.xt_set_info_target** %4, align 8
  %84 = getelementptr inbounds %struct.xt_set_info_target, %struct.xt_set_info_target* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @IPSET_INVALID_ID, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %81
  %90 = load %struct.xt_set_info_target*, %struct.xt_set_info_target** %4, align 8
  %91 = getelementptr inbounds %struct.xt_set_info_target, %struct.xt_set_info_target* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @ip_set_nfnl_put(i64 %93)
  br label %95

95:                                               ; preds = %89, %81
  %96 = load %struct.xt_set_info_target*, %struct.xt_set_info_target** %4, align 8
  %97 = getelementptr inbounds %struct.xt_set_info_target, %struct.xt_set_info_target* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @IPSET_INVALID_ID, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %95
  %103 = load %struct.xt_set_info_target*, %struct.xt_set_info_target** %4, align 8
  %104 = getelementptr inbounds %struct.xt_set_info_target, %struct.xt_set_info_target* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @ip_set_nfnl_put(i64 %106)
  br label %108

108:                                              ; preds = %102, %95
  store i32 0, i32* %2, align 4
  br label %110

109:                                              ; preds = %74
  store i32 1, i32* %2, align 4
  br label %110

110:                                              ; preds = %109, %108, %65, %24
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i64 @ip_set_nfnl_get_byindex(i64) #1

declare dso_local i32 @pr_warning(i8*, ...) #1

declare dso_local i32 @ip_set_nfnl_put(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
