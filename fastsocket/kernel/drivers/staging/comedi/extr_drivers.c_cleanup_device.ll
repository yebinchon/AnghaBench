; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_drivers.c_cleanup_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_drivers.c_cleanup_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i32*, i32*, i32*, i32*, i64, i64, i32*, i32*, i64, %struct.comedi_subdevice*, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.comedi_subdevice* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @cleanup_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_device(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %5 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %6 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 11
  %7 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %8 = icmp ne %struct.comedi_subdevice* %7, null
  br i1 %8, label %9, label %50

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %38, %9
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %10
  %17 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 11
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %19, i64 %21
  store %struct.comedi_subdevice* %22, %struct.comedi_subdevice** %4, align 8
  %23 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %24 = call i32 @comedi_free_subdevice_minor(%struct.comedi_subdevice* %23)
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %26 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %25, i32 0, i32 0
  %27 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %26, align 8
  %28 = icmp ne %struct.comedi_subdevice* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %16
  %30 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %31 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %32 = call i32 @comedi_buf_alloc(%struct.comedi_device* %30, %struct.comedi_subdevice* %31, i32 0)
  %33 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %34 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %33, i32 0, i32 0
  %35 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %34, align 8
  %36 = call i32 @kfree(%struct.comedi_subdevice* %35)
  br label %37

37:                                               ; preds = %29, %16
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %10

41:                                               ; preds = %10
  %42 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %43 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %42, i32 0, i32 11
  %44 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %43, align 8
  %45 = call i32 @kfree(%struct.comedi_subdevice* %44)
  %46 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %47 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %46, i32 0, i32 11
  store %struct.comedi_subdevice* null, %struct.comedi_subdevice** %47, align 8
  %48 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %49 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  br label %50

50:                                               ; preds = %41, %1
  %51 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %52 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %51, i32 0, i32 10
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %52, align 8
  %54 = call i32 @kfree(%struct.comedi_subdevice* %53)
  %55 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %56 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %55, i32 0, i32 10
  store %struct.comedi_subdevice* null, %struct.comedi_subdevice** %56, align 8
  %57 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %58 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %57, i32 0, i32 9
  store i64 0, i64* %58, align 8
  %59 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %60 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %59, i32 0, i32 8
  store i32* null, i32** %60, align 8
  %61 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %62 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %61, i32 0, i32 7
  store i32* null, i32** %62, align 8
  %63 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %64 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %63, i32 0, i32 6
  store i64 0, i64* %64, align 8
  %65 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %66 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %65, i32 0, i32 5
  store i64 0, i64* %66, align 8
  %67 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %68 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %67, i32 0, i32 4
  store i32* null, i32** %68, align 8
  %69 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %70 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %69, i32 0, i32 3
  store i32* null, i32** %70, align 8
  %71 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %72 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %71, i32 0, i32 2
  store i32* null, i32** %72, align 8
  %73 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %74 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %73, i32 0, i32 1
  store i32* null, i32** %74, align 8
  %75 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %76 = call i32 @comedi_set_hw_dev(%struct.comedi_device* %75, i32* null)
  ret void
}

declare dso_local i32 @comedi_free_subdevice_minor(%struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_buf_alloc(%struct.comedi_device*, %struct.comedi_subdevice*, i32) #1

declare dso_local i32 @kfree(%struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_set_hw_dev(%struct.comedi_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
