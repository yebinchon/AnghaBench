; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_wusb.c_whc_set_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_wusb.c_whc_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.whc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@WUSBSETSECKEYCMD_SET = common dso_local global i32 0, align 4
@WUSBSETSECKEYCMD_GTK = common dso_local global i32 0, align 4
@WUSBTKID = common dso_local global i64 0, align 8
@WUSBSECKEY = common dso_local global i64 0, align 8
@WUSBSETSECKEYCMD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"set key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.whc*, i32, i32, i8*, i64, i32)* @whc_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @whc_set_key(%struct.whc* %0, i32 %1, i32 %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.whc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.whc* %0, %struct.whc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %18 = load i8*, i8** %10, align 8
  %19 = load i64, i64* %11, align 8
  %20 = call i32 @memcpy(i32* %17, i8* %18, i64 %19)
  %21 = load i32, i32* @WUSBSETSECKEYCMD_SET, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @WUSBSETSECKEYCMD_IDX(i32 %22)
  %24 = or i32 %21, %23
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %6
  %28 = load i32, i32* @WUSBSETSECKEYCMD_GTK, align 4
  %29 = load i32, i32* %13, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %13, align 4
  br label %31

31:                                               ; preds = %27, %6
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.whc*, %struct.whc** %7, align 8
  %34 = getelementptr inbounds %struct.whc, %struct.whc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @WUSBTKID, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @le_writel(i32 %32, i64 %37)
  store i32 0, i32* %15, align 4
  br label %39

39:                                               ; preds = %57, %31
  %40 = load i32, i32* %15, align 4
  %41 = icmp slt i32 %40, 4
  br i1 %41, label %42, label %60

42:                                               ; preds = %39
  %43 = load i32, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.whc*, %struct.whc** %7, align 8
  %48 = getelementptr inbounds %struct.whc, %struct.whc* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @WUSBSECKEY, align 8
  %51 = add nsw i64 %49, %50
  %52 = load i32, i32* %15, align 4
  %53 = mul nsw i32 4, %52
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %51, %54
  %56 = call i32 @le_writel(i32 %46, i64 %55)
  br label %57

57:                                               ; preds = %42
  %58 = load i32, i32* %15, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %15, align 4
  br label %39

60:                                               ; preds = %39
  %61 = load i32, i32* %13, align 4
  %62 = load %struct.whc*, %struct.whc** %7, align 8
  %63 = getelementptr inbounds %struct.whc, %struct.whc* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @WUSBSETSECKEYCMD, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @le_writel(i32 %61, i64 %66)
  %68 = load %struct.whc*, %struct.whc** %7, align 8
  %69 = getelementptr inbounds %struct.whc, %struct.whc* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load %struct.whc*, %struct.whc** %7, align 8
  %73 = getelementptr inbounds %struct.whc, %struct.whc* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @WUSBSETSECKEYCMD, align 8
  %76 = add nsw i64 %74, %75
  %77 = load i32, i32* @WUSBSETSECKEYCMD_SET, align 4
  %78 = call i32 @whci_wait_for(i32* %71, i64 %76, i32 %77, i32 0, i32 100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %16, align 4
  ret i32 %79
}

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @WUSBSETSECKEYCMD_IDX(i32) #1

declare dso_local i32 @le_writel(i32, i64) #1

declare dso_local i32 @whci_wait_for(i32*, i64, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
