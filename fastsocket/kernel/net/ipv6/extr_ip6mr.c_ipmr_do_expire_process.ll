; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6mr.c_ipmr_do_expire_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6mr.c_ipmr_do_expire_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfc6_cache = type { %struct.mfc6_cache*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@mfc_unres_queue = common dso_local global %struct.mfc6_cache* null, align 8
@ipmr_expire_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ipmr_do_expire_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipmr_do_expire_process(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mfc6_cache*, align 8
  %6 = alloca %struct.mfc6_cache**, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* @jiffies, align 8
  store i64 %8, i64* %3, align 8
  %9 = load i32, i32* @HZ, align 4
  %10 = mul nsw i32 10, %9
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %4, align 8
  store %struct.mfc6_cache** @mfc_unres_queue, %struct.mfc6_cache*** %6, align 8
  br label %12

12:                                               ; preds = %41, %38, %1
  %13 = load %struct.mfc6_cache**, %struct.mfc6_cache*** %6, align 8
  %14 = load %struct.mfc6_cache*, %struct.mfc6_cache** %13, align 8
  store %struct.mfc6_cache* %14, %struct.mfc6_cache** %5, align 8
  %15 = icmp ne %struct.mfc6_cache* %14, null
  br i1 %15, label %16, label %48

16:                                               ; preds = %12
  %17 = load %struct.mfc6_cache*, %struct.mfc6_cache** %5, align 8
  %18 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @time_after(i64 %21, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %16
  %26 = load %struct.mfc6_cache*, %struct.mfc6_cache** %5, align 8
  %27 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %3, align 8
  %32 = sub i64 %30, %31
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %4, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i64, i64* %7, align 8
  store i64 %37, i64* %4, align 8
  br label %38

38:                                               ; preds = %36, %25
  %39 = load %struct.mfc6_cache*, %struct.mfc6_cache** %5, align 8
  %40 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %39, i32 0, i32 0
  store %struct.mfc6_cache** %40, %struct.mfc6_cache*** %6, align 8
  br label %12

41:                                               ; preds = %16
  %42 = load %struct.mfc6_cache*, %struct.mfc6_cache** %5, align 8
  %43 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %42, i32 0, i32 0
  %44 = load %struct.mfc6_cache*, %struct.mfc6_cache** %43, align 8
  %45 = load %struct.mfc6_cache**, %struct.mfc6_cache*** %6, align 8
  store %struct.mfc6_cache* %44, %struct.mfc6_cache** %45, align 8
  %46 = load %struct.mfc6_cache*, %struct.mfc6_cache** %5, align 8
  %47 = call i32 @ip6mr_destroy_unres(%struct.mfc6_cache* %46)
  br label %12

48:                                               ; preds = %12
  %49 = load %struct.mfc6_cache*, %struct.mfc6_cache** @mfc_unres_queue, align 8
  %50 = icmp ne %struct.mfc6_cache* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i64, i64* @jiffies, align 8
  %53 = load i64, i64* %4, align 8
  %54 = add i64 %52, %53
  %55 = call i32 @mod_timer(i32* @ipmr_expire_timer, i64 %54)
  br label %56

56:                                               ; preds = %51, %48
  ret void
}

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @ip6mr_destroy_unres(%struct.mfc6_cache*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
