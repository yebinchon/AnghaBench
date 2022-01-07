; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_dump_esp_combs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_dump_esp_combs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xfrm_tmpl = type { i32 }
%struct.sadb_prop = type { i32, i32, %struct.sadb_comb*, i32 }
%struct.sadb_comb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xfrm_algo_desc = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@SADB_EXT_PROPOSAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.xfrm_tmpl*)* @dump_esp_combs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_esp_combs(%struct.sk_buff* %0, %struct.xfrm_tmpl* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xfrm_tmpl*, align 8
  %5 = alloca %struct.sadb_prop*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.xfrm_algo_desc*, align 8
  %9 = alloca %struct.sadb_comb*, align 8
  %10 = alloca %struct.xfrm_algo_desc*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xfrm_tmpl* %1, %struct.xfrm_tmpl** %4, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = call i64 @skb_put(%struct.sk_buff* %11, i32 24)
  %13 = inttoptr i64 %12 to %struct.sadb_prop*
  store %struct.sadb_prop* %13, %struct.sadb_prop** %5, align 8
  %14 = load %struct.sadb_prop*, %struct.sadb_prop** %5, align 8
  %15 = getelementptr inbounds %struct.sadb_prop, %struct.sadb_prop* %14, i32 0, i32 0
  store i32 3, i32* %15, align 8
  %16 = load i32, i32* @SADB_EXT_PROPOSAL, align 4
  %17 = load %struct.sadb_prop*, %struct.sadb_prop** %5, align 8
  %18 = getelementptr inbounds %struct.sadb_prop, %struct.sadb_prop* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  %19 = load %struct.sadb_prop*, %struct.sadb_prop** %5, align 8
  %20 = getelementptr inbounds %struct.sadb_prop, %struct.sadb_prop* %19, i32 0, i32 1
  store i32 32, i32* %20, align 4
  %21 = load %struct.sadb_prop*, %struct.sadb_prop** %5, align 8
  %22 = getelementptr inbounds %struct.sadb_prop, %struct.sadb_prop* %21, i32 0, i32 2
  %23 = load %struct.sadb_comb*, %struct.sadb_comb** %22, align 8
  %24 = call i32 @memset(%struct.sadb_comb* %23, i32 0, i32 8)
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %120, %2
  %26 = load i32, i32* %6, align 4
  %27 = call %struct.xfrm_algo_desc* @xfrm_ealg_get_byidx(i32 %26)
  store %struct.xfrm_algo_desc* %27, %struct.xfrm_algo_desc** %8, align 8
  %28 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %8, align 8
  %29 = icmp ne %struct.xfrm_algo_desc* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %123

31:                                               ; preds = %25
  %32 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %4, align 8
  %33 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %8, align 8
  %34 = call i64 @ealg_tmpl_set(%struct.xfrm_tmpl* %32, %struct.xfrm_algo_desc* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %8, align 8
  %38 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36, %31
  br label %120

42:                                               ; preds = %36
  store i32 1, i32* %7, align 4
  br label %43

43:                                               ; preds = %116, %42
  %44 = load i32, i32* %7, align 4
  %45 = call %struct.xfrm_algo_desc* @xfrm_aalg_get_byidx(i32 %44)
  store %struct.xfrm_algo_desc* %45, %struct.xfrm_algo_desc** %10, align 8
  %46 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %10, align 8
  %47 = icmp ne %struct.xfrm_algo_desc* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br label %119

49:                                               ; preds = %43
  %50 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %4, align 8
  %51 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %10, align 8
  %52 = call i64 @aalg_tmpl_set(%struct.xfrm_tmpl* %50, %struct.xfrm_algo_desc* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %10, align 8
  %56 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54, %49
  br label %116

60:                                               ; preds = %54
  %61 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %62 = call i64 @skb_put(%struct.sk_buff* %61, i32 40)
  %63 = inttoptr i64 %62 to %struct.sadb_comb*
  store %struct.sadb_comb* %63, %struct.sadb_comb** %9, align 8
  %64 = load %struct.sadb_comb*, %struct.sadb_comb** %9, align 8
  %65 = call i32 @memset(%struct.sadb_comb* %64, i32 0, i32 40)
  %66 = load %struct.sadb_prop*, %struct.sadb_prop** %5, align 8
  %67 = getelementptr inbounds %struct.sadb_prop, %struct.sadb_prop* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = add i64 %69, 5
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 8
  %72 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %10, align 8
  %73 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.sadb_comb*, %struct.sadb_comb** %9, align 8
  %77 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %76, i32 0, i32 9
  store i32 %75, i32* %77, align 4
  %78 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %10, align 8
  %79 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.sadb_comb*, %struct.sadb_comb** %9, align 8
  %83 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %82, i32 0, i32 8
  store i32 %81, i32* %83, align 4
  %84 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %10, align 8
  %85 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.sadb_comb*, %struct.sadb_comb** %9, align 8
  %89 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %88, i32 0, i32 7
  store i32 %87, i32* %89, align 4
  %90 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %8, align 8
  %91 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.sadb_comb*, %struct.sadb_comb** %9, align 8
  %95 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %94, i32 0, i32 6
  store i32 %93, i32* %95, align 4
  %96 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %8, align 8
  %97 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.sadb_comb*, %struct.sadb_comb** %9, align 8
  %101 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 4
  %102 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %8, align 8
  %103 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.sadb_comb*, %struct.sadb_comb** %9, align 8
  %107 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 4
  %108 = load %struct.sadb_comb*, %struct.sadb_comb** %9, align 8
  %109 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %108, i32 0, i32 0
  store i32 86400, i32* %109, align 4
  %110 = load %struct.sadb_comb*, %struct.sadb_comb** %9, align 8
  %111 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %110, i32 0, i32 1
  store i32 72000, i32* %111, align 4
  %112 = load %struct.sadb_comb*, %struct.sadb_comb** %9, align 8
  %113 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %112, i32 0, i32 2
  store i32 28800, i32* %113, align 4
  %114 = load %struct.sadb_comb*, %struct.sadb_comb** %9, align 8
  %115 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %114, i32 0, i32 3
  store i32 25200, i32* %115, align 4
  br label %116

116:                                              ; preds = %60, %59
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %7, align 4
  br label %43

119:                                              ; preds = %48
  br label %120

120:                                              ; preds = %119, %41
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %6, align 4
  br label %25

123:                                              ; preds = %30
  ret void
}

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.sadb_comb*, i32, i32) #1

declare dso_local %struct.xfrm_algo_desc* @xfrm_ealg_get_byidx(i32) #1

declare dso_local i64 @ealg_tmpl_set(%struct.xfrm_tmpl*, %struct.xfrm_algo_desc*) #1

declare dso_local %struct.xfrm_algo_desc* @xfrm_aalg_get_byidx(i32) #1

declare dso_local i64 @aalg_tmpl_set(%struct.xfrm_tmpl*, %struct.xfrm_algo_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
