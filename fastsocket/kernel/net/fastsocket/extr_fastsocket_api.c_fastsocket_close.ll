; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_api.c_fastsocket_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_api.c_fastsocket_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsocket_ioctl_arg = type { i32 }
%struct.file = type { i32 }

@DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Close fastsocket %d\0A\00", align 1
@ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Close file don't exist!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FMODE_FASTSOCKET = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Close non fastsocket %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsocket_ioctl_arg*)* @fastsocket_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fastsocket_close(%struct.fsocket_ioctl_arg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsocket_ioctl_arg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  store %struct.fsocket_ioctl_arg* %0, %struct.fsocket_ioctl_arg** %3, align 8
  %7 = load i32, i32* @DEBUG, align 4
  %8 = load %struct.fsocket_ioctl_arg*, %struct.fsocket_ioctl_arg** %3, align 8
  %9 = getelementptr inbounds %struct.fsocket_ioctl_arg, %struct.fsocket_ioctl_arg* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @DPRINTK(i32 %7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.fsocket_ioctl_arg*, %struct.fsocket_ioctl_arg** %3, align 8
  %13 = getelementptr inbounds %struct.fsocket_ioctl_arg, %struct.fsocket_ioctl_arg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.file* @fget_light(i32 %14, i32* %6)
  store %struct.file* %15, %struct.file** %5, align 8
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = icmp eq %struct.file* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load i32, i32* @ERR, align 4
  %20 = call i32 @EPRINTK_LIMIT(i32 %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %53

23:                                               ; preds = %1
  %24 = load %struct.file*, %struct.file** %5, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @FMODE_FASTSOCKET, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load %struct.file*, %struct.file** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @fput_light(%struct.file* %31, i32 %32)
  %34 = load %struct.fsocket_ioctl_arg*, %struct.fsocket_ioctl_arg** %3, align 8
  %35 = getelementptr inbounds %struct.fsocket_ioctl_arg, %struct.fsocket_ioctl_arg* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @fsocket_close(i32 %36)
  store i32 %37, i32* %4, align 4
  br label %51

38:                                               ; preds = %23
  %39 = load %struct.file*, %struct.file** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @fput_light(%struct.file* %39, i32 %40)
  %42 = load i32, i32* @INFO, align 4
  %43 = load %struct.fsocket_ioctl_arg*, %struct.fsocket_ioctl_arg** %3, align 8
  %44 = getelementptr inbounds %struct.fsocket_ioctl_arg, %struct.fsocket_ioctl_arg* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @DPRINTK(i32 %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load %struct.fsocket_ioctl_arg*, %struct.fsocket_ioctl_arg** %3, align 8
  %48 = getelementptr inbounds %struct.fsocket_ioctl_arg, %struct.fsocket_ioctl_arg* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @sys_close(i32 %49)
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %38, %30
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %18
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @DPRINTK(i32, i8*, i32) #1

declare dso_local %struct.file* @fget_light(i32, i32*) #1

declare dso_local i32 @EPRINTK_LIMIT(i32, i8*) #1

declare dso_local i32 @fput_light(%struct.file*, i32) #1

declare dso_local i32 @fsocket_close(i32) #1

declare dso_local i32 @sys_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
