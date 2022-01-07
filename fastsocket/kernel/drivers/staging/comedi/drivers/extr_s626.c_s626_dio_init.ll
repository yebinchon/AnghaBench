; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_s626_dio_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_s626_dio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.comedi_device = type { %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { i32 }

@LP_MISC1 = common dso_local global i32 0, align 4
@MISC1_NOEDCAP = common dso_local global i32 0, align 4
@S626_DIO_BANKS = common dso_local global i64 0, align 8
@diopriv = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"s626_dio_init: DIO initialized \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @s626_dio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s626_dio_init(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %5 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %6 = load i32, i32* @LP_MISC1, align 4
  %7 = load i32, i32* @MISC1_NOEDCAP, align 4
  %8 = call i32 @DEBIwrite(%struct.comedi_device* %5, i32 %6, i32 %7)
  store i64 0, i64* %3, align 8
  br label %9

9:                                                ; preds = %40, %1
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @S626_DIO_BANKS, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %43

13:                                               ; preds = %9
  %14 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 0
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %15, align 8
  %17 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %16, i64 2
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %17, i64 %18
  store %struct.comedi_subdevice* %19, %struct.comedi_subdevice** %4, align 8
  %20 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @diopriv, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @DEBIwrite(%struct.comedi_device* %20, i32 %23, i32 0)
  %25 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @diopriv, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @DEBIwrite(%struct.comedi_device* %25, i32 %28, i32 65535)
  %30 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @diopriv, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @DEBIwrite(%struct.comedi_device* %30, i32 %33, i32 0)
  %35 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @diopriv, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @DEBIwrite(%struct.comedi_device* %35, i32 %38, i32 0)
  br label %40

40:                                               ; preds = %13
  %41 = load i64, i64* %3, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %3, align 8
  br label %9

43:                                               ; preds = %9
  %44 = call i32 @DEBUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DEBIwrite(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @DEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
