; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/codecs/extr_onyx.c_onyx_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/codecs/extr_onyx.c_onyx_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.device_node = type { i32 }
%struct.i2c_board_info = type { i32, %struct.device_node*, i32 }
%struct.i2c_client = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"aoa_codec_onyx\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.device_node*, i32)* @onyx_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onyx_create(%struct.i2c_adapter* %0, %struct.device_node* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_board_info, align 8
  %9 = alloca %struct.i2c_client*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = call i32 @memset(%struct.i2c_board_info* %8, i32 0, i32 24)
  %11 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %8, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @I2C_NAME_SIZE, align 4
  %14 = call i32 @strlcpy(i32 %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %8, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = load %struct.device_node*, %struct.device_node** %6, align 8
  %18 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %8, i32 0, i32 1
  store %struct.device_node* %17, %struct.device_node** %18, align 8
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %20 = call %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter* %19, %struct.i2c_board_info* %8)
  store %struct.i2c_client* %20, %struct.i2c_client** %9, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %22 = icmp ne %struct.i2c_client* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %44

26:                                               ; preds = %3
  %27 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = icmp ne %struct.TYPE_2__* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %33 = call i32 @i2c_unregister_device(%struct.i2c_client* %32)
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %44

36:                                               ; preds = %26
  %37 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 1
  %39 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @list_add_tail(i32* %38, i32* %42)
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %36, %31, %23
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @memset(%struct.i2c_board_info*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter*, %struct.i2c_board_info*) #1

declare dso_local i32 @i2c_unregister_device(%struct.i2c_client*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
