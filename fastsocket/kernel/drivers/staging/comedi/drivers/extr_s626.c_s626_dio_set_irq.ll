; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_s626_dio_set_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_s626_dio_set_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.dio_private = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [63 x i8] c"s626_dio_set_irq: enable interrupt on dio channel %d group %d\0A\00", align 1
@LP_MISC1 = common dso_local global i32 0, align 4
@MISC1_EDCAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32)* @s626_dio_set_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s626_dio_set_irq(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = udiv i32 %8, 16
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %5, align 4
  %12 = mul i32 16, %11
  %13 = sub i32 %10, %12
  %14 = shl i32 1, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = mul i32 16, %16
  %18 = sub i32 %15, %17
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @DEBUG(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %22 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %23 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 2
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.dio_private*
  %32 = getelementptr inbounds %struct.dio_private, %struct.dio_private* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @DEBIread(%struct.comedi_device* %21, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %36 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %37 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 2
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.dio_private*
  %46 = getelementptr inbounds %struct.dio_private, %struct.dio_private* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @DEBIwrite(%struct.comedi_device* %35, i32 %47, i32 %50)
  %52 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %53 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %54 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 2
  %57 = load i32, i32* %5, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.dio_private*
  %63 = getelementptr inbounds %struct.dio_private, %struct.dio_private* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @DEBIread(%struct.comedi_device* %52, i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %67 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %68 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 2
  %71 = load i32, i32* %5, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to %struct.dio_private*
  %77 = getelementptr inbounds %struct.dio_private, %struct.dio_private* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @DEBIwrite(%struct.comedi_device* %66, i32 %78, i32 %81)
  %83 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %84 = load i32, i32* @LP_MISC1, align 4
  %85 = load i32, i32* @MISC1_EDCAP, align 4
  %86 = call i32 @DEBIwrite(%struct.comedi_device* %83, i32 %84, i32 %85)
  %87 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %88 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %89 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 2
  %92 = load i32, i32* %5, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to %struct.dio_private*
  %98 = getelementptr inbounds %struct.dio_private, %struct.dio_private* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @DEBIread(%struct.comedi_device* %87, i32 %99)
  store i32 %100, i32* %7, align 4
  %101 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %102 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %103 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 2
  %106 = load i32, i32* %5, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = inttoptr i64 %110 to %struct.dio_private*
  %112 = getelementptr inbounds %struct.dio_private, %struct.dio_private* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %7, align 4
  %116 = or i32 %114, %115
  %117 = call i32 @DEBIwrite(%struct.comedi_device* %101, i32 %113, i32 %116)
  ret i32 0
}

declare dso_local i32 @DEBUG(i8*, i32, i32) #1

declare dso_local i32 @DEBIread(%struct.comedi_device*, i32) #1

declare dso_local i32 @DEBIwrite(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
