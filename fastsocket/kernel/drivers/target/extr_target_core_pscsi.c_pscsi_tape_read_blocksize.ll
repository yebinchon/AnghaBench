; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pscsi.c_pscsi_tape_read_blocksize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pscsi.c_pscsi_tape_read_blocksize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { i32 }
%struct.scsi_device = type { i8 }

@MAX_COMMAND_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MODE_SENSE = common dso_local global i8 0, align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.se_device*, %struct.scsi_device*)* @pscsi_tape_read_blocksize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pscsi_tape_read_blocksize(%struct.se_device* %0, %struct.scsi_device* %1) #0 {
  %3 = alloca %struct.se_device*, align 8
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.se_device* %0, %struct.se_device** %3, align 8
  store %struct.scsi_device* %1, %struct.scsi_device** %4, align 8
  %10 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @kzalloc(i32 12, i32 %14)
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  br label %64

19:                                               ; preds = %2
  %20 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %21 = call i32 @memset(i8* %13, i32 0, i32 %20)
  %22 = load i8, i8* @MODE_SENSE, align 1
  %23 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 %22, i8* %23, align 16
  %24 = getelementptr inbounds i8, i8* %13, i64 4
  store i8 12, i8* %24, align 4
  %25 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %26 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* @HZ, align 4
  %29 = call i32 @scsi_execute_req(%struct.scsi_device* %25, i8* %13, i32 %26, i8* %27, i32 12, i32* null, i32 %28, i32 1, i32* null)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  br label %61

33:                                               ; preds = %19
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 9
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl i32 %37, 16
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 10
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = shl i32 %42, 8
  %44 = or i32 %38, %43
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 11
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = or i32 %44, %48
  %50 = trunc i32 %49 to i8
  %51 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %52 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %51, i32 0, i32 0
  store i8 %50, i8* %52, align 1
  %53 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %54 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %53, i32 0, i32 0
  %55 = load i8, i8* %54, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %33
  %58 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %59 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %58, i32 0, i32 0
  store i8 0, i8* %59, align 1
  br label %60

60:                                               ; preds = %57, %33
  br label %61

61:                                               ; preds = %60, %32
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @kfree(i8* %62)
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %61, %18
  %65 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i32, i32* %9, align 4
  switch i32 %66, label %68 [
    i32 0, label %67
    i32 1, label %67
  ]

67:                                               ; preds = %64, %64
  ret void

68:                                               ; preds = %64
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @kzalloc(i32, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @scsi_execute_req(%struct.scsi_device*, i8*, i32, i8*, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @kfree(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
