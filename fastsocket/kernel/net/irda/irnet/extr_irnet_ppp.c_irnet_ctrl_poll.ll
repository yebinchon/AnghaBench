; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/irnet/extr_irnet_ppp.c_irnet_ctrl_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/irnet/extr_irnet_ppp.c_irnet_ctrl_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i64, i32, i32* }
%struct.file = type { i32 }

@CTRL_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"(ap=0x%p)\0A\00", align 1
@irnet_events = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c" - mask=0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.file*, i32*)* @irnet_ctrl_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irnet_ctrl_poll(%struct.TYPE_6__* %0, %struct.file* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* @CTRL_TRACE, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = call i32 @DENTER(i32 %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %9)
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @poll_wait(%struct.file* %11, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @irnet_events, i32 0, i32 1), i32* %12)
  %14 = load i32, i32* @POLLOUT, align 4
  %15 = load i32, i32* @POLLWRNORM, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @irnet_events, i32 0, i32 0), align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load i32, i32* @POLLIN, align 4
  %24 = load i32, i32* @POLLRDNORM, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %22, %3
  %29 = load i32, i32* @CTRL_TRACE, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @DEXIT(i32 %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %7, align 4
  ret i32 %32
}

declare dso_local i32 @DENTER(i32, i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @DEXIT(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
