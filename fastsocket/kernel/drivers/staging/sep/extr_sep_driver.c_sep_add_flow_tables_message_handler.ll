; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_add_flow_tables_message_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_add_flow_tables_message_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sep_device = type { i32 }
%struct.sep_driver_add_message_t = type { i32, i64, i32 }
%struct.sep_flow_context_t = type { i32, %struct.sep_driver_add_message_t* }

@.str = private unnamed_addr constant [64 x i8] c"SEP Driver:--------> sep_add_flow_tables_message_handler start\0A\00", align 1
@SEP_MAX_ADD_MESSAGE_LENGTH_IN_BYTES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"SEP Driver:<-------- sep_add_flow_tables_message_handler end\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sep_device*, i64)* @sep_add_flow_tables_message_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sep_add_flow_tables_message_handler(%struct.sep_device* %0, i64 %1) #0 {
  %3 = alloca %struct.sep_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sep_driver_add_message_t, align 8
  %7 = alloca %struct.sep_flow_context_t*, align 8
  store %struct.sep_device* %0, %struct.sep_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = call i32 @dbg(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %9 = load i64, i64* %4, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = call i32 @copy_from_user(%struct.sep_driver_add_message_t* %6, i8* %10, i32 24)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %45

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.sep_driver_add_message_t, %struct.sep_driver_add_message_t* %6, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SEP_MAX_ADD_MESSAGE_LENGTH_IN_BYTES, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %45

23:                                               ; preds = %15
  %24 = load %struct.sep_device*, %struct.sep_device** %3, align 8
  %25 = getelementptr inbounds %struct.sep_driver_add_message_t, %struct.sep_driver_add_message_t* %6, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.sep_flow_context_t* @sep_find_flow_context(%struct.sep_device* %24, i32 %26)
  store %struct.sep_flow_context_t* %27, %struct.sep_flow_context_t** %7, align 8
  %28 = load %struct.sep_flow_context_t*, %struct.sep_flow_context_t** %7, align 8
  %29 = icmp eq %struct.sep_flow_context_t* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %45

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.sep_driver_add_message_t, %struct.sep_driver_add_message_t* %6, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.sep_flow_context_t*, %struct.sep_flow_context_t** %7, align 8
  %35 = getelementptr inbounds %struct.sep_flow_context_t, %struct.sep_flow_context_t* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.sep_flow_context_t*, %struct.sep_flow_context_t** %7, align 8
  %37 = getelementptr inbounds %struct.sep_flow_context_t, %struct.sep_flow_context_t* %36, i32 0, i32 1
  %38 = load %struct.sep_driver_add_message_t*, %struct.sep_driver_add_message_t** %37, align 8
  %39 = getelementptr inbounds %struct.sep_driver_add_message_t, %struct.sep_driver_add_message_t* %6, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = getelementptr inbounds %struct.sep_driver_add_message_t, %struct.sep_driver_add_message_t* %6, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @copy_from_user(%struct.sep_driver_add_message_t* %38, i8* %41, i32 %43)
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %31, %30, %20, %14
  %46 = call i32 @dbg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @copy_from_user(%struct.sep_driver_add_message_t*, i8*, i32) #1

declare dso_local %struct.sep_flow_context_t* @sep_find_flow_context(%struct.sep_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
