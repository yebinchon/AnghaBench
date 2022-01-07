; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_isp116x-hcd.c_pack_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_isp116x-hcd.c_pack_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp116x = type { i64, i32, i32, %struct.isp116x_ep* }
%struct.isp116x_ep = type { i32, i32, %struct.isp116x_ep*, %struct.ptd }
%struct.ptd = type { i32, i32, i32, i32 }

@PTD_DIR_IN = common dso_local global i64 0, align 8
@HCuPINT = common dso_local global i32 0, align 4
@HCuPINT_AIIEOT = common dso_local global i32 0, align 4
@HCXFERCTR = common dso_local global i32 0, align 4
@HCATLPORT = common dso_local global i32 0, align 4
@ISP116x_WRITE_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp116x*)* @pack_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pack_fifo(%struct.isp116x* %0) #0 {
  %2 = alloca %struct.isp116x*, align 8
  %3 = alloca %struct.isp116x_ep*, align 8
  %4 = alloca %struct.ptd*, align 8
  %5 = alloca i32, align 4
  store %struct.isp116x* %0, %struct.isp116x** %2, align 8
  %6 = load %struct.isp116x*, %struct.isp116x** %2, align 8
  %7 = getelementptr inbounds %struct.isp116x, %struct.isp116x* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @PTD_DIR_IN, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.isp116x*, %struct.isp116x** %2, align 8
  %13 = getelementptr inbounds %struct.isp116x, %struct.isp116x* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  br label %19

15:                                               ; preds = %1
  %16 = load %struct.isp116x*, %struct.isp116x** %2, align 8
  %17 = getelementptr inbounds %struct.isp116x, %struct.isp116x* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi i32 [ %14, %11 ], [ %18, %15 ]
  store i32 %20, i32* %5, align 4
  %21 = load %struct.isp116x*, %struct.isp116x** %2, align 8
  %22 = load i32, i32* @HCuPINT, align 4
  %23 = load i32, i32* @HCuPINT_AIIEOT, align 4
  %24 = call i32 @isp116x_write_reg16(%struct.isp116x* %21, i32 %22, i32 %23)
  %25 = load %struct.isp116x*, %struct.isp116x** %2, align 8
  %26 = load i32, i32* @HCXFERCTR, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @isp116x_write_reg16(%struct.isp116x* %25, i32 %26, i32 %27)
  %29 = load %struct.isp116x*, %struct.isp116x** %2, align 8
  %30 = load i32, i32* @HCATLPORT, align 4
  %31 = load i32, i32* @ISP116x_WRITE_OFFSET, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @isp116x_write_addr(%struct.isp116x* %29, i32 %32)
  %34 = load %struct.isp116x*, %struct.isp116x** %2, align 8
  %35 = getelementptr inbounds %struct.isp116x, %struct.isp116x* %34, i32 0, i32 3
  %36 = load %struct.isp116x_ep*, %struct.isp116x_ep** %35, align 8
  store %struct.isp116x_ep* %36, %struct.isp116x_ep** %3, align 8
  br label %37

37:                                               ; preds = %102, %19
  %38 = load %struct.isp116x_ep*, %struct.isp116x_ep** %3, align 8
  %39 = icmp ne %struct.isp116x_ep* %38, null
  br i1 %39, label %40, label %106

