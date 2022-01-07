; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ssv_dnp.c_dnp_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ssv_dnp.c_dnp_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.comedi_device = type { %struct.comedi_subdevice*, i32, i32 }
%struct.comedi_subdevice = type { i32, i32, i32, i32, i32, i32*, i32 }
%struct.comedi_devconfig = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"comedi%d: dnp: \00", align 1
@thisboard = common dso_local global %struct.TYPE_2__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@COMEDI_SUBD_DIO = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@SDF_WRITABLE = common dso_local global i32 0, align 4
@range_digital = common dso_local global i32 0, align 4
@dnp_dio_insn_bits = common dso_local global i32 0, align 4
@dnp_dio_insn_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"attached\0A\00", align 1
@PAMR = common dso_local global i32 0, align 4
@CSCIR = common dso_local global i32 0, align 4
@CSCDR = common dso_local global i32 0, align 4
@PBMR = common dso_local global i32 0, align 4
@PCMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @dnp_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dnp_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @thisboard, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %17 = call i64 @alloc_private(%struct.comedi_device* %16, i32 4)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %73

22:                                               ; preds = %2
  %23 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %24 = call i64 @alloc_subdevices(%struct.comedi_device* %23, i32 1)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %73

29:                                               ; preds = %22
  %30 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 0
  %32 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %31, align 8
  %33 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %32, i64 0
  store %struct.comedi_subdevice* %33, %struct.comedi_subdevice** %6, align 8
  %34 = load i32, i32* @COMEDI_SUBD_DIO, align 4
  %35 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %36 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @SDF_READABLE, align 4
  %38 = load i32, i32* @SDF_WRITABLE, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %41 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %43 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %42, i32 0, i32 1
  store i32 20, i32* %43, align 4
  %44 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %45 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %44, i32 0, i32 2
  store i32 1, i32* %45, align 8
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %47 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %46, i32 0, i32 5
  store i32* @range_digital, i32** %47, align 8
  %48 = load i32, i32* @dnp_dio_insn_bits, align 4
  %49 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %50 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @dnp_dio_insn_config, align 4
  %52 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %53 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @PAMR, align 4
  %56 = load i32, i32* @CSCIR, align 4
  %57 = call i32 @outb(i32 %55, i32 %56)
  %58 = load i32, i32* @CSCDR, align 4
  %59 = call i32 @outb(i32 0, i32 %58)
  %60 = load i32, i32* @PBMR, align 4
  %61 = load i32, i32* @CSCIR, align 4
  %62 = call i32 @outb(i32 %60, i32 %61)
  %63 = load i32, i32* @CSCDR, align 4
  %64 = call i32 @outb(i32 0, i32 %63)
  %65 = load i32, i32* @PCMR, align 4
  %66 = load i32, i32* @CSCIR, align 4
  %67 = call i32 @outb(i32 %65, i32 %66)
  %68 = load i32, i32* @CSCDR, align 4
  %69 = call i32 @inb(i32 %68)
  %70 = and i32 %69, 170
  %71 = load i32, i32* @CSCDR, align 4
  %72 = call i32 @outb(i32 %70, i32 %71)
  store i32 1, i32* %3, align 4
  br label %73

73:                                               ; preds = %29, %26, %19
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i64 @alloc_private(%struct.comedi_device*, i32) #1

declare dso_local i64 @alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
