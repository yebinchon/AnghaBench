; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_qdisc_get_rtab.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_qdisc_get_rtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdisc_rate_table = type { i32, %struct.qdisc_rate_table*, i32, %struct.tc_ratespec }
%struct.tc_ratespec = type { i64, i64 }
%struct.nlattr = type { i32 }

@qdisc_rtab_list = common dso_local global %struct.qdisc_rate_table* null, align 8
@TC_RTAB_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.qdisc_rate_table* @qdisc_get_rtab(%struct.tc_ratespec* %0, %struct.nlattr* %1) #0 {
  %3 = alloca %struct.qdisc_rate_table*, align 8
  %4 = alloca %struct.tc_ratespec*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.qdisc_rate_table*, align 8
  store %struct.tc_ratespec* %0, %struct.tc_ratespec** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %7 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** @qdisc_rtab_list, align 8
  store %struct.qdisc_rate_table* %7, %struct.qdisc_rate_table** %6, align 8
  br label %8

8:                                                ; preds = %24, %2
  %9 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %6, align 8
  %10 = icmp ne %struct.qdisc_rate_table* %9, null
  br i1 %10, label %11, label %28

11:                                               ; preds = %8
  %12 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %6, align 8
  %13 = getelementptr inbounds %struct.qdisc_rate_table, %struct.qdisc_rate_table* %12, i32 0, i32 3
  %14 = load %struct.tc_ratespec*, %struct.tc_ratespec** %4, align 8
  %15 = call i64 @memcmp(%struct.tc_ratespec* %13, %struct.tc_ratespec* %14, i32 16)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %6, align 8
  %19 = getelementptr inbounds %struct.qdisc_rate_table, %struct.qdisc_rate_table* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %6, align 8
  store %struct.qdisc_rate_table* %22, %struct.qdisc_rate_table** %3, align 8
  br label %72

23:                                               ; preds = %11
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %6, align 8
  %26 = getelementptr inbounds %struct.qdisc_rate_table, %struct.qdisc_rate_table* %25, i32 0, i32 1
  %27 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %26, align 8
  store %struct.qdisc_rate_table* %27, %struct.qdisc_rate_table** %6, align 8
  br label %8

28:                                               ; preds = %8
  %29 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %30 = icmp eq %struct.nlattr* %29, null
  br i1 %30, label %46, label %31

31:                                               ; preds = %28
  %32 = load %struct.tc_ratespec*, %struct.tc_ratespec** %4, align 8
  %33 = getelementptr inbounds %struct.tc_ratespec, %struct.tc_ratespec* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %31
  %37 = load %struct.tc_ratespec*, %struct.tc_ratespec** %4, align 8
  %38 = getelementptr inbounds %struct.tc_ratespec, %struct.tc_ratespec* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %43 = call i64 @nla_len(%struct.nlattr* %42)
  %44 = load i64, i64* @TC_RTAB_SIZE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41, %36, %31, %28
  store %struct.qdisc_rate_table* null, %struct.qdisc_rate_table** %3, align 8
  br label %72

47:                                               ; preds = %41
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.qdisc_rate_table* @kmalloc(i32 40, i32 %48)
  store %struct.qdisc_rate_table* %49, %struct.qdisc_rate_table** %6, align 8
  %50 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %6, align 8
  %51 = icmp ne %struct.qdisc_rate_table* %50, null
  br i1 %51, label %52, label %70

52:                                               ; preds = %47
  %53 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %6, align 8
  %54 = getelementptr inbounds %struct.qdisc_rate_table, %struct.qdisc_rate_table* %53, i32 0, i32 3
  %55 = load %struct.tc_ratespec*, %struct.tc_ratespec** %4, align 8
  %56 = bitcast %struct.tc_ratespec* %54 to i8*
  %57 = bitcast %struct.tc_ratespec* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 16, i1 false)
  %58 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %6, align 8
  %59 = getelementptr inbounds %struct.qdisc_rate_table, %struct.qdisc_rate_table* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %6, align 8
  %61 = getelementptr inbounds %struct.qdisc_rate_table, %struct.qdisc_rate_table* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %64 = call i32 @nla_data(%struct.nlattr* %63)
  %65 = call i32 @memcpy(i32 %62, i32 %64, i32 1024)
  %66 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** @qdisc_rtab_list, align 8
  %67 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %6, align 8
  %68 = getelementptr inbounds %struct.qdisc_rate_table, %struct.qdisc_rate_table* %67, i32 0, i32 1
  store %struct.qdisc_rate_table* %66, %struct.qdisc_rate_table** %68, align 8
  %69 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %6, align 8
  store %struct.qdisc_rate_table* %69, %struct.qdisc_rate_table** @qdisc_rtab_list, align 8
  br label %70

70:                                               ; preds = %52, %47
  %71 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %6, align 8
  store %struct.qdisc_rate_table* %71, %struct.qdisc_rate_table** %3, align 8
  br label %72

72:                                               ; preds = %70, %46, %17
  %73 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %3, align 8
  ret %struct.qdisc_rate_table* %73
}

declare dso_local i64 @memcmp(%struct.tc_ratespec*, %struct.tc_ratespec*, i32) #1

declare dso_local i64 @nla_len(%struct.nlattr*) #1

declare dso_local %struct.qdisc_rate_table* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
