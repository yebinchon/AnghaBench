; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_subset.c_geth_set_alt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_subset.c_geth_set_alt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { i32 }
%struct.f_gether = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i8*, i8*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"reset cdc subset\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"init + activate cdc subset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_function*, i32, i32)* @geth_set_alt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geth_set_alt(%struct.usb_function* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.usb_function*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.f_gether*, align 8
  %8 = alloca %struct.usb_composite_dev*, align 8
  %9 = alloca %struct.net_device*, align 8
  store %struct.usb_function* %0, %struct.usb_function** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %11 = call %struct.f_gether* @func_to_geth(%struct.usb_function* %10)
  store %struct.f_gether* %11, %struct.f_gether** %7, align 8
  %12 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %13 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %15, align 8
  store %struct.usb_composite_dev* %16, %struct.usb_composite_dev** %8, align 8
  %17 = load %struct.f_gether*, %struct.f_gether** %7, align 8
  %18 = getelementptr inbounds %struct.f_gether, %struct.f_gether* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %8, align 8
  %26 = call i32 @DBG(%struct.usb_composite_dev* %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.f_gether*, %struct.f_gether** %7, align 8
  %28 = getelementptr inbounds %struct.f_gether, %struct.f_gether* %27, i32 0, i32 0
  %29 = call i32 @gether_disconnect(%struct.TYPE_11__* %28)
  br label %30

30:                                               ; preds = %24, %3
  %31 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %8, align 8
  %32 = call i32 @DBG(%struct.usb_composite_dev* %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %8, align 8
  %34 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.f_gether*, %struct.f_gether** %7, align 8
  %37 = getelementptr inbounds %struct.f_gether, %struct.f_gether* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.f_gether*, %struct.f_gether** %7, align 8
  %41 = getelementptr inbounds %struct.f_gether, %struct.f_gether* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @ep_choose(i32 %35, i32 %39, i32 %43)
  %45 = load %struct.f_gether*, %struct.f_gether** %7, align 8
  %46 = getelementptr inbounds %struct.f_gether, %struct.f_gether* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  store i8* %44, i8** %47, align 8
  %48 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %8, align 8
  %49 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.f_gether*, %struct.f_gether** %7, align 8
  %52 = getelementptr inbounds %struct.f_gether, %struct.f_gether* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.f_gether*, %struct.f_gether** %7, align 8
  %56 = getelementptr inbounds %struct.f_gether, %struct.f_gether* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i8* @ep_choose(i32 %50, i32 %54, i32 %58)
  %60 = load %struct.f_gether*, %struct.f_gether** %7, align 8
  %61 = getelementptr inbounds %struct.f_gether, %struct.f_gether* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  store i8* %59, i8** %62, align 8
  %63 = load %struct.f_gether*, %struct.f_gether** %7, align 8
  %64 = getelementptr inbounds %struct.f_gether, %struct.f_gether* %63, i32 0, i32 0
  %65 = call %struct.net_device* @gether_connect(%struct.TYPE_11__* %64)
  store %struct.net_device* %65, %struct.net_device** %9, align 8
  %66 = load %struct.net_device*, %struct.net_device** %9, align 8
  %67 = call i64 @IS_ERR(%struct.net_device* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %30
  %70 = load %struct.net_device*, %struct.net_device** %9, align 8
  %71 = call i32 @PTR_ERR(%struct.net_device* %70)
  br label %73

72:                                               ; preds = %30
  br label %73

73:                                               ; preds = %72, %69
  %74 = phi i32 [ %71, %69 ], [ 0, %72 ]
  ret i32 %74
}

declare dso_local %struct.f_gether* @func_to_geth(%struct.usb_function*) #1

declare dso_local i32 @DBG(%struct.usb_composite_dev*, i8*) #1

declare dso_local i32 @gether_disconnect(%struct.TYPE_11__*) #1

declare dso_local i8* @ep_choose(i32, i32, i32) #1

declare dso_local %struct.net_device* @gether_connect(%struct.TYPE_11__*) #1

declare dso_local i64 @IS_ERR(%struct.net_device*) #1

declare dso_local i32 @PTR_ERR(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
