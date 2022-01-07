; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_usblp.c_usblp_cache_device_id_string.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_usblp.c_usblp_cache_device_id_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usblp = type { i8*, i32 }

@USBLP_DEVICE_ID_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"usblp%d: error = %d reading IEEE-1284 Device ID string\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"usblp%d Device ID string [len=%d]=\22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usblp*)* @usblp_cache_device_id_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usblp_cache_device_id_string(%struct.usblp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usblp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.usblp* %0, %struct.usblp** %3, align 8
  %6 = load %struct.usblp*, %struct.usblp** %3, align 8
  %7 = load %struct.usblp*, %struct.usblp** %3, align 8
  %8 = getelementptr inbounds %struct.usblp, %struct.usblp* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = load i32, i32* @USBLP_DEVICE_ID_SIZE, align 4
  %11 = sub nsw i32 %10, 1
  %12 = call i32 @usblp_get_id(%struct.usblp* %6, i32 0, i8* %9, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %1
  %16 = load %struct.usblp*, %struct.usblp** %3, align 8
  %17 = getelementptr inbounds %struct.usblp, %struct.usblp* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 (i8*, i32, i32, ...) @dbg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load %struct.usblp*, %struct.usblp** %3, align 8
  %22 = getelementptr inbounds %struct.usblp, %struct.usblp* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  store i8 0, i8* %24, align 1
  %25 = load %struct.usblp*, %struct.usblp** %3, align 8
  %26 = getelementptr inbounds %struct.usblp, %struct.usblp* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 0, i8* %28, align 1
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %66

31:                                               ; preds = %1
  %32 = load %struct.usblp*, %struct.usblp** %3, align 8
  %33 = getelementptr inbounds %struct.usblp, %struct.usblp* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @be16_to_cpu(i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 2
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  store i32 2, i32* %5, align 4
  br label %49

41:                                               ; preds = %31
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @USBLP_DEVICE_ID_SIZE, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* @USBLP_DEVICE_ID_SIZE, align 4
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %45, %41
  br label %49

49:                                               ; preds = %48, %40
  %50 = load %struct.usblp*, %struct.usblp** %3, align 8
  %51 = getelementptr inbounds %struct.usblp, %struct.usblp* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  store i8 0, i8* %55, align 1
  %56 = load %struct.usblp*, %struct.usblp** %3, align 8
  %57 = getelementptr inbounds %struct.usblp, %struct.usblp* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.usblp*, %struct.usblp** %3, align 8
  %61 = getelementptr inbounds %struct.usblp, %struct.usblp* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 2
  %64 = call i32 (i8*, i32, i32, ...) @dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %59, i8* %63)
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %49, %15
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @usblp_get_id(%struct.usblp*, i32, i8*, i32) #1

declare dso_local i32 @dbg(i8*, i32, i32, ...) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
