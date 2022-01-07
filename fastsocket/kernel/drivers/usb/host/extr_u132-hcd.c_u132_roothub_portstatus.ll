; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_u132-hcd.c_u132_roothub_portstatus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_u132-hcd.c_u132_roothub_portstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.u132 = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@roothub = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [30 x i8] c"Port %d Status Change = %08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.u132*, i32*, i32)* @u132_roothub_portstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u132_roothub_portstatus(%struct.u132* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.u132*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.u132* %0, %struct.u132** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.u132*, %struct.u132** %5, align 8
  %16 = getelementptr inbounds %struct.u132, %struct.u132* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13, %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %50

22:                                               ; preds = %13
  %23 = load i32, i32* %7, align 4
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %25 = load %struct.u132*, %struct.u132** %5, align 8
  %26 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @roothub, i32 0, i32 0), align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @u132_read_pcimem(%struct.u132* %25, i32 %30, i32* %9)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @cpu_to_le32(i32 %32)
  %34 = load i32*, i32** %6, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %22
  %40 = load %struct.u132*, %struct.u132** %5, align 8
  %41 = getelementptr inbounds %struct.u132, %struct.u132* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %8, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_info(i32* %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %46)
  br label %48

48:                                               ; preds = %39, %22
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %19
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @u132_read_pcimem(%struct.u132*, i32, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
