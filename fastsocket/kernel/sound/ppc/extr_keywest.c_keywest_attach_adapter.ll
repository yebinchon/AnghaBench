; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_keywest.c_keywest_attach_adapter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_keywest.c_keywest_attach_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32, i32 }

@keywest_ctx = common dso_local global %struct.TYPE_6__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"mac-io\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"keywest\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @keywest_attach_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keywest_attach_adapter(%struct.i2c_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca %struct.i2c_board_info, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @keywest_ctx, align 8
  %6 = icmp ne %struct.TYPE_6__* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %66

10:                                               ; preds = %1
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @strncmp(i32 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %66

17:                                               ; preds = %10
  %18 = call i32 @memset(%struct.i2c_board_info* %4, i32 0, i32 8)
  %19 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %4, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @I2C_NAME_SIZE, align 4
  %22 = call i32 @strlcpy(i32 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @keywest_ctx, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %4, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %28 = call %struct.TYPE_7__* @i2c_new_device(%struct.i2c_adapter* %27, %struct.i2c_board_info* %4)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @keywest_ctx, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %30, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @keywest_ctx, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = icmp ne %struct.TYPE_7__* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %17
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %66

38:                                               ; preds = %17
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @keywest_ctx, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = icmp ne %struct.TYPE_5__* %43, null
  br i1 %44, label %54, label %45

45:                                               ; preds = %38
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @keywest_ctx, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = call i32 @i2c_unregister_device(%struct.TYPE_7__* %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @keywest_ctx, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %51, align 8
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %66

54:                                               ; preds = %38
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** @keywest_ctx, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** @keywest_ctx, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = call i32 @list_add_tail(i32* %58, i32* %64)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %54, %45, %35, %16, %7
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.i2c_board_info*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local %struct.TYPE_7__* @i2c_new_device(%struct.i2c_adapter*, %struct.i2c_board_info*) #1

declare dso_local i32 @i2c_unregister_device(%struct.TYPE_7__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
