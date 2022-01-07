; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_get_ramconfig.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_get_ramconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sisusb_usb_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"SDR SDRAM\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"SDR SGRAM\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"DDR SDRAM\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"DDR SGRAM\00", align 1
@__const.sisusb_get_ramconfig.ramtypetext2 = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0)], align 16
@sisusb_get_ramconfig.busSDR = internal constant [4 x i32] [i32 64, i32 64, i32 128, i32 128], align 16
@sisusb_get_ramconfig.busDDR = internal constant [4 x i32] [i32 32, i32 32, i32 64, i32 64], align 16
@sisusb_get_ramconfig.busDDRA = internal constant [4 x i32] [i32 96, i32 96, i32 192, i32 192], align 16
@SISSR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"1 ch/1 r\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"1 ch/2 r\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"asymmeric\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"2 channel\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"%dMB %s %s, bus width %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sisusb_usb_data*)* @sisusb_get_ramconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sisusb_get_ramconfig(%struct.sisusb_usb_data* %0) #0 {
  %2 = alloca %struct.sisusb_usb_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [4 x i8*], align 16
  store %struct.sisusb_usb_data* %0, %struct.sisusb_usb_data** %2, align 8
  store i32 0, i32* %6, align 4
  store i8* null, i8** %7, align 8
  %9 = bitcast [4 x i8*]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([4 x i8*]* @__const.sisusb_get_ramconfig.ramtypetext2 to i8*), i64 32, i1 false)
  %10 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %11 = load i32, i32* @SISSR, align 4
  %12 = call i32 @sisusb_getidxreg(%struct.sisusb_usb_data* %10, i32 %11, i32 20, i32* %3)
  %13 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %14 = load i32, i32* @SISSR, align 4
  %15 = call i32 @sisusb_getidxreg(%struct.sisusb_usb_data* %13, i32 %14, i32 21, i32* %4)
  %16 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %17 = load i32, i32* @SISSR, align 4
  %18 = call i32 @sisusb_getidxreg(%struct.sisusb_usb_data* %16, i32 %17, i32 58, i32* %5)
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, 240
  %21 = ashr i32 %20, 4
  %22 = shl i32 1, %21
  %23 = mul nsw i32 %22, 1024
  %24 = mul nsw i32 %23, 1024
  %25 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %26 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, 3
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %3, align 4
  %30 = ashr i32 %29, 2
  %31 = and i32 %30, 3
  switch i32 %31, label %78 [
    i32 0, label %32
    i32 1, label %44
    i32 2, label %54
    i32 3, label %68
  ]

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, 16
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 32, i32* %6, align 4
  br label %43

37:                                               ; preds = %32
  %38 = load i32, i32* %3, align 4
  %39 = and i32 %38, 3
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* @sisusb_get_ramconfig.busSDR, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %37, %36
  br label %78

44:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  %45 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %46 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = shl i32 %47, 1
  store i32 %48, i32* %46, align 8
  %49 = load i32, i32* %3, align 4
  %50 = and i32 %49, 3
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* @sisusb_get_ramconfig.busSDR, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %6, align 4
  br label %78

54:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8** %7, align 8
  %55 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %56 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sdiv i32 %57, 2
  %59 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %60 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load i32, i32* %3, align 4
  %64 = and i32 %63, 3
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* @sisusb_get_ramconfig.busDDRA, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %6, align 4
  br label %78

68:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %7, align 8
  %69 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %70 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = shl i32 %71, 1
  store i32 %72, i32* %70, align 8
  %73 = load i32, i32* %3, align 4
  %74 = and i32 %73, 3
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* @sisusb_get_ramconfig.busDDR, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %1, %68, %54, %44, %43
  %79 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %80 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %84 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = ashr i32 %85, 20
  %87 = load i8*, i8** %7, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [4 x i8*], [4 x i8*]* %8, i64 0, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @dev_info(i32* %82, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %86, i8* %87, i8* %91, i32 %92)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @sisusb_getidxreg(%struct.sisusb_usb_data*, i32, i32, i32*) #2

declare dso_local i32 @dev_info(i32*, i8*, i32, i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
