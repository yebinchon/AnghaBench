; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_search_remid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_search_remid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lkb = type { i32 }
%struct.dlm_rsb = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dlm_lkb* (%struct.dlm_rsb*, i32, i32)* @search_remid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dlm_lkb* @search_remid(%struct.dlm_rsb* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dlm_lkb*, align 8
  %5 = alloca %struct.dlm_rsb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dlm_lkb*, align 8
  store %struct.dlm_rsb* %0, %struct.dlm_rsb** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.dlm_rsb*, %struct.dlm_rsb** %5, align 8
  %10 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %9, i32 0, i32 2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.dlm_lkb* @search_remid_list(i32* %10, i32 %11, i32 %12)
  store %struct.dlm_lkb* %13, %struct.dlm_lkb** %8, align 8
  %14 = load %struct.dlm_lkb*, %struct.dlm_lkb** %8, align 8
  %15 = icmp ne %struct.dlm_lkb* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load %struct.dlm_lkb*, %struct.dlm_lkb** %8, align 8
  store %struct.dlm_lkb* %17, %struct.dlm_lkb** %4, align 8
  br label %39

18:                                               ; preds = %3
  %19 = load %struct.dlm_rsb*, %struct.dlm_rsb** %5, align 8
  %20 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %19, i32 0, i32 1
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.dlm_lkb* @search_remid_list(i32* %20, i32 %21, i32 %22)
  store %struct.dlm_lkb* %23, %struct.dlm_lkb** %8, align 8
  %24 = load %struct.dlm_lkb*, %struct.dlm_lkb** %8, align 8
  %25 = icmp ne %struct.dlm_lkb* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load %struct.dlm_lkb*, %struct.dlm_lkb** %8, align 8
  store %struct.dlm_lkb* %27, %struct.dlm_lkb** %4, align 8
  br label %39

28:                                               ; preds = %18
  %29 = load %struct.dlm_rsb*, %struct.dlm_rsb** %5, align 8
  %30 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %29, i32 0, i32 0
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call %struct.dlm_lkb* @search_remid_list(i32* %30, i32 %31, i32 %32)
  store %struct.dlm_lkb* %33, %struct.dlm_lkb** %8, align 8
  %34 = load %struct.dlm_lkb*, %struct.dlm_lkb** %8, align 8
  %35 = icmp ne %struct.dlm_lkb* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load %struct.dlm_lkb*, %struct.dlm_lkb** %8, align 8
  store %struct.dlm_lkb* %37, %struct.dlm_lkb** %4, align 8
  br label %39

38:                                               ; preds = %28
  store %struct.dlm_lkb* null, %struct.dlm_lkb** %4, align 8
  br label %39

39:                                               ; preds = %38, %36, %26, %16
  %40 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  ret %struct.dlm_lkb* %40
}

declare dso_local %struct.dlm_lkb* @search_remid_list(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
