; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hcd.c_usb_hcd_request_irqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hcd.c_usb_hcd_request_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i8*, i32, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@IRQF_SHARED = common dso_local global i64 0, align 8
@IRQF_DISABLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s:usb%d\00", align 1
@usb_hcd_irq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"request interrupt %d failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"irq %d, %s 0x%08llx\0A\00", align 1
@HCD_MEMORY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"io mem\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"io base\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"%s 0x%08llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, i32, i64)* @usb_hcd_request_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_hcd_request_irqs(%struct.usb_hcd* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %10 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %79

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @IRQF_SHARED, align 8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i64, i64* @IRQF_DISABLED, align 8
  %22 = xor i64 %21, -1
  %23 = load i64, i64* %7, align 8
  %24 = and i64 %23, %22
  store i64 %24, i64* %7, align 8
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %27 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %30 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %35 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @snprintf(i32 %28, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %33, i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %42 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %45 = call i32 @request_irq(i32 %39, i32* @usb_hcd_irq, i64 %40, i32 %43, %struct.usb_hcd* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %25
  %49 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %50 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %4, align 4
  br label %107

56:                                               ; preds = %25
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %59 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %61 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %66 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %65, i32 0, i32 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @HCD_MEMORY, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %75 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %76 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 (i32, i8*, ...) @dev_info(i32 %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %64, i8* %74, i64 %77)
  br label %106

79:                                               ; preds = %3
  %80 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %81 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %80, i32 0, i32 0
  store i32 -1, i32* %81, align 8
  %82 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %83 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %79
  %87 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %88 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %92 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %91, i32 0, i32 2
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @HCD_MEMORY, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %101 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %102 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call i32 (i32, i8*, ...) @dev_info(i32 %90, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %100, i64 %103)
  br label %105

105:                                              ; preds = %86, %79
  br label %106

106:                                              ; preds = %105, %56
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %106, %48
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @request_irq(i32, i32*, i64, i32, %struct.usb_hcd*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
