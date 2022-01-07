; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_isp116x-hcd.c_unpack_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_isp116x-hcd.c_unpack_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp116x = type { i64, i32, i32, %struct.isp116x_ep* }
%struct.isp116x_ep = type { i32, i32, %struct.isp116x_ep*, %struct.ptd }
%struct.ptd = type { i8*, i8*, i8*, i8* }

@PTD_DIR_IN = common dso_local global i64 0, align 8
@HCuPINT = common dso_local global i32 0, align 4
@HCuPINT_AIIEOT = common dso_local global i32 0, align 4
@HCXFERCTR = common dso_local global i32 0, align 4
@HCATLPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp116x*)* @unpack_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unpack_fifo(%struct.isp116x* %0) #0 {
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
  %31 = call i32 @isp116x_write_addr(%struct.isp116x* %29, i32 %30)
  %32 = load %struct.isp116x*, %struct.isp116x** %2, align 8
  %33 = getelementptr inbounds %struct.isp116x, %struct.isp116x* %32, i32 0, i32 3
  %34 = load %struct.isp116x_ep*, %struct.isp116x_ep** %33, align 8
  store %struct.isp116x_ep* %34, %struct.isp116x_ep** %3, align 8
  br label %35

35:                                               ; preds = %96, %19
  %36 = load %struct.isp116x_ep*, %struct.isp116x_ep** %3, align 8
  %37 = icmp ne %struct.isp116x_ep* %36, null
  br i1 %37, label %38, label %100

38:                                               ; preds = %35
  %39 = load %struct.isp116x_ep*, %struct.isp116x_ep** %3, align 8
  %40 = getelementptr inbounds %struct.isp116x_ep, %struct.isp116x_ep* %39, i32 0, i32 3
  store %struct.ptd* %40, %struct.ptd** %4, align 8
  %41 = load %struct.isp116x*, %struct.isp116x** %2, align 8
  %42 = call i8* @isp116x_read_data16(%struct.isp116x* %41)
  %43 = load %struct.ptd*, %struct.ptd** %4, align 8
  %44 = getelementptr inbounds %struct.ptd, %struct.ptd* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  %45 = load %struct.isp116x*, %struct.isp116x** %2, align 8
  %46 = call i8* @isp116x_read_data16(%struct.isp116x* %45)
  %47 = load %struct.ptd*, %struct.ptd** %4, align 8
  %48 = getelementptr inbounds %struct.ptd, %struct.ptd* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  %49 = load %struct.isp116x*, %struct.isp116x** %2, align 8
  %50 = call i8* @isp116x_read_data16(%struct.isp116x* %49)
  %51 = load %struct.ptd*, %struct.ptd** %4, align 8
  %52 = getelementptr inbounds %struct.ptd, %struct.ptd* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.isp116x*, %struct.isp116x** %2, align 8
  %54 = call i8* @isp116x_read_data16(%struct.isp116x* %53)
  %55 = load %struct.ptd*, %struct.ptd** %4, align 8
  %56 = getelementptr inbounds %struct.ptd, %struct.ptd* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = sub i64 %58, 32
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %5, align 4
  %61 = load %struct.isp116x_ep*, %struct.isp116x_ep** %3, align 8
  %62 = getelementptr inbounds %struct.isp116x_ep, %struct.isp116x_ep* %61, i32 0, i32 2
  %63 = load %struct.isp116x_ep*, %struct.isp116x_ep** %62, align 8
  %64 = icmp ne %struct.isp116x_ep* %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %38
  %66 = load %struct.isp116x*, %struct.isp116x** %2, align 8
  %67 = getelementptr inbounds %struct.isp116x, %struct.isp116x* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @PTD_DIR_IN, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %88

71:                                               ; preds = %65, %38
  %72 = load %struct.isp116x*, %struct.isp116x** %2, align 8
  %73 = load %struct.isp116x_ep*, %struct.isp116x_ep** %3, align 8
  %74 = getelementptr inbounds %struct.isp116x_ep, %struct.isp116x_ep* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.isp116x_ep*, %struct.isp116x_ep** %3, align 8
  %77 = getelementptr inbounds %struct.isp116x_ep, %struct.isp116x_ep* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @read_ptddata_from_fifo(%struct.isp116x* %72, i32 %75, i32 %78)
  %80 = load %struct.isp116x_ep*, %struct.isp116x_ep** %3, align 8
  %81 = getelementptr inbounds %struct.isp116x_ep, %struct.isp116x_ep* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @ALIGN(i32 %82, i32 4)
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = sub nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %71, %65
  %89 = load %struct.ptd*, %struct.ptd** %4, align 8
  %90 = call i32 @dump_ptd(%struct.ptd* %89)
  %91 = load %struct.ptd*, %struct.ptd** %4, align 8
  %92 = load %struct.isp116x_ep*, %struct.isp116x_ep** %3, align 8
  %93 = getelementptr inbounds %struct.isp116x_ep, %struct.isp116x_ep* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @dump_ptd_in_data(%struct.ptd* %91, i32 %94)
  br label %96

96:                                               ; preds = %88
  %97 = load %struct.isp116x_ep*, %struct.isp116x_ep** %3, align 8
  %98 = getelementptr inbounds %struct.isp116x_ep, %struct.isp116x_ep* %97, i32 0, i32 2
  %99 = load %struct.isp116x_ep*, %struct.isp116x_ep** %98, align 8
  store %struct.isp116x_ep* %99, %struct.isp116x_ep** %3, align 8
  br label %35

100:                                              ; preds = %35
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @BUG_ON(i32 %101)
  ret void
}

declare dso_local i32 @isp116x_write_reg16(%struct.isp116x*, i32, i32) #1

declare dso_local i32 @isp116x_write_addr(%struct.isp116x*, i32) #1

declare dso_local i8* @isp116x_read_data16(%struct.isp116x*) #1

declare dso_local i32 @read_ptddata_from_fifo(%struct.isp116x*, i32, i32) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @dump_ptd(%struct.ptd*) #1

declare dso_local i32 @dump_ptd_in_data(%struct.ptd*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
