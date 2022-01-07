; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_dump_ah_combs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_dump_ah_combs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xfrm_tmpl = type { i32 }
%struct.sadb_prop = type { i32, i32, %struct.sadb_comb*, i32 }
%struct.sadb_comb = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.xfrm_algo_desc = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@SADB_EXT_PROPOSAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.xfrm_tmpl*)* @dump_ah_combs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_ah_combs(%struct.sk_buff* %0, %struct.xfrm_tmpl* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xfrm_tmpl*, align 8
  %5 = alloca %struct.sadb_prop*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfrm_algo_desc*, align 8
  %8 = alloca %struct.sadb_comb*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xfrm_tmpl* %1, %struct.xfrm_tmpl** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = call i64 @skb_put(%struct.sk_buff* %9, i32 24)
  %11 = inttoptr i64 %10 to %struct.sadb_prop*
  store %struct.sadb_prop* %11, %struct.sadb_prop** %5, align 8
  %12 = load %struct.sadb_prop*, %struct.sadb_prop** %5, align 8
  %13 = getelementptr inbounds %struct.sadb_prop, %struct.sadb_prop* %12, i32 0, i32 0
  store i32 3, i32* %13, align 8
  %14 = load i32, i32* @SADB_EXT_PROPOSAL, align 4
  %15 = load %struct.sadb_prop*, %struct.sadb_prop** %5, align 8
  %16 = getelementptr inbounds %struct.sadb_prop, %struct.sadb_prop* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 8
  %17 = load %struct.sadb_prop*, %struct.sadb_prop** %5, align 8
  %18 = getelementptr inbounds %struct.sadb_prop, %struct.sadb_prop* %17, i32 0, i32 1
  store i32 32, i32* %18, align 4
  %19 = load %struct.sadb_prop*, %struct.sadb_prop** %5, align 8
  %20 = getelementptr inbounds %struct.sadb_prop, %struct.sadb_prop* %19, i32 0, i32 2
  %21 = load %struct.sadb_comb*, %struct.sadb_comb** %20, align 8
  %22 = call i32 @memset(%struct.sadb_comb* %21, i32 0, i32 8)
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %78, %2
  %24 = load i32, i32* %6, align 4
  %25 = call %struct.xfrm_algo_desc* @xfrm_aalg_get_byidx(i32 %24)
  store %struct.xfrm_algo_desc* %25, %struct.xfrm_algo_desc** %7, align 8
  %26 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %7, align 8
  %27 = icmp ne %struct.xfrm_algo_desc* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %81

29:                                               ; preds = %23
  %30 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %4, align 8
  %31 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %7, align 8
  %32 = call i64 @aalg_tmpl_set(%struct.xfrm_tmpl* %30, %struct.xfrm_algo_desc* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %77

34:                                               ; preds = %29
  %35 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %7, align 8
  %36 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %77

39:                                               ; preds = %34
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = call i64 @skb_put(%struct.sk_buff* %40, i32 28)
  %42 = inttoptr i64 %41 to %struct.sadb_comb*
  store %struct.sadb_comb* %42, %struct.sadb_comb** %8, align 8
  %43 = load %struct.sadb_comb*, %struct.sadb_comb** %8, align 8
  %44 = call i32 @memset(%struct.sadb_comb* %43, i32 0, i32 28)
  %45 = load %struct.sadb_prop*, %struct.sadb_prop** %5, align 8
  %46 = getelementptr inbounds %struct.sadb_prop, %struct.sadb_prop* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = add i64 %48, 3
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 8
  %51 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %7, align 8
  %52 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.sadb_comb*, %struct.sadb_comb** %8, align 8
  %56 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 4
  %57 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %7, align 8
  %58 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sadb_comb*, %struct.sadb_comb** %8, align 8
  %62 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 4
  %63 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %7, align 8
  %64 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.sadb_comb*, %struct.sadb_comb** %8, align 8
  %68 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 4
  %69 = load %struct.sadb_comb*, %struct.sadb_comb** %8, align 8
  %70 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %69, i32 0, i32 0
  store i32 86400, i32* %70, align 4
  %71 = load %struct.sadb_comb*, %struct.sadb_comb** %8, align 8
  %72 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %71, i32 0, i32 1
  store i32 72000, i32* %72, align 4
  %73 = load %struct.sadb_comb*, %struct.sadb_comb** %8, align 8
  %74 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %73, i32 0, i32 2
  store i32 28800, i32* %74, align 4
  %75 = load %struct.sadb_comb*, %struct.sadb_comb** %8, align 8
  %76 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %75, i32 0, i32 3
  store i32 25200, i32* %76, align 4
  br label %77

77:                                               ; preds = %39, %34, %29
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %23

81:                                               ; preds = %28
  ret void
}

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.sadb_comb*, i32, i32) #1

declare dso_local %struct.xfrm_algo_desc* @xfrm_aalg_get_byidx(i32) #1

declare dso_local i64 @aalg_tmpl_set(%struct.xfrm_tmpl*, %struct.xfrm_algo_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
