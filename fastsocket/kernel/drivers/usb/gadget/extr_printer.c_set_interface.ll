; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_printer.c_set_interface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_printer.c_set_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printer_dev = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"can't change interfaces\0A\00", align 1
@ESPIPE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Using interface %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.printer_dev*, i32)* @set_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_interface(%struct.printer_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.printer_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.printer_dev* %0, %struct.printer_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.printer_dev*, %struct.printer_dev** %4, align 8
  %8 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @gadget_is_sa1100(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.printer_dev*, %struct.printer_dev** %4, align 8
  %14 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.printer_dev*, %struct.printer_dev** %4, align 8
  %19 = call i32 (%struct.printer_dev*, i8*, ...) @INFO(%struct.printer_dev* %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ESPIPE, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %55

22:                                               ; preds = %12, %2
  %23 = load %struct.printer_dev*, %struct.printer_dev** %4, align 8
  %24 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %29 [
    i32 128, label %26
  ]

26:                                               ; preds = %22
  %27 = load %struct.printer_dev*, %struct.printer_dev** %4, align 8
  %28 = call i32 @printer_reset_interface(%struct.printer_dev* %27)
  br label %29

29:                                               ; preds = %22, %26
  %30 = load i32, i32* %5, align 4
  switch i32 %30, label %43 [
    i32 128, label %31
  ]

31:                                               ; preds = %29
  %32 = load %struct.printer_dev*, %struct.printer_dev** %4, align 8
  %33 = call i32 @set_printer_interface(%struct.printer_dev* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.printer_dev*, %struct.printer_dev** %4, align 8
  %38 = call i32 @printer_reset_interface(%struct.printer_dev* %37)
  br label %42

39:                                               ; preds = %31
  %40 = load %struct.printer_dev*, %struct.printer_dev** %4, align 8
  %41 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %40, i32 0, i32 0
  store i32 128, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %36
  br label %46

43:                                               ; preds = %29
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %43, %42
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load %struct.printer_dev*, %struct.printer_dev** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 (%struct.printer_dev*, i8*, ...) @INFO(%struct.printer_dev* %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %49, %46
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %17
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @gadget_is_sa1100(i32) #1

declare dso_local i32 @INFO(%struct.printer_dev*, i8*, ...) #1

declare dso_local i32 @printer_reset_interface(%struct.printer_dev*) #1

declare dso_local i32 @set_printer_interface(%struct.printer_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
