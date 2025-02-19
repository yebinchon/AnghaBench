; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rfkill/extr_input.c_rfkill_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rfkill/extr_input.c_rfkill_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_handler = type { i32 }
%struct.input_dev = type { i32 }
%struct.input_device_id = type { i32 }
%struct.input_handle = type { i8*, %struct.input_handler*, %struct.input_dev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"rfkill\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_handler*, %struct.input_dev*, %struct.input_device_id*)* @rfkill_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfkill_connect(%struct.input_handler* %0, %struct.input_dev* %1, %struct.input_device_id* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_handler*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca %struct.input_device_id*, align 8
  %8 = alloca %struct.input_handle*, align 8
  %9 = alloca i32, align 4
  store %struct.input_handler* %0, %struct.input_handler** %5, align 8
  store %struct.input_dev* %1, %struct.input_dev** %6, align 8
  store %struct.input_device_id* %2, %struct.input_device_id** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.input_handle* @kzalloc(i32 24, i32 %10)
  store %struct.input_handle* %11, %struct.input_handle** %8, align 8
  %12 = load %struct.input_handle*, %struct.input_handle** %8, align 8
  %13 = icmp ne %struct.input_handle* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %45

17:                                               ; preds = %3
  %18 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %19 = load %struct.input_handle*, %struct.input_handle** %8, align 8
  %20 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %19, i32 0, i32 2
  store %struct.input_dev* %18, %struct.input_dev** %20, align 8
  %21 = load %struct.input_handler*, %struct.input_handler** %5, align 8
  %22 = load %struct.input_handle*, %struct.input_handle** %8, align 8
  %23 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %22, i32 0, i32 1
  store %struct.input_handler* %21, %struct.input_handler** %23, align 8
  %24 = load %struct.input_handle*, %struct.input_handle** %8, align 8
  %25 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %24, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %25, align 8
  %26 = load %struct.input_handle*, %struct.input_handle** %8, align 8
  %27 = call i32 @input_register_handle(%struct.input_handle* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  br label %41

31:                                               ; preds = %17
  %32 = load %struct.input_handle*, %struct.input_handle** %8, align 8
  %33 = call i32 @input_open_device(%struct.input_handle* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %38

37:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %45

38:                                               ; preds = %36
  %39 = load %struct.input_handle*, %struct.input_handle** %8, align 8
  %40 = call i32 @input_unregister_handle(%struct.input_handle* %39)
  br label %41

41:                                               ; preds = %38, %30
  %42 = load %struct.input_handle*, %struct.input_handle** %8, align 8
  %43 = call i32 @kfree(%struct.input_handle* %42)
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %41, %37, %14
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.input_handle* @kzalloc(i32, i32) #1

declare dso_local i32 @input_register_handle(%struct.input_handle*) #1

declare dso_local i32 @input_open_device(%struct.input_handle*) #1

declare dso_local i32 @input_unregister_handle(%struct.input_handle*) #1

declare dso_local i32 @kfree(%struct.input_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
