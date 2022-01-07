; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_api.c_fastsocket_socket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_api.c_fastsocket_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsocket_ioctl_arg = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Try to create fastsocket\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@SOCK_TYPE_MASK = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Create fastsocket %d\0A\00", align 1
@INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Create non fastsocket %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsocket_ioctl_arg*)* @fastsocket_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fastsocket_socket(%struct.fsocket_ioctl_arg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsocket_ioctl_arg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fsocket_ioctl_arg* %0, %struct.fsocket_ioctl_arg** %3, align 8
  %8 = load i32, i32* @DEBUG, align 4
  %9 = call i32 (i32, i8*, ...) @DPRINTK(i32 %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.fsocket_ioctl_arg*, %struct.fsocket_ioctl_arg** %3, align 8
  %11 = getelementptr inbounds %struct.fsocket_ioctl_arg, %struct.fsocket_ioctl_arg* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load %struct.fsocket_ioctl_arg*, %struct.fsocket_ioctl_arg** %3, align 8
  %16 = getelementptr inbounds %struct.fsocket_ioctl_arg, %struct.fsocket_ioctl_arg* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  %20 = load %struct.fsocket_ioctl_arg*, %struct.fsocket_ioctl_arg** %3, align 8
  %21 = getelementptr inbounds %struct.fsocket_ioctl_arg, %struct.fsocket_ioctl_arg* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @AF_INET, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %1
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @SOCK_TYPE_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @SOCK_STREAM, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @SOCK_TYPE_MASK, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  %39 = call i32 @fsocket_socket(i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* @DEBUG, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 (i32, i8*, ...) @DPRINTK(i32 %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %2, align 4
  br label %53

44:                                               ; preds = %28, %1
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @sys_socket(i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* @INFO, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 (i32, i8*, ...) @DPRINTK(i32 %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %44, %34
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @DPRINTK(i32, i8*, ...) #1

declare dso_local i32 @fsocket_socket(i32) #1

declare dso_local i32 @sys_socket(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
