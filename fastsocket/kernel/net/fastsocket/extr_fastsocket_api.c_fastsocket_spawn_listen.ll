; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_api.c_fastsocket_spawn_listen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_api.c_fastsocket_spawn_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsocket_ioctl_arg = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.file = type { i32 }

@DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Listen spawn listen fd %d\0A\00", align 1
@ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"fd [%d] doesn't exist!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FMODE_FASTSOCKET = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Spawn non fastsocket\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsocket_ioctl_arg*)* @fastsocket_spawn_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fastsocket_spawn_listen(%struct.fsocket_ioctl_arg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsocket_ioctl_arg*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fsocket_ioctl_arg* %0, %struct.fsocket_ioctl_arg** %3, align 8
  %9 = load i32, i32* @DEBUG, align 4
  %10 = load %struct.fsocket_ioctl_arg*, %struct.fsocket_ioctl_arg** %3, align 8
  %11 = getelementptr inbounds %struct.fsocket_ioctl_arg, %struct.fsocket_ioctl_arg* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i32, i8*, ...) @DPRINTK(i32 %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.fsocket_ioctl_arg*, %struct.fsocket_ioctl_arg** %3, align 8
  %15 = getelementptr inbounds %struct.fsocket_ioctl_arg, %struct.fsocket_ioctl_arg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.fsocket_ioctl_arg*, %struct.fsocket_ioctl_arg** %3, align 8
  %18 = getelementptr inbounds %struct.fsocket_ioctl_arg, %struct.fsocket_ioctl_arg* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call %struct.file* @fget_light(i32 %22, i32* %8)
  store %struct.file* %23, %struct.file** %4, align 8
  %24 = load %struct.file*, %struct.file** %4, align 8
  %25 = icmp eq %struct.file* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load i32, i32* @ERR, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @EPRINTK_LIMIT(i32 %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %54

32:                                               ; preds = %1
  %33 = load %struct.file*, %struct.file** %4, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @FMODE_FASTSOCKET, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.file*, %struct.file** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @fsocket_spawn(%struct.file* %40, i32 %41, i32 %42)
  store i32 %43, i32* %7, align 4
  br label %49

44:                                               ; preds = %32
  %45 = load i32, i32* @INFO, align 4
  %46 = call i32 (i32, i8*, ...) @DPRINTK(i32 %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %54

49:                                               ; preds = %39
  %50 = load %struct.file*, %struct.file** %4, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @fput_light(%struct.file* %50, i32 %51)
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %49, %44, %26
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @DPRINTK(i32, i8*, ...) #1

declare dso_local %struct.file* @fget_light(i32, i32*) #1

declare dso_local i32 @EPRINTK_LIMIT(i32, i8*, i32) #1

declare dso_local i32 @fsocket_spawn(%struct.file*, i32, i32) #1

declare dso_local i32 @fput_light(%struct.file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
