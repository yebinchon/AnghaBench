; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_do_read_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_do_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_dev = type { i32*, %struct.lun* }
%struct.lun = type { i64, i32 }
%struct.fsg_buffhd = type { i64 }

@SS_INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SS_LOGICAL_BLOCK_ADDRESS_OUT_OF_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_dev*, %struct.fsg_buffhd*)* @do_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_read_header(%struct.fsg_dev* %0, %struct.fsg_buffhd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsg_dev*, align 8
  %5 = alloca %struct.fsg_buffhd*, align 8
  %6 = alloca %struct.lun*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.fsg_dev* %0, %struct.fsg_dev** %4, align 8
  store %struct.fsg_buffhd* %1, %struct.fsg_buffhd** %5, align 8
  %10 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %11 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %10, i32 0, i32 1
  %12 = load %struct.lun*, %struct.lun** %11, align 8
  store %struct.lun* %12, %struct.lun** %6, align 8
  %13 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %14 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 2
  store i32 %18, i32* %7, align 4
  %19 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %20 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = call i64 @get_unaligned_be32(i32* %22)
  store i64 %23, i64* %8, align 8
  %24 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %5, align 8
  %25 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %9, align 8
  %28 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %29 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, -3
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %2
  %36 = load i32, i32* @SS_INVALID_FIELD_IN_CDB, align 4
  %37 = load %struct.lun*, %struct.lun** %6, align 8
  %38 = getelementptr inbounds %struct.lun, %struct.lun* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %63

41:                                               ; preds = %2
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.lun*, %struct.lun** %6, align 8
  %44 = getelementptr inbounds %struct.lun, %struct.lun* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sge i64 %42, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load i32, i32* @SS_LOGICAL_BLOCK_ADDRESS_OUT_OF_RANGE, align 4
  %49 = load %struct.lun*, %struct.lun** %6, align 8
  %50 = getelementptr inbounds %struct.lun, %struct.lun* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %63

53:                                               ; preds = %41
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @memset(i32* %54, i32 0, i32 8)
  %56 = load i32*, i32** %9, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 1, i32* %57, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  %60 = load i32, i32* %7, align 4
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @store_cdrom_address(i32* %59, i32 %60, i64 %61)
  store i32 8, i32* %3, align 4
  br label %63

63:                                               ; preds = %53, %47, %35
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @get_unaligned_be32(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @store_cdrom_address(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
