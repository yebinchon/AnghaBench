; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_api.c_fastsocket_shutdown_listen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_api.c_fastsocket_shutdown_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsocket_ioctl_arg = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.file = type { i32 }

@ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Accept file don't exist!\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@FMODE_FASTSOCKET = common dso_local global i32 0, align 4
@DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Shutdown fastsocket %d\0A\00", align 1
@INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Shutdown non-fastsocket %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsocket_ioctl_arg*)* @fastsocket_shutdown_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fastsocket_shutdown_listen(%struct.fsocket_ioctl_arg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsocket_ioctl_arg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  store %struct.fsocket_ioctl_arg* %0, %struct.fsocket_ioctl_arg** %3, align 8
  %7 = load %struct.fsocket_ioctl_arg*, %struct.fsocket_ioctl_arg** %3, align 8
  %8 = getelementptr inbounds %struct.fsocket_ioctl_arg, %struct.fsocket_ioctl_arg* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.file* @fget_light(i32 %9, i32* %6)
  store %struct.file* %10, %struct.file** %5, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = icmp eq %struct.file* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load i32, i32* @ERR, align 4
  %15 = call i32 @EPRINTK_LIMIT(i32 %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %58

18:                                               ; preds = %1
  %19 = load %struct.file*, %struct.file** %5, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @FMODE_FASTSOCKET, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %18
  %26 = load i32, i32* @DEBUG, align 4
  %27 = load %struct.fsocket_ioctl_arg*, %struct.fsocket_ioctl_arg** %3, align 8
  %28 = getelementptr inbounds %struct.fsocket_ioctl_arg, %struct.fsocket_ioctl_arg* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @DPRINTK(i32 %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load %struct.file*, %struct.file** %5, align 8
  %32 = load %struct.fsocket_ioctl_arg*, %struct.fsocket_ioctl_arg** %3, align 8
  %33 = getelementptr inbounds %struct.fsocket_ioctl_arg, %struct.fsocket_ioctl_arg* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @fsocket_shutdown_listen(%struct.file* %31, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %53

38:                                               ; preds = %18
  %39 = load i32, i32* @INFO, align 4
  %40 = load %struct.fsocket_ioctl_arg*, %struct.fsocket_ioctl_arg** %3, align 8
  %41 = getelementptr inbounds %struct.fsocket_ioctl_arg, %struct.fsocket_ioctl_arg* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @DPRINTK(i32 %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load %struct.fsocket_ioctl_arg*, %struct.fsocket_ioctl_arg** %3, align 8
  %45 = getelementptr inbounds %struct.fsocket_ioctl_arg, %struct.fsocket_ioctl_arg* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.fsocket_ioctl_arg*, %struct.fsocket_ioctl_arg** %3, align 8
  %48 = getelementptr inbounds %struct.fsocket_ioctl_arg, %struct.fsocket_ioctl_arg* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @sys_shutdown(i32 %46, i32 %51)
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %38, %25
  %54 = load %struct.file*, %struct.file** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @fput_light(%struct.file* %54, i32 %55)
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %53, %13
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.file* @fget_light(i32, i32*) #1

declare dso_local i32 @EPRINTK_LIMIT(i32, i8*) #1

declare dso_local i32 @DPRINTK(i32, i8*, i32) #1

declare dso_local i32 @fsocket_shutdown_listen(%struct.file*, i32) #1

declare dso_local i32 @sys_shutdown(i32, i32) #1

declare dso_local i32 @fput_light(%struct.file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
