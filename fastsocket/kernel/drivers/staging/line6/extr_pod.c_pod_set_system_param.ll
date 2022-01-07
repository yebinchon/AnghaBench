; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_pod.c_pod_set_system_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_pod.c_pod_set_system_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_line6_pod = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@pod_set_system_param.size = internal constant i32 5, align 4
@POD_tuner = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@POD_SYSEX_SYSTEM = common dso_local global i32 0, align 4
@SYSEX_DATA_OFS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_line6_pod*, i8*, i32, i32, i16, i32)* @pod_set_system_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pod_set_system_param(%struct.usb_line6_pod* %0, i8* %1, i32 %2, i32 %3, i16 zeroext %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_line6_pod*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i16, align 2
  store %struct.usb_line6_pod* %0, %struct.usb_line6_pod** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i16 %4, i16* %12, align 2
  store i32 %5, i32* %13, align 4
  %16 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %8, align 8
  %17 = getelementptr inbounds %struct.usb_line6_pod, %struct.usb_line6_pod* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @POD_tuner, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 64
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %6
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %93

31:                                               ; preds = %25, %6
  %32 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %8, align 8
  %33 = load i32, i32* @POD_SYSEX_SYSTEM, align 4
  %34 = call i8* @pod_alloc_sysex_buffer(%struct.usb_line6_pod* %32, i32 %33, i32 5)
  store i8* %34, i8** %14, align 8
  %35 = load i8*, i8** %14, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  br label %93

38:                                               ; preds = %31
  %39 = load i8*, i8** %9, align 8
  %40 = call zeroext i16 @simple_strtoul(i8* %39, i32* null, i32 10)
  %41 = zext i16 %40 to i32
  %42 = load i16, i16* %12, align 2
  %43 = zext i16 %42 to i32
  %44 = and i32 %41, %43
  %45 = trunc i32 %44 to i16
  store i16 %45, i16* %15, align 2
  %46 = load i32, i32* %11, align 4
  %47 = trunc i32 %46 to i8
  %48 = load i8*, i8** %14, align 8
  %49 = load i64, i64* @SYSEX_DATA_OFS, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8 %47, i8* %50, align 1
  %51 = load i16, i16* %15, align 2
  %52 = zext i16 %51 to i32
  %53 = ashr i32 %52, 12
  %54 = and i32 %53, 15
  %55 = trunc i32 %54 to i8
  %56 = load i8*, i8** %14, align 8
  %57 = load i64, i64* @SYSEX_DATA_OFS, align 8
  %58 = add i64 %57, 1
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  store i8 %55, i8* %59, align 1
  %60 = load i16, i16* %15, align 2
  %61 = zext i16 %60 to i32
  %62 = ashr i32 %61, 8
  %63 = and i32 %62, 15
  %64 = trunc i32 %63 to i8
  %65 = load i8*, i8** %14, align 8
  %66 = load i64, i64* @SYSEX_DATA_OFS, align 8
  %67 = add i64 %66, 2
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  store i8 %64, i8* %68, align 1
  %69 = load i16, i16* %15, align 2
  %70 = zext i16 %69 to i32
  %71 = ashr i32 %70, 4
  %72 = and i32 %71, 15
  %73 = trunc i32 %72 to i8
  %74 = load i8*, i8** %14, align 8
  %75 = load i64, i64* @SYSEX_DATA_OFS, align 8
  %76 = add i64 %75, 3
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  store i8 %73, i8* %77, align 1
  %78 = load i16, i16* %15, align 2
  %79 = zext i16 %78 to i32
  %80 = and i32 %79, 15
  %81 = trunc i32 %80 to i8
  %82 = load i8*, i8** %14, align 8
  %83 = load i64, i64* @SYSEX_DATA_OFS, align 8
  %84 = add i64 %83, 4
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  store i8 %81, i8* %85, align 1
  %86 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %8, align 8
  %87 = getelementptr inbounds %struct.usb_line6_pod, %struct.usb_line6_pod* %86, i32 0, i32 0
  %88 = load i8*, i8** %14, align 8
  %89 = call i32 @line6_send_sysex_message(i32* %87, i8* %88, i32 5)
  %90 = load i8*, i8** %14, align 8
  %91 = call i32 @kfree(i8* %90)
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %38, %37, %28
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local i8* @pod_alloc_sysex_buffer(%struct.usb_line6_pod*, i32, i32) #1

declare dso_local zeroext i16 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @line6_send_sysex_message(i32*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
