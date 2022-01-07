; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_usbip_common.c_usbip_header_correct_endian.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_usbip_common.c_usbip_header_correct_endian.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbip_header = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"unknown command in pdu header: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbip_header_correct_endian(%struct.usbip_header* %0, i32 %1) #0 {
  %3 = alloca %struct.usbip_header*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.usbip_header* %0, %struct.usbip_header** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load %struct.usbip_header*, %struct.usbip_header** %3, align 8
  %10 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %8, %2
  %14 = load %struct.usbip_header*, %struct.usbip_header** %3, align 8
  %15 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %14, i32 0, i32 1
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @correct_endian_basic(%struct.TYPE_4__* %15, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %13
  %21 = load %struct.usbip_header*, %struct.usbip_header** %3, align 8
  %22 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %20, %13
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %51 [
    i32 131, label %27
    i32 129, label %33
    i32 130, label %39
    i32 128, label %45
  ]

27:                                               ; preds = %25
  %28 = load %struct.usbip_header*, %struct.usbip_header** %3, align 8
  %29 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @correct_endian_cmd_submit(i32* %30, i32 %31)
  br label %54

33:                                               ; preds = %25
  %34 = load %struct.usbip_header*, %struct.usbip_header** %3, align 8
  %35 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @correct_endian_ret_submit(i32* %36, i32 %37)
  br label %54

39:                                               ; preds = %25
  %40 = load %struct.usbip_header*, %struct.usbip_header** %3, align 8
  %41 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @correct_endian_cmd_unlink(i32* %42, i32 %43)
  br label %54

45:                                               ; preds = %25
  %46 = load %struct.usbip_header*, %struct.usbip_header** %3, align 8
  %47 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @correct_endian_ret_unlink(i32* %48, i32 %49)
  br label %54

51:                                               ; preds = %25
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %51, %45, %39, %33, %27
  ret void
}

declare dso_local i32 @correct_endian_basic(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @correct_endian_cmd_submit(i32*, i32) #1

declare dso_local i32 @correct_endian_ret_submit(i32*, i32) #1

declare dso_local i32 @correct_endian_cmd_unlink(i32*, i32) #1

declare dso_local i32 @correct_endian_ret_unlink(i32*, i32) #1

declare dso_local i32 @err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