40:                                               ; preds = %37
  %41 = load %struct.isp116x_ep*, %struct.isp116x_ep** %3, align 8
  %42 = getelementptr inbounds %struct.isp116x_ep, %struct.isp116x_ep* %41, i32 0, i32 3
  store %struct.ptd* %42, %struct.ptd** %4, align 8
  %43 = load %struct.ptd*, %struct.ptd** %4, align 8
  %44 = call i32 @dump_ptd(%struct.ptd* %43)
  %45 = load %struct.ptd*, %struct.ptd** %4, align 8
  %46 = load %struct.isp116x_ep*, %struct.isp116x_ep** %3, align 8
  %47 = getelementptr inbounds %struct.isp116x_ep, %struct.isp116x_ep* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dump_ptd_out_data(%struct.ptd* %45, i32 %48)
  %50 = load %struct.isp116x*, %struct.isp116x** %2, align 8
  %51 = load %struct.ptd*, %struct.ptd** %4, align 8
  %52 = getelementptr inbounds %struct.ptd, %struct.ptd* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @isp116x_write_data16(%struct.isp116x* %50, i32 %53)
  %55 = load %struct.isp116x*, %struct.isp116x** %2, align 8
  %56 = load %struct.ptd*, %struct.ptd** %4, align 8
  %57 = getelementptr inbounds %struct.ptd, %struct.ptd* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @isp116x_write_data16(%struct.isp116x* %55, i32 %58)
  %60 = load %struct.isp116x*, %struct.isp116x** %2, align 8
  %61 = load %struct.ptd*, %struct.ptd** %4, align 8
  %62 = getelementptr inbounds %struct.ptd, %struct.ptd* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @isp116x_write_data16(%struct.isp116x* %60, i32 %63)
  %65 = load %struct.isp116x*, %struct.isp116x** %2, align 8
  %66 = load %struct.ptd*, %struct.ptd** %4, align 8
  %67 = getelementptr inbounds %struct.ptd, %struct.ptd* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @isp116x_write_data16(%struct.isp116x* %65, i32 %68)
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = sub i64 %71, 16
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %5, align 4
  %74 = load %struct.isp116x_ep*, %struct.isp116x_ep** %3, align 8
  %75 = getelementptr inbounds %struct.isp116x_ep, %struct.isp116x_ep* %74, i32 0, i32 2
  %76 = load %struct.isp116x_ep*, %struct.isp116x_ep** %75, align 8
  %77 = icmp ne %struct.isp116x_ep* %76, null
  br i1 %77, label %84, label %78

78:                                               ; preds = %40
  %79 = load %struct.isp116x*, %struct.isp116x** %2, align 8
  %80 = getelementptr inbounds %struct.isp116x, %struct.isp116x* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @PTD_DIR_IN, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %101

84:                                               ; preds = %78, %40
  %85 = load %struct.isp116x*, %struct.isp116x** %2, align 8
  %86 = load %struct.isp116x_ep*, %struct.isp116x_ep** %3, align 8
  %87 = getelementptr inbounds %struct.isp116x_ep, %struct.isp116x_ep* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.isp116x_ep*, %struct.isp116x_ep** %3, align 8
  %90 = getelementptr inbounds %struct.isp116x_ep, %struct.isp116x_ep* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @write_ptddata_to_fifo(%struct.isp116x* %85, i32 %88, i32 %91)
  %93 = load %struct.isp116x_ep*, %struct.isp116x_ep** %3, align 8
  %94 = getelementptr inbounds %struct.isp116x_ep, %struct.isp116x_ep* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @ALIGN(i32 %95, i32 4)
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = sub nsw i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %84, %78
  br label %102

102:                                              ; preds = %101
  %103 = load %struct.isp116x_ep*, %struct.isp116x_ep** %3, align 8
  %104 = getelementptr inbounds %struct.isp116x_ep, %struct.isp116x_ep* %103, i32 0, i32 2
  %105 = load %struct.isp116x_ep*, %struct.isp116x_ep** %104, align 8
  store %struct.isp116x_ep* %105, %struct.isp116x_ep** %3, align 8
  br label %37

106:                                              ; preds = %37
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @BUG_ON(i32 %107)
  ret void
}

declare dso_local i32 @isp116x_write_reg16(%struct.isp116x*, i32, i32) #1

declare dso_local i32 @isp116x_write_addr(%struct.isp116x*, i32) #1

declare dso_local i32 @dump_ptd(%struct.ptd*) #1

declare dso_local i32 @dump_ptd_out_data(%struct.ptd*, i32) #1

declare dso_local i32 @isp116x_write_data16(%struct.isp116x*, i32) #1

declare dso_local i32 @write_ptddata_to_fifo(%struct.isp116x*, i32, i32) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
