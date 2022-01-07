; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_usbatm.c_usbatm_extract_cells.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_usbatm.c_usbatm_extract_cells.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbatm_data = type { i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbatm_data*, i8*, i32)* @usbatm_extract_cells to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbatm_extract_cells(%struct.usbatm_data* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.usbatm_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.usbatm_data* %0, %struct.usbatm_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %12 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %16 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ugt i32 %18, 0
  br i1 %19, label %20, label %70

20:                                               ; preds = %3
  %21 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %22 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %9, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = sub i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ule i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @UDSL_ASSERT(%struct.usbatm_data* %27, i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp uge i32 %33, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %20
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* %8, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @memcpy(i8* %40, i8* %41, i32 %42)
  %44 = load i32, i32* %10, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %47, i8** %5, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %6, align 4
  %50 = sub i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @usbatm_extract_one_cell(%struct.usbatm_data* %51, i8* %52)
  %54 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %55 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  br label %69

56:                                               ; preds = %20
  %57 = load i8*, i8** %9, align 8
  %58 = load i32, i32* %8, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8*, i8** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @memcpy(i8* %60, i8* %61, i32 %62)
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %6, align 4
  %66 = add i32 %64, %65
  %67 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %68 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  br label %100

69:                                               ; preds = %36
  br label %70

70:                                               ; preds = %69, %3
  br label %71

71:                                               ; preds = %79, %70
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp uge i32 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 @usbatm_extract_one_cell(%struct.usbatm_data* %76, i8* %77)
  br label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %6, align 4
  %82 = sub i32 %81, %80
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i8*, i8** %5, align 8
  %85 = zext i32 %83 to i64
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8* %86, i8** %5, align 8
  br label %71

87:                                               ; preds = %71
  %88 = load i32, i32* %6, align 4
  %89 = icmp ugt i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %87
  %91 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %92 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = load i8*, i8** %5, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @memcpy(i8* %93, i8* %94, i32 %95)
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %99 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  br label %100

100:                                              ; preds = %56, %90, %87
  ret void
}

declare dso_local i32 @UDSL_ASSERT(%struct.usbatm_data*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @usbatm_extract_one_cell(%struct.usbatm_data*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
