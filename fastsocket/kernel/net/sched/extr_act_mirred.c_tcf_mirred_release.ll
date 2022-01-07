; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_mirred.c_tcf_mirred_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_mirred.c_tcf_mirred_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_mirred = type { i64, i32, i64, i32, i32 }

@mirred_hash_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_mirred*, i32)* @tcf_mirred_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_mirred_release(%struct.tcf_mirred* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcf_mirred*, align 8
  %5 = alloca i32, align 4
  store %struct.tcf_mirred* %0, %struct.tcf_mirred** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.tcf_mirred*, %struct.tcf_mirred** %4, align 8
  %7 = icmp ne %struct.tcf_mirred* %6, null
  br i1 %7, label %8, label %48

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load %struct.tcf_mirred*, %struct.tcf_mirred** %4, align 8
  %13 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %13, align 4
  br label %16

16:                                               ; preds = %11, %8
  %17 = load %struct.tcf_mirred*, %struct.tcf_mirred** %4, align 8
  %18 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, i64* %18, align 8
  %21 = load %struct.tcf_mirred*, %struct.tcf_mirred** %4, align 8
  %22 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %47, label %25

25:                                               ; preds = %16
  %26 = load %struct.tcf_mirred*, %struct.tcf_mirred** %4, align 8
  %27 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sle i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %25
  %31 = load %struct.tcf_mirred*, %struct.tcf_mirred** %4, align 8
  %32 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %31, i32 0, i32 3
  %33 = call i32 @list_del(i32* %32)
  %34 = load %struct.tcf_mirred*, %struct.tcf_mirred** %4, align 8
  %35 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load %struct.tcf_mirred*, %struct.tcf_mirred** %4, align 8
  %40 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @dev_put(i64 %41)
  br label %43

43:                                               ; preds = %38, %30
  %44 = load %struct.tcf_mirred*, %struct.tcf_mirred** %4, align 8
  %45 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %44, i32 0, i32 1
  %46 = call i32 @tcf_hash_destroy(i32* %45, i32* @mirred_hash_info)
  store i32 1, i32* %3, align 4
  br label %49

47:                                               ; preds = %25, %16
  br label %48

48:                                               ; preds = %47, %2
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %43
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @dev_put(i64) #1

declare dso_local i32 @tcf_hash_destroy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
