; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_lc-dev.c_uwbd_dev_onair.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_lc-dev.c_uwbd_dev_onair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.uwb_beca_e = type { %struct.uwb_dev*, i32, i32* }
%struct.uwb_dev = type { %struct.uwb_beca_e*, i32, i32, i32 }

@UWB_ADDR_STRSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"new device %s: Cannot allocate memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"new device %s: cannot instantiate device\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"uwb device (mac %s dev %s) connected to %s %s\0A\00", align 1
@UWB_NOTIF_ONAIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uwbd_dev_onair(%struct.uwb_rc* %0, %struct.uwb_beca_e* %1) #0 {
  %3 = alloca %struct.uwb_rc*, align 8
  %4 = alloca %struct.uwb_beca_e*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.uwb_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.uwb_rc* %0, %struct.uwb_rc** %3, align 8
  store %struct.uwb_beca_e* %1, %struct.uwb_beca_e** %4, align 8
  %12 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %13 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load i32, i32* @UWB_ADDR_STRSIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32, i32* @UWB_ADDR_STRSIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %22 = trunc i64 %16 to i32
  %23 = load %struct.uwb_beca_e*, %struct.uwb_beca_e** %4, align 8
  %24 = getelementptr inbounds %struct.uwb_beca_e, %struct.uwb_beca_e* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @uwb_mac_addr_print(i8* %18, i32 %22, i32* %25)
  %27 = trunc i64 %20 to i32
  %28 = load %struct.uwb_beca_e*, %struct.uwb_beca_e** %4, align 8
  %29 = getelementptr inbounds %struct.uwb_beca_e, %struct.uwb_beca_e* %28, i32 0, i32 1
  %30 = call i32 @uwb_dev_addr_print(i8* %21, i32 %27, i32* %29)
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.uwb_dev* @kzalloc(i32 24, i32 %31)
  store %struct.uwb_dev* %32, %struct.uwb_dev** %7, align 8
  %33 = load %struct.uwb_dev*, %struct.uwb_dev** %7, align 8
  %34 = icmp eq %struct.uwb_dev* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load %struct.device*, %struct.device** %6, align 8
  %37 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %18)
  store i32 1, i32* %11, align 4
  br label %99

38:                                               ; preds = %2
  %39 = load %struct.uwb_dev*, %struct.uwb_dev** %7, align 8
  %40 = call i32 @uwb_dev_init(%struct.uwb_dev* %39)
  %41 = load %struct.uwb_beca_e*, %struct.uwb_beca_e** %4, align 8
  %42 = getelementptr inbounds %struct.uwb_beca_e, %struct.uwb_beca_e* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.uwb_dev*, %struct.uwb_dev** %7, align 8
  %46 = getelementptr inbounds %struct.uwb_dev, %struct.uwb_dev* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load %struct.uwb_beca_e*, %struct.uwb_beca_e** %4, align 8
  %48 = getelementptr inbounds %struct.uwb_beca_e, %struct.uwb_beca_e* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.uwb_dev*, %struct.uwb_dev** %7, align 8
  %51 = getelementptr inbounds %struct.uwb_dev, %struct.uwb_dev* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.uwb_dev*, %struct.uwb_dev** %7, align 8
  %53 = getelementptr inbounds %struct.uwb_dev, %struct.uwb_dev* %52, i32 0, i32 1
  %54 = call i32 @dev_set_name(i32* %53, i8* %18)
  %55 = load %struct.uwb_dev*, %struct.uwb_dev** %7, align 8
  %56 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %57 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %60 = call i32 @uwb_dev_add(%struct.uwb_dev* %55, %struct.device* %58, %struct.uwb_rc* %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %38
  %64 = load %struct.device*, %struct.device** %6, align 8
  %65 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  br label %96

66:                                               ; preds = %38
  %67 = load %struct.uwb_dev*, %struct.uwb_dev** %7, align 8
  %68 = load %struct.uwb_beca_e*, %struct.uwb_beca_e** %4, align 8
  %69 = getelementptr inbounds %struct.uwb_beca_e, %struct.uwb_beca_e* %68, i32 0, i32 0
  store %struct.uwb_dev* %67, %struct.uwb_dev** %69, align 8
  %70 = load %struct.uwb_beca_e*, %struct.uwb_beca_e** %4, align 8
  %71 = load %struct.uwb_dev*, %struct.uwb_dev** %7, align 8
  %72 = getelementptr inbounds %struct.uwb_dev, %struct.uwb_dev* %71, i32 0, i32 0
  store %struct.uwb_beca_e* %70, %struct.uwb_beca_e** %72, align 8
  %73 = load %struct.uwb_beca_e*, %struct.uwb_beca_e** %4, align 8
  %74 = call i32 @uwb_bce_get(%struct.uwb_beca_e* %73)
  %75 = load %struct.device*, %struct.device** %6, align 8
  %76 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %77 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.device, %struct.device* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %86 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.device, %struct.device* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = call i32 @dev_name(%struct.TYPE_6__* %89)
  %91 = call i32 @dev_info(%struct.device* %75, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %18, i8* %21, i32 %84, i32 %90)
  %92 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %93 = load %struct.uwb_dev*, %struct.uwb_dev** %7, align 8
  %94 = load i32, i32* @UWB_NOTIF_ONAIR, align 4
  %95 = call i32 @uwb_notify(%struct.uwb_rc* %92, %struct.uwb_dev* %93, i32 %94)
  store i32 1, i32* %11, align 4
  br label %99

96:                                               ; preds = %63
  %97 = load %struct.uwb_dev*, %struct.uwb_dev** %7, align 8
  %98 = call i32 @kfree(%struct.uwb_dev* %97)
  store i32 1, i32* %11, align 4
  br label %99

99:                                               ; preds = %96, %66, %35
  %100 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %100)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @uwb_mac_addr_print(i8*, i32, i32*) #2

declare dso_local i32 @uwb_dev_addr_print(i8*, i32, i32*) #2

declare dso_local %struct.uwb_dev* @kzalloc(i32, i32) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*) #2

declare dso_local i32 @uwb_dev_init(%struct.uwb_dev*) #2

declare dso_local i32 @dev_set_name(i32*, i8*) #2

declare dso_local i32 @uwb_dev_add(%struct.uwb_dev*, %struct.device*, %struct.uwb_rc*) #2

declare dso_local i32 @uwb_bce_get(%struct.uwb_beca_e*) #2

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*, i8*, i32, i32) #2

declare dso_local i32 @dev_name(%struct.TYPE_6__*) #2

declare dso_local i32 @uwb_notify(%struct.uwb_rc*, %struct.uwb_dev*, i32) #2

declare dso_local i32 @kfree(%struct.uwb_dev*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
