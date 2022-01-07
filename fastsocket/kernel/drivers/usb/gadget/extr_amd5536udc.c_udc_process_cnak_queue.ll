; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_amd5536udc.c_udc_process_cnak_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_amd5536udc.c_udc_process_cnak_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"CNAK pending queue processing\0A\00", align 1
@UDC_EPIN_NUM_USED = common dso_local global i32 0, align 4
@cnak_pending = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"CNAK pending for ep%d\0A\00", align 1
@UDC_EPCTL_CNAK = common dso_local global i32 0, align 4
@UDC_EP0OUT_IX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.udc*)* @udc_process_cnak_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udc_process_cnak_queue(%struct.udc* %0) #0 {
  %2 = alloca %struct.udc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.udc* %0, %struct.udc** %2, align 8
  %5 = load %struct.udc*, %struct.udc** %2, align 8
  %6 = call i32 (%struct.udc*, i8*, ...) @DBG(%struct.udc* %5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %69, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @UDC_EPIN_NUM_USED, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %72

11:                                               ; preds = %7
  %12 = load i32, i32* @cnak_pending, align 4
  %13 = load i32, i32* %3, align 4
  %14 = shl i32 1, %13
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %68

17:                                               ; preds = %11
  %18 = load %struct.udc*, %struct.udc** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 (%struct.udc*, i8*, ...) @DBG(%struct.udc* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load %struct.udc*, %struct.udc** %2, align 8
  %22 = getelementptr inbounds %struct.udc, %struct.udc* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call i32 @readl(i32* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* @UDC_EPCTL_CNAK, align 4
  %32 = call i32 @AMD_BIT(i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.udc*, %struct.udc** %2, align 8
  %37 = getelementptr inbounds %struct.udc, %struct.udc* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = call i32 @writel(i32 %35, i32* %44)
  %46 = load %struct.udc*, %struct.udc** %2, align 8
  %47 = getelementptr inbounds %struct.udc, %struct.udc* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load %struct.udc*, %struct.udc** %2, align 8
  %54 = getelementptr inbounds %struct.udc, %struct.udc* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = load %struct.udc*, %struct.udc** %2, align 8
  %60 = getelementptr inbounds %struct.udc, %struct.udc* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @UDC_QUEUE_CNAK(%struct.TYPE_4__* %58, i32 %66)
  br label %68

68:                                               ; preds = %17, %11
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %7

72:                                               ; preds = %7
  %73 = load i32, i32* @cnak_pending, align 4
  %74 = load i32, i32* @UDC_EP0OUT_IX, align 4
  %75 = shl i32 1, %74
  %76 = and i32 %73, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %129

78:                                               ; preds = %72
  %79 = load %struct.udc*, %struct.udc** %2, align 8
  %80 = load i32, i32* @UDC_EP0OUT_IX, align 4
  %81 = call i32 (%struct.udc*, i8*, ...) @DBG(%struct.udc* %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load %struct.udc*, %struct.udc** %2, align 8
  %83 = getelementptr inbounds %struct.udc, %struct.udc* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i32, i32* @UDC_EP0OUT_IX, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = call i32 @readl(i32* %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* @UDC_EPCTL_CNAK, align 4
  %93 = call i32 @AMD_BIT(i32 %92)
  %94 = load i32, i32* %4, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = load %struct.udc*, %struct.udc** %2, align 8
  %98 = getelementptr inbounds %struct.udc, %struct.udc* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = load i32, i32* @UDC_EP0OUT_IX, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = call i32 @writel(i32 %96, i32* %105)
  %107 = load %struct.udc*, %struct.udc** %2, align 8
  %108 = getelementptr inbounds %struct.udc, %struct.udc* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = load i32, i32* @UDC_EP0OUT_IX, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  store i64 0, i64* %113, align 8
  %114 = load %struct.udc*, %struct.udc** %2, align 8
  %115 = getelementptr inbounds %struct.udc, %struct.udc* %114, i32 0, i32 0
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = load i32, i32* @UDC_EP0OUT_IX, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %118
  %120 = load %struct.udc*, %struct.udc** %2, align 8
  %121 = getelementptr inbounds %struct.udc, %struct.udc* %120, i32 0, i32 0
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = load i32, i32* @UDC_EP0OUT_IX, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @UDC_QUEUE_CNAK(%struct.TYPE_4__* %119, i32 %127)
  br label %129

129:                                              ; preds = %78, %72
  ret void
}

declare dso_local i32 @DBG(%struct.udc*, i8*, ...) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @AMD_BIT(i32) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @UDC_QUEUE_CNAK(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
