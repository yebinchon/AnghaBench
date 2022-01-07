; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcd_mipid.c_mipid_transfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcd_mipid.c_mipid_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipid_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i32*, i32, i32, i32* }

@.str = private unnamed_addr constant [13 x i8] c"spi_sync %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mipid_device*, i32, i32*, i32, i32*, i32)* @mipid_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mipid_transfer(%struct.mipid_device* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.mipid_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.spi_message, align 4
  %14 = alloca %struct.spi_transfer*, align 8
  %15 = alloca [4 x %struct.spi_transfer], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mipid_device* %0, %struct.mipid_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %18 = load %struct.mipid_device*, %struct.mipid_device** %7, align 8
  %19 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp eq %struct.TYPE_2__* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = call i32 @spi_message_init(%struct.spi_message* %13)
  %25 = getelementptr inbounds [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %15, i64 0, i64 0
  %26 = call i32 @memset(%struct.spi_transfer* %25, i32 0, i32 96)
  %27 = getelementptr inbounds [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %15, i64 0, i64 0
  store %struct.spi_transfer* %27, %struct.spi_transfer** %14, align 8
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, 255
  store i32 %29, i32* %8, align 4
  %30 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %31 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %30, i32 0, i32 0
  store i32* %8, i32** %31, align 8
  %32 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %33 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %32, i32 0, i32 1
  store i32 9, i32* %33, align 8
  %34 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %35 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %34, i32 0, i32 2
  store i32 2, i32* %35, align 4
  %36 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %37 = call i32 @spi_message_add_tail(%struct.spi_transfer* %36, %struct.spi_message* %13)
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %6
  %41 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %42 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %41, i32 1
  store %struct.spi_transfer* %42, %struct.spi_transfer** %14, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %45 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %44, i32 0, i32 0
  store i32* %43, i32** %45, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %48 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %50 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %49, i32 0, i32 1
  store i32 9, i32* %50, align 8
  %51 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %52 = call i32 @spi_message_add_tail(%struct.spi_transfer* %51, %struct.spi_message* %13)
  br label %53

53:                                               ; preds = %40, %6
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %85

56:                                               ; preds = %53
  %57 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %58 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %57, i32 1
  store %struct.spi_transfer* %58, %struct.spi_transfer** %14, align 8
  %59 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %60 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %59, i32 0, i32 3
  store i32* %16, i32** %60, align 8
  %61 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %62 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %61, i32 0, i32 2
  store i32 1, i32* %62, align 4
  %63 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %64 = call i32 @spi_message_add_tail(%struct.spi_transfer* %63, %struct.spi_message* %13)
  %65 = load i32, i32* %12, align 4
  %66 = icmp sgt i32 %65, 1
  br i1 %66, label %67, label %84

67:                                               ; preds = %56
  %68 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %69 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %68, i32 0, i32 1
  store i32 9, i32* %69, align 8
  %70 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %71 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %70, i32 0, i32 2
  store i32 2, i32* %71, align 4
  %72 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %73 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %72, i32 1
  store %struct.spi_transfer* %73, %struct.spi_transfer** %14, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %77 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %76, i32 0, i32 3
  store i32* %75, i32** %77, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sub nsw i32 %78, 1
  %80 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %81 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %83 = call i32 @spi_message_add_tail(%struct.spi_transfer* %82, %struct.spi_message* %13)
  br label %84

84:                                               ; preds = %67, %56
  br label %85

85:                                               ; preds = %84, %53
  %86 = load %struct.mipid_device*, %struct.mipid_device** %7, align 8
  %87 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = call i32 @spi_sync(%struct.TYPE_2__* %88, %struct.spi_message* %13)
  store i32 %89, i32* %17, align 4
  %90 = load i32, i32* %17, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %85
  %93 = load %struct.mipid_device*, %struct.mipid_device** %7, align 8
  %94 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %17, align 4
  %98 = call i32 @dev_dbg(i32* %96, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %92, %85
  %100 = load i32, i32* %12, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load i32, i32* %16, align 4
  %104 = and i32 %103, 255
  %105 = load i32*, i32** %11, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %102, %99
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(%struct.TYPE_2__*, %struct.spi_message*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
