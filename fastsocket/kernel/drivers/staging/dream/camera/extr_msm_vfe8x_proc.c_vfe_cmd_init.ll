; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_cmd_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_cmd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i8*, i32, i32, i32, i32, i32, i32, %struct.msm_vfe_callback* }
%struct.msm_vfe_callback = type { i64 }
%struct.platform_device = type { i32 }
%struct.resource = type { i64, i64 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"no mem resource?\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"no irq resource?\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"VFE region already claimed\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ctrl = common dso_local global %struct.TYPE_4__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@vfe_parse_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"vfe\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfe_cmd_init(%struct.msm_vfe_callback* %0, %struct.platform_device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.msm_vfe_callback*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca %struct.resource*, align 8
  %11 = alloca i32, align 4
  store %struct.msm_vfe_callback* %0, %struct.msm_vfe_callback** %5, align 8
  store %struct.platform_device* %1, %struct.platform_device** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %13 = load i32, i32* @IORESOURCE_MEM, align 4
  %14 = call %struct.resource* @platform_get_resource(%struct.platform_device* %12, i32 %13, i32 0)
  store %struct.resource* %14, %struct.resource** %8, align 8
  %15 = load %struct.resource*, %struct.resource** %8, align 8
  %16 = icmp ne %struct.resource* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = call i32 @CDBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %170

21:                                               ; preds = %3
  %22 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %23 = load i32, i32* @IORESOURCE_IRQ, align 4
  %24 = call %struct.resource* @platform_get_resource(%struct.platform_device* %22, i32 %23, i32 0)
  store %struct.resource* %24, %struct.resource** %9, align 8
  %25 = load %struct.resource*, %struct.resource** %9, align 8
  %26 = icmp ne %struct.resource* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = call i32 @CDBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %170

31:                                               ; preds = %21
  %32 = load %struct.resource*, %struct.resource** %8, align 8
  %33 = getelementptr inbounds %struct.resource, %struct.resource* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.resource*, %struct.resource** %8, align 8
  %36 = call i32 @resource_size(%struct.resource* %35)
  %37 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.resource* @request_mem_region(i64 %34, i32 %36, i32 %39)
  store %struct.resource* %40, %struct.resource** %10, align 8
  %41 = load %struct.resource*, %struct.resource** %10, align 8
  %42 = icmp ne %struct.resource* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %31
  %44 = call i32 @CDBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %170

47:                                               ; preds = %31
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.TYPE_4__* @kzalloc(i32 4, i32 %48)
  store %struct.TYPE_4__* %49, %struct.TYPE_4__** @ctrl, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %51 = icmp ne %struct.TYPE_4__* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %11, align 4
  br label %156

55:                                               ; preds = %47
  %56 = load %struct.resource*, %struct.resource** %9, align 8
  %57 = getelementptr inbounds %struct.resource, %struct.resource* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  store i64 %58, i64* %60, align 8
  %61 = load %struct.resource*, %struct.resource** %8, align 8
  %62 = getelementptr inbounds %struct.resource, %struct.resource* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.resource*, %struct.resource** %8, align 8
  %65 = getelementptr inbounds %struct.resource, %struct.resource* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.resource*, %struct.resource** %8, align 8
  %68 = getelementptr inbounds %struct.resource, %struct.resource* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %66, %69
  %71 = add nsw i64 %70, 1
  %72 = call i32 @ioremap(i64 %63, i64 %71)
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %55
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %11, align 4
  br label %153

82:                                               ; preds = %55
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* @vfe_parse_irq, align 4
  %87 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %88 = call i32 @request_irq(i64 %85, i32 %86, i32 %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  br label %153

92:                                               ; preds = %82
  %93 = load %struct.msm_vfe_callback*, %struct.msm_vfe_callback** %5, align 8
  %94 = icmp ne %struct.msm_vfe_callback* %93, null
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = load %struct.msm_vfe_callback*, %struct.msm_vfe_callback** %5, align 8
  %97 = getelementptr inbounds %struct.msm_vfe_callback, %struct.msm_vfe_callback* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load %struct.msm_vfe_callback*, %struct.msm_vfe_callback** %5, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 10
  store %struct.msm_vfe_callback* %101, %struct.msm_vfe_callback** %103, align 8
  br label %107

104:                                              ; preds = %95, %92
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %11, align 4
  br label %140

107:                                              ; preds = %100
  %108 = load i32, i32* @GFP_KERNEL, align 4
  %109 = call i32 @kmalloc(i32 4, i32 %108)
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 9
  store i32 %109, i32* %111, align 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 9
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %107
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %11, align 4
  br label %140

119:                                              ; preds = %107
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 8
  %122 = call i32 @spin_lock_init(i32* %121)
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 7
  %125 = call i32 @spin_lock_init(i32* %124)
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 6
  %128 = call i32 @spin_lock_init(i32* %127)
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  store i32 4, i32* %130, align 8
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 5
  %133 = call i32 @spin_lock_init(i32* %132)
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 4
  %136 = call i32 @INIT_LIST_HEAD(i32* %135)
  %137 = load i8*, i8** %7, align 8
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 3
  store i8* %137, i8** %139, align 8
  store i32 0, i32* %4, align 4
  br label %170

140:                                              ; preds = %116, %104
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @disable_irq(i64 %143)
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @free_irq(i64 %147, i32 0)
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @iounmap(i32 %151)
  br label %153

153:                                              ; preds = %140, %91, %79
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %155 = call i32 @kfree(%struct.TYPE_4__* %154)
  br label %156

156:                                              ; preds = %153, %52
  %157 = load %struct.resource*, %struct.resource** %8, align 8
  %158 = getelementptr inbounds %struct.resource, %struct.resource* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.resource*, %struct.resource** %8, align 8
  %161 = getelementptr inbounds %struct.resource, %struct.resource* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.resource*, %struct.resource** %8, align 8
  %164 = getelementptr inbounds %struct.resource, %struct.resource* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = sub nsw i64 %162, %165
  %167 = add nsw i64 %166, 1
  %168 = call i32 @release_mem_region(i64 %159, i64 %167)
  %169 = load i32, i32* %11, align 4
  store i32 %169, i32* %4, align 4
  br label %170

170:                                              ; preds = %156, %119, %43, %27, %17
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @CDBG(i8*) #1

declare dso_local %struct.resource* @request_mem_region(i64, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local %struct.TYPE_4__* @kzalloc(i32, i32) #1

declare dso_local i32 @ioremap(i64, i64) #1

declare dso_local i32 @request_irq(i64, i32, i32, i8*, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @disable_irq(i64) #1

declare dso_local i32 @free_irq(i64, i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

declare dso_local i32 @release_mem_region(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
