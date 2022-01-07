; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_eem.c_eem_set_alt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_eem.c_eem_set_alt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { i32 }
%struct.f_eem = type { i32, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, i32, i8*, i8*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"reset eem\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"init eem\0A\00", align 1
@DEFAULT_FILTER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"activate eem\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_function*, i32, i32)* @eem_set_alt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eem_set_alt(%struct.usb_function* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_function*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.f_eem*, align 8
  %9 = alloca %struct.usb_composite_dev*, align 8
  %10 = alloca %struct.net_device*, align 8
  store %struct.usb_function* %0, %struct.usb_function** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %12 = call %struct.f_eem* @func_to_eem(%struct.usb_function* %11)
  store %struct.f_eem* %12, %struct.f_eem** %8, align 8
  %13 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %14 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %16, align 8
  store %struct.usb_composite_dev* %17, %struct.usb_composite_dev** %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %102

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.f_eem*, %struct.f_eem** %8, align 8
  %24 = getelementptr inbounds %struct.f_eem, %struct.f_eem* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %100

27:                                               ; preds = %21
  %28 = load %struct.f_eem*, %struct.f_eem** %8, align 8
  %29 = getelementptr inbounds %struct.f_eem, %struct.f_eem* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %37 = call i32 @DBG(%struct.usb_composite_dev* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.f_eem*, %struct.f_eem** %8, align 8
  %39 = getelementptr inbounds %struct.f_eem, %struct.f_eem* %38, i32 0, i32 1
  %40 = call i32 @gether_disconnect(%struct.TYPE_11__* %39)
  br label %41

41:                                               ; preds = %35, %27
  %42 = load %struct.f_eem*, %struct.f_eem** %8, align 8
  %43 = getelementptr inbounds %struct.f_eem, %struct.f_eem* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 3
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %80, label %47

47:                                               ; preds = %41
  %48 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %49 = call i32 @DBG(%struct.usb_composite_dev* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %51 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.f_eem*, %struct.f_eem** %8, align 8
  %54 = getelementptr inbounds %struct.f_eem, %struct.f_eem* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.f_eem*, %struct.f_eem** %8, align 8
  %58 = getelementptr inbounds %struct.f_eem, %struct.f_eem* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @ep_choose(i32 %52, i32 %56, i32 %60)
  %62 = load %struct.f_eem*, %struct.f_eem** %8, align 8
  %63 = getelementptr inbounds %struct.f_eem, %struct.f_eem* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 3
  store i8* %61, i8** %64, align 8
  %65 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %66 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.f_eem*, %struct.f_eem** %8, align 8
  %69 = getelementptr inbounds %struct.f_eem, %struct.f_eem* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.f_eem*, %struct.f_eem** %8, align 8
  %73 = getelementptr inbounds %struct.f_eem, %struct.f_eem* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i8* @ep_choose(i32 %67, i32 %71, i32 %75)
  %77 = load %struct.f_eem*, %struct.f_eem** %8, align 8
  %78 = getelementptr inbounds %struct.f_eem, %struct.f_eem* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 2
  store i8* %76, i8** %79, align 8
  br label %80

80:                                               ; preds = %47, %41
  %81 = load %struct.f_eem*, %struct.f_eem** %8, align 8
  %82 = getelementptr inbounds %struct.f_eem, %struct.f_eem* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  store i32 1, i32* %83, align 8
  %84 = load i32, i32* @DEFAULT_FILTER, align 4
  %85 = load %struct.f_eem*, %struct.f_eem** %8, align 8
  %86 = getelementptr inbounds %struct.f_eem, %struct.f_eem* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 4
  %88 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %89 = call i32 @DBG(%struct.usb_composite_dev* %88, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %90 = load %struct.f_eem*, %struct.f_eem** %8, align 8
  %91 = getelementptr inbounds %struct.f_eem, %struct.f_eem* %90, i32 0, i32 1
  %92 = call %struct.net_device* @gether_connect(%struct.TYPE_11__* %91)
  store %struct.net_device* %92, %struct.net_device** %10, align 8
  %93 = load %struct.net_device*, %struct.net_device** %10, align 8
  %94 = call i64 @IS_ERR(%struct.net_device* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %80
  %97 = load %struct.net_device*, %struct.net_device** %10, align 8
  %98 = call i32 @PTR_ERR(%struct.net_device* %97)
  store i32 %98, i32* %4, align 4
  br label %105

99:                                               ; preds = %80
  br label %101

100:                                              ; preds = %21
  br label %102

101:                                              ; preds = %99
  store i32 0, i32* %4, align 4
  br label %105

102:                                              ; preds = %100, %20
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %102, %101, %96
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local %struct.f_eem* @func_to_eem(%struct.usb_function*) #1

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
