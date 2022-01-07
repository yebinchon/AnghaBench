; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_do_read_capacity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_do_read_capacity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_dev = type { i32*, %struct.lun* }
%struct.lun = type { i32, i32 }
%struct.fsg_buffhd = type { i64 }

@SS_INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_dev*, %struct.fsg_buffhd*)* @do_read_capacity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_read_capacity(%struct.fsg_dev* %0, %struct.fsg_buffhd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsg_dev*, align 8
  %5 = alloca %struct.fsg_buffhd*, align 8
  %6 = alloca %struct.lun*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
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
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  %17 = call i64 @get_unaligned_be32(i32* %16)
  store i64 %17, i64* %7, align 8
  %18 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %19 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %5, align 8
  %24 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %9, align 8
  %27 = load i32, i32* %8, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %35, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32, %2
  %36 = load i32, i32* @SS_INVALID_FIELD_IN_CDB, align 4
  %37 = load %struct.lun*, %struct.lun** %6, align 8
  %38 = getelementptr inbounds %struct.lun, %struct.lun* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %52

41:                                               ; preds = %32, %29
  %42 = load %struct.lun*, %struct.lun** %6, align 8
  %43 = getelementptr inbounds %struct.lun, %struct.lun* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 1
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = call i32 @put_unaligned_be32(i32 %45, i32* %47)
  %49 = load i32*, i32** %9, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 4
  %51 = call i32 @put_unaligned_be32(i32 512, i32* %50)
  store i32 8, i32* %3, align 4
  br label %52

52:                                               ; preds = %41, %35
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @get_unaligned_be32(i32*) #1

declare dso_local i32 @put_unaligned_be32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
