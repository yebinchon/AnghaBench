; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/kcomedilib/extr_get.c_comedi_get_krange.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/kcomedilib/extr_get.c_comedi_get_krange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_krange = type { i32 }
%struct.comedi_device = type { %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.comedi_lrange*, %struct.comedi_lrange** }
%struct.comedi_lrange = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comedi_get_krange(i8* %0, i32 %1, i32 %2, i32 %3, %struct.comedi_krange* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.comedi_krange*, align 8
  %12 = alloca %struct.comedi_device*, align 8
  %13 = alloca %struct.comedi_subdevice*, align 8
  %14 = alloca %struct.comedi_lrange*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.comedi_krange* %4, %struct.comedi_krange** %11, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.comedi_device*
  store %struct.comedi_device* %16, %struct.comedi_device** %12, align 8
  %17 = load %struct.comedi_device*, %struct.comedi_device** %12, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 0
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %19, i64 %21
  store %struct.comedi_subdevice* %22, %struct.comedi_subdevice** %13, align 8
  %23 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %13, align 8
  %24 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %23, i32 0, i32 1
  %25 = load %struct.comedi_lrange**, %struct.comedi_lrange*** %24, align 8
  %26 = icmp ne %struct.comedi_lrange** %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %5
  %28 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %13, align 8
  %29 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %28, i32 0, i32 1
  %30 = load %struct.comedi_lrange**, %struct.comedi_lrange*** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.comedi_lrange*, %struct.comedi_lrange** %30, i64 %32
  %34 = load %struct.comedi_lrange*, %struct.comedi_lrange** %33, align 8
  store %struct.comedi_lrange* %34, %struct.comedi_lrange** %14, align 8
  br label %39

35:                                               ; preds = %5
  %36 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %13, align 8
  %37 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %36, i32 0, i32 0
  %38 = load %struct.comedi_lrange*, %struct.comedi_lrange** %37, align 8
  store %struct.comedi_lrange* %38, %struct.comedi_lrange** %14, align 8
  br label %39

39:                                               ; preds = %35, %27
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.comedi_lrange*, %struct.comedi_lrange** %14, align 8
  %42 = getelementptr inbounds %struct.comedi_lrange, %struct.comedi_lrange* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp uge i32 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %57

48:                                               ; preds = %39
  %49 = load %struct.comedi_krange*, %struct.comedi_krange** %11, align 8
  %50 = load %struct.comedi_lrange*, %struct.comedi_lrange** %14, align 8
  %51 = getelementptr inbounds %struct.comedi_lrange, %struct.comedi_lrange* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = zext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = call i32 @memcpy(%struct.comedi_krange* %49, i64 %55, i32 4)
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %48, %45
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @memcpy(%struct.comedi_krange*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
