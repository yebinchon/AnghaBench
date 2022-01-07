; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_clear_vram.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_clear_vram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sisusb_usb_data = type { i64, i64, i32, i32* }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sisusb_usb_data*, i64, i32)* @sisusb_clear_vram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisusb_clear_vram(%struct.sisusb_usb_data* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sisusb_usb_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sisusb_usb_data* %0, %struct.sisusb_usb_data** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %13 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %84

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %20 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %23 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = icmp sge i64 %18, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  store i32 1, i32* %4, align 4
  br label %84

28:                                               ; preds = %17
  %29 = load i64, i64* %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %34 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %37 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = icmp sgt i64 %32, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %28
  %42 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %43 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %46 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = load i64, i64* %6, align 8
  %50 = sub nsw i64 %48, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %41, %28
  %53 = load i32, i32* %7, align 4
  %54 = icmp sle i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %84

56:                                               ; preds = %52
  %57 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %58 = call i32 @sisusb_alloc_outbuf(%struct.sisusb_usb_data* %57)
  store i32 %58, i32* %9, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* @EBUSY, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %84

63:                                               ; preds = %56
  %64 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %65 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %72 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @memset(i32 %70, i32 0, i32 %73)
  %75 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %76 = load i64, i64* %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @sisusb_write_mem_bulk(%struct.sisusb_usb_data* %75, i64 %76, i32* null, i32 %77, i32* null, i32 %78, i32* %10)
  store i32 %79, i32* %8, align 4
  %80 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @sisusb_free_outbuf(%struct.sisusb_usb_data* %80, i32 %81)
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %63, %60, %55, %27, %16
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @sisusb_alloc_outbuf(%struct.sisusb_usb_data*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @sisusb_write_mem_bulk(%struct.sisusb_usb_data*, i64, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @sisusb_free_outbuf(%struct.sisusb_usb_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
