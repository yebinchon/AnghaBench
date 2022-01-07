; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tmiofb.c_tmiofb_hw_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tmiofb.c_tmiofb_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mfd_cell* }
%struct.mfd_cell = type { %struct.resource* }
%struct.resource = type { i64 }
%struct.fb_info = type { i64, %struct.tmiofb_par* }
%struct.tmiofb_par = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@CCR_UGCC = common dso_local global i64 0, align 8
@CCR_GCC = common dso_local global i64 0, align 8
@CCR_USC = common dso_local global i64 0, align 8
@CCR_BASEH = common dso_local global i64 0, align 8
@CCR_BASEL = common dso_local global i64 0, align 8
@CCR_CMD = common dso_local global i64 0, align 8
@CCR_VRAMRTC = common dso_local global i64 0, align 8
@CCR_VRAMSAC = common dso_local global i64 0, align 8
@CCR_VRAMBC = common dso_local global i64 0, align 8
@LCR_CFSAH = common dso_local global i64 0, align 8
@LCR_CFSAL = common dso_local global i64 0, align 8
@TMIOFB_FIFO_SIZE = common dso_local global i32 0, align 4
@LCR_CFS = common dso_local global i64 0, align 8
@LCR_CFC = common dso_local global i64 0, align 8
@LCR_BBIE = common dso_local global i64 0, align 8
@LCR_CFWS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tmiofb_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmiofb_hw_init(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mfd_cell*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.tmiofb_par*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.mfd_cell*, %struct.mfd_cell** %12, align 8
  store %struct.mfd_cell* %13, %struct.mfd_cell** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = call %struct.fb_info* @platform_get_drvdata(%struct.platform_device* %14)
  store %struct.fb_info* %15, %struct.fb_info** %5, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 1
  %18 = load %struct.tmiofb_par*, %struct.tmiofb_par** %17, align 8
  store %struct.tmiofb_par* %18, %struct.tmiofb_par** %6, align 8
  %19 = load %struct.mfd_cell*, %struct.mfd_cell** %4, align 8
  %20 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %19, i32 0, i32 0
  %21 = load %struct.resource*, %struct.resource** %20, align 8
  %22 = getelementptr inbounds %struct.resource, %struct.resource* %21, i64 0
  store %struct.resource* %22, %struct.resource** %7, align 8
  %23 = load %struct.mfd_cell*, %struct.mfd_cell** %4, align 8
  %24 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %23, i32 0, i32 0
  %25 = load %struct.resource*, %struct.resource** %24, align 8
  %26 = getelementptr inbounds %struct.resource, %struct.resource* %25, i64 2
  store %struct.resource* %26, %struct.resource** %8, align 8
  %27 = load %struct.resource*, %struct.resource** %7, align 8
  %28 = icmp eq %struct.resource* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load %struct.resource*, %struct.resource** %8, align 8
  %31 = icmp eq %struct.resource* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29, %1
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %162

35:                                               ; preds = %29
  %36 = load %struct.resource*, %struct.resource** %7, align 8
  %37 = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %9, align 8
  %39 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %40 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CCR_UGCC, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @tmio_iowrite16(i32 58, i64 %43)
  %45 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %46 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @CCR_GCC, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @tmio_iowrite16(i32 58, i64 %49)
  %51 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %52 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @CCR_USC, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @tmio_iowrite16(i32 16128, i64 %55)
  %57 = call i32 @msleep(i32 2)
  %58 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %59 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @CCR_USC, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @tmio_iowrite16(i32 0, i64 %62)
  %64 = load i64, i64* %9, align 8
  %65 = lshr i64 %64, 16
  %66 = trunc i64 %65 to i32
  %67 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %68 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @CCR_BASEH, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @tmio_iowrite16(i32 %66, i64 %71)
  %73 = load i64, i64* %9, align 8
  %74 = trunc i64 %73 to i32
  %75 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %76 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @CCR_BASEL, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @tmio_iowrite16(i32 %74, i64 %79)
  %81 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %82 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @CCR_CMD, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @tmio_iowrite16(i32 2, i64 %85)
  %87 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %88 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @CCR_VRAMRTC, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @tmio_iowrite16(i32 16552, i64 %91)
  %93 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %94 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @CCR_VRAMSAC, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @tmio_iowrite16(i32 24, i64 %97)
  %99 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %100 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @CCR_VRAMBC, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @tmio_iowrite16(i32 2, i64 %103)
  %105 = call i32 @msleep(i32 2)
  %106 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %107 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @CCR_VRAMBC, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @tmio_iowrite16(i32 11, i64 %110)
  %112 = load %struct.resource*, %struct.resource** %8, align 8
  %113 = getelementptr inbounds %struct.resource, %struct.resource* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %116 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = add i64 %114, %117
  store i64 %118, i64* %9, align 8
  %119 = load i64, i64* %9, align 8
  %120 = lshr i64 %119, 16
  %121 = trunc i64 %120 to i32
  %122 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %123 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @LCR_CFSAH, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 @tmio_iowrite16(i32 %121, i64 %126)
  %128 = load i64, i64* %9, align 8
  %129 = trunc i64 %128 to i32
  %130 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %131 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @LCR_CFSAL, align 8
  %134 = add nsw i64 %132, %133
  %135 = call i32 @tmio_iowrite16(i32 %129, i64 %134)
  %136 = load i32, i32* @TMIOFB_FIFO_SIZE, align 4
  %137 = sub nsw i32 %136, 1
  %138 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %139 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @LCR_CFS, align 8
  %142 = add nsw i64 %140, %141
  %143 = call i32 @tmio_iowrite16(i32 %137, i64 %142)
  %144 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %145 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @LCR_CFC, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i32 @tmio_iowrite16(i32 1, i64 %148)
  %150 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %151 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @LCR_BBIE, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i32 @tmio_iowrite16(i32 1, i64 %154)
  %156 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %157 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @LCR_CFWS, align 8
  %160 = add nsw i64 %158, %159
  %161 = call i32 @tmio_iowrite16(i32 0, i64 %160)
  store i32 0, i32* %2, align 4
  br label %162

162:                                              ; preds = %35, %32
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local %struct.fb_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @tmio_iowrite16(i32, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
