; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa25x_udc.c_pullup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa25x_udc.c_pullup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa25x_udc = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__, i32, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"inactive\00", align 1
@USB_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"disconnect %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"(no driver)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa25x_udc*)* @pullup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pullup(%struct.pxa25x_udc* %0) #0 {
  %2 = alloca %struct.pxa25x_udc*, align 8
  %3 = alloca i32, align 4
  store %struct.pxa25x_udc* %0, %struct.pxa25x_udc** %2, align 8
  %4 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %5 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %4, i32 0, i32 6
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %10 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %15 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %13, %8, %1
  %20 = phi i1 [ false, %8 ], [ false, %1 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %26 = call i32 @DMSG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %19
  %30 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %31 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %29
  %35 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %36 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %38 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @clk_enable(i32 %39)
  %41 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %42 = call i32 @udc_enable(%struct.pxa25x_udc* %41)
  br label %43

43:                                               ; preds = %34, %29
  br label %87

44:                                               ; preds = %19
  %45 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %46 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %86

49:                                               ; preds = %44
  %50 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %51 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %77

56:                                               ; preds = %49
  %57 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %58 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %57, i32 0, i32 2
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = icmp ne %struct.TYPE_6__* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %63 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %62, i32 0, i32 2
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  br label %69

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %68, %61
  %70 = phi i8* [ %67, %61 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), %68 ]
  %71 = call i32 @DMSG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %70)
  %72 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %73 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %74 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %73, i32 0, i32 2
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = call i32 @stop_activity(%struct.pxa25x_udc* %72, %struct.TYPE_6__* %75)
  br label %77

77:                                               ; preds = %69, %49
  %78 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %79 = call i32 @udc_disable(%struct.pxa25x_udc* %78)
  %80 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %81 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @clk_disable(i32 %82)
  %84 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %85 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  br label %86

86:                                               ; preds = %77, %44
  br label %87

87:                                               ; preds = %86, %43
  ret i32 0
}

declare dso_local i32 @DMSG(i8*, i8*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @udc_enable(%struct.pxa25x_udc*) #1

declare dso_local i32 @stop_activity(%struct.pxa25x_udc*, %struct.TYPE_6__*) #1

declare dso_local i32 @udc_disable(%struct.pxa25x_udc*) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
