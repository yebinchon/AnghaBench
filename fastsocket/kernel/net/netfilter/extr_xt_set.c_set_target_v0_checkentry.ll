; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_set.c_set_target_v0_checkentry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_set.c_set_target_v0_checkentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgchk_param = type { %struct.xt_set_info_target_v0* }
%struct.xt_set_info_target_v0 = type { %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }

@IPSET_INVALID_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Cannot find add_set index %u as target\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Cannot find del_set index %u as target\0A\00", align 1
@IPSET_DIM_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"Protocol error: SET target dimension is over the limit!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_tgchk_param*)* @set_target_v0_checkentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_target_v0_checkentry(%struct.xt_tgchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_tgchk_param*, align 8
  %4 = alloca %struct.xt_set_info_target_v0*, align 8
  %5 = alloca i64, align 8
  store %struct.xt_tgchk_param* %0, %struct.xt_tgchk_param** %3, align 8
  %6 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %7 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %6, i32 0, i32 0
  %8 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %7, align 8
  store %struct.xt_set_info_target_v0* %8, %struct.xt_set_info_target_v0** %4, align 8
  %9 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %4, align 8
  %10 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IPSET_INVALID_ID, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %1
  %16 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %4, align 8
  %17 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @ip_set_nfnl_get_byindex(i64 %19)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @IPSET_INVALID_ID, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %15
  %25 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %4, align 8
  %26 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %28)
  store i32 0, i32* %2, align 4
  br label %126

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %4, align 8
  %33 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @IPSET_INVALID_ID, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %67

38:                                               ; preds = %31
  %39 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %4, align 8
  %40 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @ip_set_nfnl_get_byindex(i64 %42)
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @IPSET_INVALID_ID, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %38
  %48 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %4, align 8
  %49 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %51)
  %53 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %4, align 8
  %54 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @IPSET_INVALID_ID, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %47
  %60 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %4, align 8
  %61 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @ip_set_nfnl_put(i64 %63)
  br label %65

65:                                               ; preds = %59, %47
  store i32 0, i32* %2, align 4
  br label %126

66:                                               ; preds = %38
  br label %67

67:                                               ; preds = %66, %31
  %68 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %4, align 8
  %69 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* @IPSET_DIM_MAX, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %72, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %91, label %79

79:                                               ; preds = %67
  %80 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %4, align 8
  %81 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* @IPSET_DIM_MAX, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %84, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %119

91:                                               ; preds = %79, %67
  %92 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  %93 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %4, align 8
  %94 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @IPSET_INVALID_ID, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %91
  %100 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %4, align 8
  %101 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @ip_set_nfnl_put(i64 %103)
  br label %105

105:                                              ; preds = %99, %91
  %106 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %4, align 8
  %107 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @IPSET_INVALID_ID, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %105
  %113 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %4, align 8
  %114 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @ip_set_nfnl_put(i64 %116)
  br label %118

118:                                              ; preds = %112, %105
  store i32 0, i32* %2, align 4
  br label %126

119:                                              ; preds = %79
  %120 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %4, align 8
  %121 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %120, i32 0, i32 1
  %122 = call i32 @compat_flags(%struct.TYPE_4__* %121)
  %123 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %4, align 8
  %124 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %123, i32 0, i32 0
  %125 = call i32 @compat_flags(%struct.TYPE_4__* %124)
  store i32 1, i32* %2, align 4
  br label %126

126:                                              ; preds = %119, %118, %65, %24
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i64 @ip_set_nfnl_get_byindex(i64) #1

declare dso_local i32 @pr_warning(i8*, ...) #1

declare dso_local i32 @ip_set_nfnl_put(i64) #1

declare dso_local i32 @compat_flags(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
