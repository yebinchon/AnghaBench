; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_setup_screen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_setup_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sisusb_usb_data = type { i32, i64 }

@SISUSB_TYPE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sisusb_usb_data*, i32, i32)* @sisusb_setup_screen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisusb_setup_screen(%struct.sisusb_usb_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sisusb_usb_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sisusb_usb_data* %0, %struct.sisusb_usb_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 640, i32* %11, align 4
  store i32 480, i32* %12, align 4
  store i32 2, i32* %13, align 4
  %14 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %15 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %21 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %10, align 4
  br label %29

23:                                               ; preds = %3
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %13, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load i32, i32* %12, align 4
  %28 = mul nsw i32 %26, %27
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %23, %19
  %30 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @sisusb_clear_vram(%struct.sisusb_usb_data* %30, i64 %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %116, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %116

39:                                               ; preds = %36
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %74, %39
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %77

44:                                               ; preds = %40
  %45 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %46 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %13, align 4
  %50 = mul nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %47, %51
  store i64 %52, i64* %8, align 8
  %53 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %54 = load i32, i32* @SISUSB_TYPE_MEM, align 4
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @sisusb_write_memio_word(%struct.sisusb_usb_data* %53, i32 %54, i64 %55, i32 61696)
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %12, align 4
  %61 = sub nsw i32 %60, 1
  %62 = mul nsw i32 %59, %61
  %63 = load i32, i32* %13, align 4
  %64 = mul nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %8, align 8
  %67 = add nsw i64 %66, %65
  store i64 %67, i64* %8, align 8
  %68 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %69 = load i32, i32* @SISUSB_TYPE_MEM, align 4
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @sisusb_write_memio_word(%struct.sisusb_usb_data* %68, i32 %69, i64 %70, i32 61696)
  %72 = load i32, i32* %7, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %44
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %40

77:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %112, %77
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %115

82:                                               ; preds = %78
  %83 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %84 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %11, align 4
  %88 = mul nsw i32 %86, %87
  %89 = load i32, i32* %13, align 4
  %90 = mul nsw i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %85, %91
  store i64 %92, i64* %8, align 8
  %93 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %94 = load i32, i32* @SISUSB_TYPE_MEM, align 4
  %95 = load i64, i64* %8, align 8
  %96 = call i32 @sisusb_write_memio_word(%struct.sisusb_usb_data* %93, i32 %94, i64 %95, i32 61696)
  %97 = load i32, i32* %7, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %11, align 4
  %100 = sub nsw i32 %99, 1
  %101 = load i32, i32* %13, align 4
  %102 = mul nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = load i64, i64* %8, align 8
  %105 = add nsw i64 %104, %103
  store i64 %105, i64* %8, align 8
  %106 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %107 = load i32, i32* @SISUSB_TYPE_MEM, align 4
  %108 = load i64, i64* %8, align 8
  %109 = call i32 @sisusb_write_memio_word(%struct.sisusb_usb_data* %106, i32 %107, i64 %108, i32 61696)
  %110 = load i32, i32* %7, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %82
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  br label %78

115:                                              ; preds = %78
  br label %116

116:                                              ; preds = %115, %36, %29
  %117 = load i32, i32* %7, align 4
  ret i32 %117
}

declare dso_local i32 @sisusb_clear_vram(%struct.sisusb_usb_data*, i64, i32) #1

declare dso_local i32 @sisusb_write_memio_word(%struct.sisusb_usb_data*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
