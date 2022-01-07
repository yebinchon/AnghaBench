; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_count_esp_combs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_count_esp_combs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_tmpl = type { i32 }
%struct.xfrm_algo_desc = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_tmpl*)* @count_esp_combs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_esp_combs(%struct.xfrm_tmpl* %0) #0 {
  %2 = alloca %struct.xfrm_tmpl*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfrm_algo_desc*, align 8
  %7 = alloca %struct.xfrm_algo_desc*, align 8
  store %struct.xfrm_tmpl* %0, %struct.xfrm_tmpl** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %52, %1
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.xfrm_algo_desc* @xfrm_ealg_get_byidx(i32 %9)
  store %struct.xfrm_algo_desc* %10, %struct.xfrm_algo_desc** %6, align 8
  %11 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %6, align 8
  %12 = icmp ne %struct.xfrm_algo_desc* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  br label %55

14:                                               ; preds = %8
  %15 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %2, align 8
  %16 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %6, align 8
  %17 = call i64 @ealg_tmpl_set(%struct.xfrm_tmpl* %15, %struct.xfrm_algo_desc* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %6, align 8
  %21 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %14
  br label %52

25:                                               ; preds = %19
  store i32 1, i32* %4, align 4
  br label %26

26:                                               ; preds = %48, %25
  %27 = load i32, i32* %4, align 4
  %28 = call %struct.xfrm_algo_desc* @xfrm_aalg_get_byidx(i32 %27)
  store %struct.xfrm_algo_desc* %28, %struct.xfrm_algo_desc** %7, align 8
  %29 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %7, align 8
  %30 = icmp ne %struct.xfrm_algo_desc* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %51

32:                                               ; preds = %26
  %33 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %2, align 8
  %34 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %7, align 8
  %35 = call i64 @aalg_tmpl_set(%struct.xfrm_tmpl* %33, %struct.xfrm_algo_desc* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %7, align 8
  %39 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 %44, 4
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %42, %37, %32
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %26

51:                                               ; preds = %31
  br label %52

52:                                               ; preds = %51, %24
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %8

55:                                               ; preds = %13
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = add i64 %57, 4
  %59 = trunc i64 %58 to i32
  ret i32 %59
}

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
