; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_find_flow_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_find_flow_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sep_flow_context_t = type { i64 }
%struct.sep_device = type { %struct.sep_flow_context_t* }

@SEP_DRIVER_NUM_FLOWS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sep_flow_context_t* (%struct.sep_device*, i64)* @sep_find_flow_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sep_flow_context_t* @sep_find_flow_context(%struct.sep_device* %0, i64 %1) #0 {
  %3 = alloca %struct.sep_flow_context_t*, align 8
  %4 = alloca %struct.sep_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.sep_device* %0, %struct.sep_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %30, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @SEP_DRIVER_NUM_FLOWS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %33

11:                                               ; preds = %7
  %12 = load %struct.sep_device*, %struct.sep_device** %4, align 8
  %13 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %12, i32 0, i32 0
  %14 = load %struct.sep_flow_context_t*, %struct.sep_flow_context_t** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.sep_flow_context_t, %struct.sep_flow_context_t* %14, i64 %16
  %18 = getelementptr inbounds %struct.sep_flow_context_t, %struct.sep_flow_context_t* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %11
  %23 = load %struct.sep_device*, %struct.sep_device** %4, align 8
  %24 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %23, i32 0, i32 0
  %25 = load %struct.sep_flow_context_t*, %struct.sep_flow_context_t** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.sep_flow_context_t, %struct.sep_flow_context_t* %25, i64 %27
  store %struct.sep_flow_context_t* %28, %struct.sep_flow_context_t** %3, align 8
  br label %34

29:                                               ; preds = %11
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %7

33:                                               ; preds = %7
  store %struct.sep_flow_context_t* null, %struct.sep_flow_context_t** %3, align 8
  br label %34

34:                                               ; preds = %33, %22
  %35 = load %struct.sep_flow_context_t*, %struct.sep_flow_context_t** %3, align 8
  ret %struct.sep_flow_context_t* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
