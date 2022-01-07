; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_do_request_sense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_do_request_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_dev = type { i32, %struct.lun* }
%struct.lun = type { i64, i64, i64, i32 }
%struct.fsg_buffhd = type { i64 }

@SS_LOGICAL_UNIT_NOT_SUPPORTED = common dso_local global i64 0, align 8
@SS_NO_SENSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_dev*, %struct.fsg_buffhd*)* @do_request_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_request_sense(%struct.fsg_dev* %0, %struct.fsg_buffhd* %1) #0 {
  %3 = alloca %struct.fsg_dev*, align 8
  %4 = alloca %struct.fsg_buffhd*, align 8
  %5 = alloca %struct.lun*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.fsg_dev* %0, %struct.fsg_dev** %3, align 8
  store %struct.fsg_buffhd* %1, %struct.fsg_buffhd** %4, align 8
  %10 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %11 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %10, i32 0, i32 1
  %12 = load %struct.lun*, %struct.lun** %11, align 8
  store %struct.lun* %12, %struct.lun** %5, align 8
  %13 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %14 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %6, align 8
  %17 = load %struct.lun*, %struct.lun** %5, align 8
  %18 = icmp ne %struct.lun* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %21 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load i64, i64* @SS_LOGICAL_UNIT_NOT_SUPPORTED, align 8
  store i64 %22, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %41

23:                                               ; preds = %2
  %24 = load %struct.lun*, %struct.lun** %5, align 8
  %25 = getelementptr inbounds %struct.lun, %struct.lun* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %7, align 8
  %27 = load %struct.lun*, %struct.lun** %5, align 8
  %28 = getelementptr inbounds %struct.lun, %struct.lun* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %8, align 8
  %30 = load %struct.lun*, %struct.lun** %5, align 8
  %31 = getelementptr inbounds %struct.lun, %struct.lun* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = shl i32 %32, 7
  store i32 %33, i32* %9, align 4
  %34 = load i64, i64* @SS_NO_SENSE, align 8
  %35 = load %struct.lun*, %struct.lun** %5, align 8
  %36 = getelementptr inbounds %struct.lun, %struct.lun* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load %struct.lun*, %struct.lun** %5, align 8
  %38 = getelementptr inbounds %struct.lun, %struct.lun* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.lun*, %struct.lun** %5, align 8
  %40 = getelementptr inbounds %struct.lun, %struct.lun* %39, i32 0, i32 3
  store i32 0, i32* %40, align 8
  br label %41

41:                                               ; preds = %23, %19
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @memset(i32* %42, i32 0, i32 18)
  %44 = load i32, i32* %9, align 4
  %45 = or i32 %44, 112
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %45, i32* %47, align 4
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @SK(i64 %48)
  %50 = load i32*, i32** %6, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  store i32 %49, i32* %51, align 4
  %52 = load i64, i64* %8, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  %55 = call i32 @put_unaligned_be32(i64 %52, i32* %54)
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 7
  store i32 10, i32* %57, align 4
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @ASC(i64 %58)
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 12
  store i32 %59, i32* %61, align 4
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @ASCQ(i64 %62)
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 13
  store i32 %63, i32* %65, align 4
  ret i32 18
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @SK(i64) #1

declare dso_local i32 @put_unaligned_be32(i64, i32*) #1

declare dso_local i32 @ASC(i64) #1

declare dso_local i32 @ASCQ(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
