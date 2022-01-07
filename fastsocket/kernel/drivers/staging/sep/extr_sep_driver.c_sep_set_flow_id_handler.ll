; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_set_flow_id_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_set_flow_id_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sep_device = type { i32 }
%struct.sep_flow_context_t = type { i64 }

@sep_mutex = common dso_local global i32 0, align 4
@SEP_TEMP_FLOW_ID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sep_device*, i64)* @sep_set_flow_id_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sep_set_flow_id_handler(%struct.sep_device* %0, i64 %1) #0 {
  %3 = alloca %struct.sep_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sep_flow_context_t*, align 8
  store %struct.sep_device* %0, %struct.sep_device** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %7 = call i32 @mutex_lock(i32* @sep_mutex)
  %8 = load %struct.sep_device*, %struct.sep_device** %3, align 8
  %9 = load i32, i32* @SEP_TEMP_FLOW_ID, align 4
  %10 = call %struct.sep_flow_context_t* @sep_find_flow_context(%struct.sep_device* %8, i32 %9)
  store %struct.sep_flow_context_t* %10, %struct.sep_flow_context_t** %6, align 8
  %11 = load %struct.sep_flow_context_t*, %struct.sep_flow_context_t** %6, align 8
  %12 = icmp ne %struct.sep_flow_context_t* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.sep_flow_context_t*, %struct.sep_flow_context_t** %6, align 8
  %16 = getelementptr inbounds %struct.sep_flow_context_t, %struct.sep_flow_context_t* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  br label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %17, %13
  %21 = call i32 @mutex_unlock(i32* @sep_mutex)
  %22 = load i32, i32* %5, align 4
  ret i32 %22
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.sep_flow_context_t* @sep_find_flow_context(%struct.sep_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
