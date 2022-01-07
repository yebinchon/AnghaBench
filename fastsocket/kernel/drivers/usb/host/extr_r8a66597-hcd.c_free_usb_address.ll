; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_free_usb_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_free_usb_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.r8a66597_device* }
%struct.r8a66597_device = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"free_addr: addr=%d\00", align 1
@USB_STATE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8a66597*, %struct.r8a66597_device*)* @free_usb_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_usb_address(%struct.r8a66597* %0, %struct.r8a66597_device* %1) #0 {
  %3 = alloca %struct.r8a66597*, align 8
  %4 = alloca %struct.r8a66597_device*, align 8
  %5 = alloca i32, align 4
  store %struct.r8a66597* %0, %struct.r8a66597** %3, align 8
  store %struct.r8a66597_device* %1, %struct.r8a66597_device** %4, align 8
  %6 = load %struct.r8a66597_device*, %struct.r8a66597_device** %4, align 8
  %7 = icmp ne %struct.r8a66597_device* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %67

9:                                                ; preds = %2
  %10 = load %struct.r8a66597_device*, %struct.r8a66597_device** %4, align 8
  %11 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @USB_STATE_DEFAULT, align 4
  %15 = load %struct.r8a66597_device*, %struct.r8a66597_device** %4, align 8
  %16 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 8
  %17 = load %struct.r8a66597_device*, %struct.r8a66597_device** %4, align 8
  %18 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = shl i32 1, %19
  %21 = xor i32 %20, -1
  %22 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %23 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.r8a66597_device*, %struct.r8a66597_device** %4, align 8
  %27 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.r8a66597_device*, %struct.r8a66597_device** %4, align 8
  %29 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i32 @dev_set_drvdata(i32* %31, i32* null)
  %33 = load %struct.r8a66597_device*, %struct.r8a66597_device** %4, align 8
  %34 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %33, i32 0, i32 1
  %35 = call i32 @list_del(i32* %34)
  %36 = load %struct.r8a66597_device*, %struct.r8a66597_device** %4, align 8
  %37 = call i32 @kfree(%struct.r8a66597_device* %36)
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %64, %9
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %41 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %67

44:                                               ; preds = %38
  %45 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %46 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.r8a66597_device*, %struct.r8a66597_device** %51, align 8
  %53 = load %struct.r8a66597_device*, %struct.r8a66597_device** %4, align 8
  %54 = icmp eq %struct.r8a66597_device* %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %44
  %56 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %57 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store %struct.r8a66597_device* null, %struct.r8a66597_device** %62, align 8
  br label %67

63:                                               ; preds = %44
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %38

67:                                               ; preds = %8, %55, %38
  ret void
}

declare dso_local i32 @dbg(i8*, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.r8a66597_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
