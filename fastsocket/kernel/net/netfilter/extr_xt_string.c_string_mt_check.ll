; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_string.c_string_mt_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_string.c_string_mt_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { %struct.TYPE_4__*, %struct.xt_string_info* }
%struct.TYPE_4__ = type { i32 }
%struct.xt_string_info = type { i64, i64, i8*, i64, %struct.ts_config*, i32, %struct.TYPE_6__ }
%struct.ts_config = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@TS_AUTOLOAD = common dso_local global i32 0, align 4
@XT_STRING_MAX_ALGO_NAME_SIZE = common dso_local global i32 0, align 4
@XT_STRING_MAX_PATTERN_SIZE = common dso_local global i64 0, align 8
@XT_STRING_FLAG_IGNORECASE = common dso_local global i32 0, align 4
@XT_STRING_FLAG_INVERT = common dso_local global i32 0, align 4
@TS_IGNORECASE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @string_mt_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @string_mt_check(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_mtchk_param*, align 8
  %4 = alloca %struct.xt_string_info*, align 8
  %5 = alloca %struct.ts_config*, align 8
  %6 = alloca i32, align 4
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %3, align 8
  %7 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %8 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %7, i32 0, i32 1
  %9 = load %struct.xt_string_info*, %struct.xt_string_info** %8, align 8
  store %struct.xt_string_info* %9, %struct.xt_string_info** %4, align 8
  %10 = load i32, i32* @TS_AUTOLOAD, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.xt_string_info*, %struct.xt_string_info** %4, align 8
  %12 = getelementptr inbounds %struct.xt_string_info, %struct.xt_string_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.xt_string_info*, %struct.xt_string_info** %4, align 8
  %15 = getelementptr inbounds %struct.xt_string_info, %struct.xt_string_info* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %93

19:                                               ; preds = %1
  %20 = load %struct.xt_string_info*, %struct.xt_string_info** %4, align 8
  %21 = getelementptr inbounds %struct.xt_string_info, %struct.xt_string_info* %20, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* @XT_STRING_MAX_ALGO_NAME_SIZE, align 4
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %93

31:                                               ; preds = %19
  %32 = load %struct.xt_string_info*, %struct.xt_string_info** %4, align 8
  %33 = getelementptr inbounds %struct.xt_string_info, %struct.xt_string_info* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @XT_STRING_MAX_PATTERN_SIZE, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %93

38:                                               ; preds = %31
  %39 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %40 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %72

45:                                               ; preds = %38
  %46 = load %struct.xt_string_info*, %struct.xt_string_info** %4, align 8
  %47 = getelementptr inbounds %struct.xt_string_info, %struct.xt_string_info* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @XT_STRING_FLAG_IGNORECASE, align 4
  %52 = load i32, i32* @XT_STRING_FLAG_INVERT, align 4
  %53 = or i32 %51, %52
  %54 = xor i32 %53, -1
  %55 = and i32 %50, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %93

58:                                               ; preds = %45
  %59 = load %struct.xt_string_info*, %struct.xt_string_info** %4, align 8
  %60 = getelementptr inbounds %struct.xt_string_info, %struct.xt_string_info* %59, i32 0, i32 6
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @XT_STRING_FLAG_IGNORECASE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = load i32, i32* @TS_IGNORECASE, align 4
  %69 = load i32, i32* %6, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %67, %58
  br label %72

72:                                               ; preds = %71, %38
  %73 = load %struct.xt_string_info*, %struct.xt_string_info** %4, align 8
  %74 = getelementptr inbounds %struct.xt_string_info, %struct.xt_string_info* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.xt_string_info*, %struct.xt_string_info** %4, align 8
  %77 = getelementptr inbounds %struct.xt_string_info, %struct.xt_string_info* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.xt_string_info*, %struct.xt_string_info** %4, align 8
  %80 = getelementptr inbounds %struct.xt_string_info, %struct.xt_string_info* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call %struct.ts_config* @textsearch_prepare(i8* %75, i32 %78, i64 %81, i32 %82, i32 %83)
  store %struct.ts_config* %84, %struct.ts_config** %5, align 8
  %85 = load %struct.ts_config*, %struct.ts_config** %5, align 8
  %86 = call i64 @IS_ERR(%struct.ts_config* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %93

89:                                               ; preds = %72
  %90 = load %struct.ts_config*, %struct.ts_config** %5, align 8
  %91 = load %struct.xt_string_info*, %struct.xt_string_info** %4, align 8
  %92 = getelementptr inbounds %struct.xt_string_info, %struct.xt_string_info* %91, i32 0, i32 4
  store %struct.ts_config* %90, %struct.ts_config** %92, align 8
  store i32 1, i32* %2, align 4
  br label %93

93:                                               ; preds = %89, %88, %57, %37, %30, %18
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.ts_config* @textsearch_prepare(i8*, i32, i64, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ts_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
