; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/irnet/extr_irnet_ppp.c_dev_irnet_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/irnet/extr_irnet_ppp.c_dev_irnet_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64 }
%struct.irnet_socket = type { i32 }

@FS_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"(file=0x%p, ap=0x%p)\0A\00", align 1
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@FS_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"ap is NULL !!!\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c" - mask=0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @dev_irnet_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_irnet_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.irnet_socket*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.irnet_socket*
  store %struct.irnet_socket* %10, %struct.irnet_socket** %5, align 8
  %11 = load i32, i32* @FS_TRACE, align 4
  %12 = load %struct.file*, %struct.file** %3, align 8
  %13 = load %struct.irnet_socket*, %struct.irnet_socket** %5, align 8
  %14 = call i32 @DENTER(i32 %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.file* %12, %struct.irnet_socket* %13)
  %15 = load i32, i32* @POLLOUT, align 4
  %16 = load i32, i32* @POLLWRNORM, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.irnet_socket*, %struct.irnet_socket** %5, align 8
  %19 = icmp eq %struct.irnet_socket* %18, null
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @FS_ERROR, align 4
  %23 = call i32 @DABORT(i32 %20, i32 %21, i32 %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.irnet_socket*, %struct.irnet_socket** %5, align 8
  %25 = getelementptr inbounds %struct.irnet_socket, %struct.irnet_socket* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %2
  %29 = load %struct.irnet_socket*, %struct.irnet_socket** %5, align 8
  %30 = load %struct.file*, %struct.file** %3, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @irnet_ctrl_poll(%struct.irnet_socket* %29, %struct.file* %30, i32* %31)
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %28, %2
  %36 = load i32, i32* @FS_TRACE, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @DEXIT(i32 %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i32 @DENTER(i32, i8*, %struct.file*, %struct.irnet_socket*) #1

declare dso_local i32 @DABORT(i32, i32, i32, i8*) #1

declare dso_local i32 @irnet_ctrl_poll(%struct.irnet_socket*, %struct.file*, i32*) #1

declare dso_local i32 @DEXIT(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
