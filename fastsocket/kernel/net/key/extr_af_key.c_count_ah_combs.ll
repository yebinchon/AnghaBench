; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_count_ah_combs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_count_ah_combs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_tmpl = type { i32 }
%struct.xfrm_algo_desc = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_tmpl*)* @count_ah_combs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_ah_combs(%struct.xfrm_tmpl* %0) #0 {
  %2 = alloca %struct.xfrm_tmpl*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_algo_desc*, align 8
  store %struct.xfrm_tmpl* %0, %struct.xfrm_tmpl** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %28, %1
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.xfrm_algo_desc* @xfrm_aalg_get_byidx(i32 %7)
  store %struct.xfrm_algo_desc* %8, %struct.xfrm_algo_desc** %5, align 8
  %9 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %5, align 8
  %10 = icmp ne %struct.xfrm_algo_desc* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  br label %31

12:                                               ; preds = %6
  %13 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %2, align 8
  %14 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %5, align 8
  %15 = call i64 @aalg_tmpl_set(%struct.xfrm_tmpl* %13, %struct.xfrm_algo_desc* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %5, align 8
  %19 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = add i64 %24, 4
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %22, %17, %12
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %6

31:                                               ; preds = %11
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = add i64 %33, 4
  %35 = trunc i64 %34 to i32
  ret i32 %35
}

declare dso_local %struct.xfrm_algo_desc* @xfrm_aalg_get_byidx(i32) #1

declare dso_local i64 @aalg_tmpl_set(%struct.xfrm_tmpl*, %struct.xfrm_algo_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
