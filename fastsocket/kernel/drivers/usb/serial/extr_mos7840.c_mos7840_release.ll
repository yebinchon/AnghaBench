; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_mos7840.c_mos7840_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_mos7840.c_mos7840_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { i32, i32* }
%struct.moschip_port = type { %struct.moschip_port*, %struct.moschip_port* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c" release :entering..........\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Invalid Handler\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"mos7840_port %d = %p\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Thank u :: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial*)* @mos7840_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mos7840_release(%struct.usb_serial* %0) #0 {
  %2 = alloca %struct.usb_serial*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.moschip_port*, align 8
  store %struct.usb_serial* %0, %struct.usb_serial** %2, align 8
  %5 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %6 = load %struct.usb_serial*, %struct.usb_serial** %2, align 8
  %7 = icmp ne %struct.usb_serial* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %48

10:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %43, %10
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.usb_serial*, %struct.usb_serial** %2, align 8
  %14 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %46

17:                                               ; preds = %11
  %18 = load %struct.usb_serial*, %struct.usb_serial** %2, align 8
  %19 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.moschip_port* @mos7840_get_port_private(i32 %24)
  store %struct.moschip_port* %25, %struct.moschip_port** %4, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.moschip_port*, %struct.moschip_port** %4, align 8
  %28 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %26, %struct.moschip_port* %27)
  %29 = load %struct.moschip_port*, %struct.moschip_port** %4, align 8
  %30 = icmp ne %struct.moschip_port* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %17
  %32 = load %struct.moschip_port*, %struct.moschip_port** %4, align 8
  %33 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %32, i32 0, i32 1
  %34 = load %struct.moschip_port*, %struct.moschip_port** %33, align 8
  %35 = call i32 @kfree(%struct.moschip_port* %34)
  %36 = load %struct.moschip_port*, %struct.moschip_port** %4, align 8
  %37 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %36, i32 0, i32 0
  %38 = load %struct.moschip_port*, %struct.moschip_port** %37, align 8
  %39 = call i32 @kfree(%struct.moschip_port* %38)
  %40 = load %struct.moschip_port*, %struct.moschip_port** %4, align 8
  %41 = call i32 @kfree(%struct.moschip_port* %40)
  br label %42

42:                                               ; preds = %31, %17
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %11

46:                                               ; preds = %11
  %47 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %8
  ret void
}

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local %struct.moschip_port* @mos7840_get_port_private(i32) #1

declare dso_local i32 @kfree(%struct.moschip_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
