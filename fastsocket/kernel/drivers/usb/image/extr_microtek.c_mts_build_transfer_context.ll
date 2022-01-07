; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/image/extr_microtek.c_mts_build_transfer_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/image/extr_microtek.c_mts_build_transfer_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32* }
%struct.mts_desc = type { %struct.TYPE_2__, i64, i32, i64, i64 }
%struct.TYPE_2__ = type { i32, i32, i32*, i64, %struct.scsi_cmnd*, %struct.mts_desc* }
%struct.scatterlist = type { i32 }

@mts_read_image_sig = common dso_local global i32 0, align 4
@mts_read_image_sig_len = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"transfering from desc->ep_image == %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"transfering from desc->ep_response == %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"transfering to desc->ep_out == %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_cmnd*, %struct.mts_desc*)* @mts_build_transfer_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mts_build_transfer_context(%struct.scsi_cmnd* %0, %struct.mts_desc* %1) #0 {
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.mts_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scatterlist*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store %struct.mts_desc* %1, %struct.mts_desc** %4, align 8
  %7 = call i32 (...) @MTS_DEBUG_GOT_HERE()
  %8 = load %struct.mts_desc*, %struct.mts_desc** %4, align 8
  %9 = load %struct.mts_desc*, %struct.mts_desc** %4, align 8
  %10 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 5
  store %struct.mts_desc* %8, %struct.mts_desc** %11, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %13 = load %struct.mts_desc*, %struct.mts_desc** %4, align 8
  %14 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 4
  store %struct.scsi_cmnd* %12, %struct.scsi_cmnd** %15, align 8
  %16 = load %struct.mts_desc*, %struct.mts_desc** %4, align 8
  %17 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %20 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %2
  %23 = load %struct.mts_desc*, %struct.mts_desc** %4, align 8
  %24 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  store i32* null, i32** %25, align 8
  %26 = load %struct.mts_desc*, %struct.mts_desc** %4, align 8
  %27 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  br label %106

29:                                               ; preds = %2
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %31 = call %struct.scatterlist* @scsi_sglist(%struct.scsi_cmnd* %30)
  store %struct.scatterlist* %31, %struct.scatterlist** %6, align 8
  %32 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %33 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %32, i64 0
  %34 = call i32* @sg_virt(%struct.scatterlist* %33)
  %35 = load %struct.mts_desc*, %struct.mts_desc** %4, align 8
  %36 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i32* %34, i32** %37, align 8
  %38 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %39 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %38, i64 0
  %40 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mts_desc*, %struct.mts_desc** %4, align 8
  %43 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  br label %45

45:                                               ; preds = %29
  %46 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %47 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* @mts_read_image_sig, align 4
  %50 = load i32, i32* @mts_read_image_sig_len, align 4
  %51 = call i32 @memcmp(i32* %48, i32 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %66, label %53

53:                                               ; preds = %45
  %54 = load %struct.mts_desc*, %struct.mts_desc** %4, align 8
  %55 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.mts_desc*, %struct.mts_desc** %4, align 8
  %58 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @usb_rcvbulkpipe(i32 %56, i64 %59)
  store i32 %60, i32* %5, align 4
  %61 = load %struct.mts_desc*, %struct.mts_desc** %4, align 8
  %62 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 @MTS_DEBUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %101

66:                                               ; preds = %45
  %67 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %68 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @MTS_DIRECTION_IS_IN(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %66
  %75 = load %struct.mts_desc*, %struct.mts_desc** %4, align 8
  %76 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.mts_desc*, %struct.mts_desc** %4, align 8
  %79 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @usb_rcvbulkpipe(i32 %77, i64 %80)
  store i32 %81, i32* %5, align 4
  %82 = load %struct.mts_desc*, %struct.mts_desc** %4, align 8
  %83 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i32 @MTS_DEBUG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  br label %100

87:                                               ; preds = %66
  %88 = load %struct.mts_desc*, %struct.mts_desc** %4, align 8
  %89 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i32 @MTS_DEBUG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load %struct.mts_desc*, %struct.mts_desc** %4, align 8
  %94 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.mts_desc*, %struct.mts_desc** %4, align 8
  %97 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @usb_sndbulkpipe(i32 %95, i64 %98)
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %87, %74
  br label %101

101:                                              ; preds = %100, %53
  %102 = load i32, i32* %5, align 4
  %103 = load %struct.mts_desc*, %struct.mts_desc** %4, align 8
  %104 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  store i32 %102, i32* %105, align 8
  br label %106

106:                                              ; preds = %101, %22
  ret void
}

declare dso_local i32 @MTS_DEBUG_GOT_HERE(...) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local %struct.scatterlist* @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32* @sg_virt(%struct.scatterlist*) #1

declare dso_local i32 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i64) #1

declare dso_local i32 @MTS_DEBUG(i8*, i32) #1

declare dso_local i64 @MTS_DIRECTION_IS_IN(i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
