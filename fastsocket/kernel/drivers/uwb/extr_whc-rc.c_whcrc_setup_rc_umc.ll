; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_whc-rc.c_whcrc_setup_rc_umc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_whc-rc.c_whcrc_setup_rc_umc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.whcrc = type { i64, i64, i32*, i32, i32*, i32*, i32, %struct.umc_dev* }
%struct.umc_dev = type { i32, %struct.device, %struct.TYPE_2__ }
%struct.device = type { i32 }
%struct.TYPE_2__ = type { i64, i64 }

@EBUSY = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"can't request URC region (%zu bytes @ 0x%lx): %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"can't ioremap registers (%zu bytes @ 0x%lx): %d\0A\00", align 1
@whcrc_irq_cb = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"can't allocate IRQ %d: %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Can't allocate cmd transfer buffer\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Can't allocate evt transfer buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.whcrc*)* @whcrc_setup_rc_umc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @whcrc_setup_rc_umc(%struct.whcrc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.whcrc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.umc_dev*, align 8
  store %struct.whcrc* %0, %struct.whcrc** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %8 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %7, i32 0, i32 7
  %9 = load %struct.umc_dev*, %struct.umc_dev** %8, align 8
  %10 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %9, i32 0, i32 1
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %12 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %11, i32 0, i32 7
  %13 = load %struct.umc_dev*, %struct.umc_dev** %12, align 8
  store %struct.umc_dev* %13, %struct.umc_dev** %6, align 8
  %14 = load %struct.umc_dev*, %struct.umc_dev** %6, align 8
  %15 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %19 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load %struct.umc_dev*, %struct.umc_dev** %6, align 8
  %21 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.umc_dev*, %struct.umc_dev** %6, align 8
  %25 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %23, %27
  %29 = add nsw i64 %28, 1
  %30 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %31 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  %34 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %35 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %38 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @KBUILD_MODNAME, align 4
  %41 = call i32* @request_mem_region(i64 %36, i64 %39, i32 %40)
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %1
  %44 = load %struct.device*, %struct.device** %5, align 8
  %45 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %46 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %49 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %44, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %47, i64 %50, i32 %51)
  br label %164

53:                                               ; preds = %1
  %54 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %55 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %58 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32* @ioremap_nocache(i64 %56, i64 %59)
  %61 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %62 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %61, i32 0, i32 2
  store i32* %60, i32** %62, align 8
  %63 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %64 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %77

67:                                               ; preds = %53
  %68 = load %struct.device*, %struct.device** %5, align 8
  %69 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %70 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %73 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %68, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %71, i64 %74, i32 %75)
  br label %156

77:                                               ; preds = %53
  %78 = load %struct.umc_dev*, %struct.umc_dev** %6, align 8
  %79 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @whcrc_irq_cb, align 4
  %82 = load i32, i32* @IRQF_SHARED, align 4
  %83 = load i32, i32* @KBUILD_MODNAME, align 4
  %84 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %85 = call i32 @request_irq(i32 %80, i32 %81, i32 %82, i32 %83, %struct.whcrc* %84)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %77
  %89 = load %struct.device*, %struct.device** %5, align 8
  %90 = load %struct.umc_dev*, %struct.umc_dev** %6, align 8
  %91 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %89, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %92, i32 %93)
  br label %151

95:                                               ; preds = %77
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  %98 = load %struct.umc_dev*, %struct.umc_dev** %6, align 8
  %99 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %98, i32 0, i32 1
  %100 = load i32, i32* @PAGE_SIZE, align 4
  %101 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %102 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %101, i32 0, i32 3
  %103 = load i32, i32* @GFP_KERNEL, align 4
  %104 = call i8* @dma_alloc_coherent(%struct.device* %99, i32 %100, i32* %102, i32 %103)
  %105 = bitcast i8* %104 to i32*
  %106 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %107 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %106, i32 0, i32 4
  store i32* %105, i32** %107, align 8
  %108 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %109 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %108, i32 0, i32 4
  %110 = load i32*, i32** %109, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %95
  %113 = load %struct.device*, %struct.device** %5, align 8
  %114 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %113, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %145

115:                                              ; preds = %95
  %116 = load %struct.umc_dev*, %struct.umc_dev** %6, align 8
  %117 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %116, i32 0, i32 1
  %118 = load i32, i32* @PAGE_SIZE, align 4
  %119 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %120 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %119, i32 0, i32 6
  %121 = load i32, i32* @GFP_KERNEL, align 4
  %122 = call i8* @dma_alloc_coherent(%struct.device* %117, i32 %118, i32* %120, i32 %121)
  %123 = bitcast i8* %122 to i32*
  %124 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %125 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %124, i32 0, i32 5
  store i32* %123, i32** %125, align 8
  %126 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %127 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %126, i32 0, i32 5
  %128 = load i32*, i32** %127, align 8
  %129 = icmp eq i32* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %115
  %131 = load %struct.device*, %struct.device** %5, align 8
  %132 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %131, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %134

133:                                              ; preds = %115
  store i32 0, i32* %2, align 4
  br label %166

134:                                              ; preds = %130
  %135 = load %struct.umc_dev*, %struct.umc_dev** %6, align 8
  %136 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %135, i32 0, i32 1
  %137 = load i32, i32* @PAGE_SIZE, align 4
  %138 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %139 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %138, i32 0, i32 4
  %140 = load i32*, i32** %139, align 8
  %141 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %142 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @dma_free_coherent(%struct.device* %136, i32 %137, i32* %140, i32 %143)
  br label %145

145:                                              ; preds = %134, %112
  %146 = load %struct.umc_dev*, %struct.umc_dev** %6, align 8
  %147 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %150 = call i32 @free_irq(i32 %148, %struct.whcrc* %149)
  br label %151

151:                                              ; preds = %145, %88
  %152 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %153 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @iounmap(i32* %154)
  br label %156

156:                                              ; preds = %151, %67
  %157 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %158 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %161 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @release_mem_region(i64 %159, i64 %162)
  br label %164

164:                                              ; preds = %156, %43
  %165 = load i32, i32* %4, align 4
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %164, %133
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i32* @request_mem_region(i64, i64, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32* @ioremap_nocache(i64, i64) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.whcrc*) #1

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.whcrc*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @release_mem_region(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
