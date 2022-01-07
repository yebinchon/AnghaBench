; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_ds1wm.c_ds1wm_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_ds1wm.c_ds1wm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }
%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mfd_cell* }
%struct.mfd_cell = type { %struct.ds1wm_driver_data* }
%struct.ds1wm_driver_data = type { i32 }
%struct.ds1wm_data = type { i32, i32, i32, i32, %struct.mfd_cell*, %struct.platform_device* }
%struct.resource = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@IORESOURCE_IRQ_HIGHEDGE = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@IORESOURCE_IRQ_LOWEDGE = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@ds1wm_isr = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ds1wm\00", align 1
@ds1wm_master = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ds1wm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1wm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ds1wm_data*, align 8
  %5 = alloca %struct.ds1wm_driver_data*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.mfd_cell*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = icmp ne %struct.platform_device* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %157

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.mfd_cell*, %struct.mfd_cell** %17, align 8
  store %struct.mfd_cell* %18, %struct.mfd_cell** %7, align 8
  %19 = load %struct.mfd_cell*, %struct.mfd_cell** %7, align 8
  %20 = icmp ne %struct.mfd_cell* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %157

24:                                               ; preds = %14
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.ds1wm_data* @kzalloc(i32 32, i32 %25)
  store %struct.ds1wm_data* %26, %struct.ds1wm_data** %4, align 8
  %27 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %28 = icmp ne %struct.ds1wm_data* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %157

32:                                               ; preds = %24
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %35 = call i32 @platform_set_drvdata(%struct.platform_device* %33, %struct.ds1wm_data* %34)
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = load i32, i32* @IORESOURCE_MEM, align 4
  %38 = call %struct.resource* @platform_get_resource(%struct.platform_device* %36, i32 %37, i32 0)
  store %struct.resource* %38, %struct.resource** %6, align 8
  %39 = load %struct.resource*, %struct.resource** %6, align 8
  %40 = icmp ne %struct.resource* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %32
  %42 = load i32, i32* @ENXIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %153

44:                                               ; preds = %32
  %45 = load %struct.resource*, %struct.resource** %6, align 8
  %46 = getelementptr inbounds %struct.resource, %struct.resource* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.resource*, %struct.resource** %6, align 8
  %49 = call i32 @resource_size(%struct.resource* %48)
  %50 = call i32 @ioremap(i32 %47, i32 %49)
  %51 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %52 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %54 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %44
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %8, align 4
  br label %153

60:                                               ; preds = %44
  %61 = load %struct.mfd_cell*, %struct.mfd_cell** %7, align 8
  %62 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %61, i32 0, i32 0
  %63 = load %struct.ds1wm_driver_data*, %struct.ds1wm_driver_data** %62, align 8
  store %struct.ds1wm_driver_data* %63, %struct.ds1wm_driver_data** %5, align 8
  %64 = load %struct.resource*, %struct.resource** %6, align 8
  %65 = call i32 @resource_size(%struct.resource* %64)
  %66 = ashr i32 %65, 3
  %67 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %68 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %71 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %70, i32 0, i32 5
  store %struct.platform_device* %69, %struct.platform_device** %71, align 8
  %72 = load %struct.mfd_cell*, %struct.mfd_cell** %7, align 8
  %73 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %74 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %73, i32 0, i32 4
  store %struct.mfd_cell* %72, %struct.mfd_cell** %74, align 8
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = load i32, i32* @IORESOURCE_IRQ, align 4
  %77 = call %struct.resource* @platform_get_resource(%struct.platform_device* %75, i32 %76, i32 0)
  store %struct.resource* %77, %struct.resource** %6, align 8
  %78 = load %struct.resource*, %struct.resource** %6, align 8
  %79 = icmp ne %struct.resource* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %60
  %81 = load i32, i32* @ENXIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %8, align 4
  br label %148

83:                                               ; preds = %60
  %84 = load %struct.resource*, %struct.resource** %6, align 8
  %85 = getelementptr inbounds %struct.resource, %struct.resource* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %88 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.ds1wm_driver_data*, %struct.ds1wm_driver_data** %5, align 8
  %90 = getelementptr inbounds %struct.ds1wm_driver_data, %struct.ds1wm_driver_data* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %93 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load %struct.resource*, %struct.resource** %6, align 8
  %95 = getelementptr inbounds %struct.resource, %struct.resource* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @IORESOURCE_IRQ_HIGHEDGE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %83
  %101 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %102 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %105 = call i32 @set_irq_type(i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %100, %83
  %107 = load %struct.resource*, %struct.resource** %6, align 8
  %108 = getelementptr inbounds %struct.resource, %struct.resource* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @IORESOURCE_IRQ_LOWEDGE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %106
  %114 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %115 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %118 = call i32 @set_irq_type(i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %113, %106
  %120 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %121 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @ds1wm_isr, align 4
  %124 = load i32, i32* @IRQF_DISABLED, align 4
  %125 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %126 = call i32 @request_irq(i32 %122, i32 %123, i32 %124, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.ds1wm_data* %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %119
  br label %148

130:                                              ; preds = %119
  %131 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %132 = call i32 @ds1wm_up(%struct.ds1wm_data* %131)
  %133 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %134 = bitcast %struct.ds1wm_data* %133 to i8*
  store i8* %134, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ds1wm_master, i32 0, i32 0), align 8
  %135 = call i32 @w1_add_master_device(%struct.TYPE_5__* @ds1wm_master)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  br label %140

139:                                              ; preds = %130
  store i32 0, i32* %2, align 4
  br label %157

140:                                              ; preds = %138
  %141 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %142 = call i32 @ds1wm_down(%struct.ds1wm_data* %141)
  %143 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %144 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %147 = call i32 @free_irq(i32 %145, %struct.ds1wm_data* %146)
  br label %148

148:                                              ; preds = %140, %129, %80
  %149 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %150 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @iounmap(i32 %151)
  br label %153

153:                                              ; preds = %148, %57, %41
  %154 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %155 = call i32 @kfree(%struct.ds1wm_data* %154)
  %156 = load i32, i32* %8, align 4
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %153, %139, %29, %21, %11
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local %struct.ds1wm_data* @kzalloc(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ds1wm_data*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @set_irq_type(i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.ds1wm_data*) #1

declare dso_local i32 @ds1wm_up(%struct.ds1wm_data*) #1

declare dso_local i32 @w1_add_master_device(%struct.TYPE_5__*) #1

declare dso_local i32 @ds1wm_down(%struct.ds1wm_data*) #1

declare dso_local i32 @free_irq(i32, %struct.ds1wm_data*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.ds1wm_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
