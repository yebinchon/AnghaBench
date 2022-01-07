; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_serial2002.c_serial_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_serial2002.c_serial_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.serial_data = type { i32, i32, i8* }

@is_invalid = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"serial2002 error\0A\00", align 1
@is_digital = common dso_local global i8* null, align 8
@is_channel = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i8* } (%struct.file*, i32)* @serial_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i8* } @serial_read(%struct.file* %0, i32 %1) #0 {
  %3 = alloca %struct.serial_data, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** @is_invalid, align 8
  %9 = getelementptr inbounds %struct.serial_data, %struct.serial_data* %3, i32 0, i32 2
  store i8* %8, i8** %9, align 8
  %10 = getelementptr inbounds %struct.serial_data, %struct.serial_data* %3, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = getelementptr inbounds %struct.serial_data, %struct.serial_data* %3, i32 0, i32 1
  store i32 0, i32* %11, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %2, %66
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @tty_read(%struct.file* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = call i32 @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %67

22:                                               ; preds = %12
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, 128
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.serial_data, %struct.serial_data* %3, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 7
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 127
  %32 = or i32 %29, %31
  %33 = getelementptr inbounds %struct.serial_data, %struct.serial_data* %3, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  br label %65

34:                                               ; preds = %22
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = ashr i32 %38, 5
  %40 = and i32 %39, 3
  switch i32 %40, label %49 [
    i32 0, label %41
    i32 1, label %45
  ]

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.serial_data, %struct.serial_data* %3, i32 0, i32 1
  store i32 0, i32* %42, align 4
  %43 = load i8*, i8** @is_digital, align 8
  %44 = getelementptr inbounds %struct.serial_data, %struct.serial_data* %3, i32 0, i32 2
  store i8* %43, i8** %44, align 8
  br label %49

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.serial_data, %struct.serial_data* %3, i32 0, i32 1
  store i32 1, i32* %46, align 4
  %47 = load i8*, i8** @is_digital, align 8
  %48 = getelementptr inbounds %struct.serial_data, %struct.serial_data* %3, i32 0, i32 2
  store i8* %47, i8** %48, align 8
  br label %49

49:                                               ; preds = %37, %45, %41
  br label %61

50:                                               ; preds = %34
  %51 = getelementptr inbounds %struct.serial_data, %struct.serial_data* %3, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 2
  %54 = load i32, i32* %7, align 4
  %55 = and i32 %54, 96
  %56 = ashr i32 %55, 5
  %57 = or i32 %53, %56
  %58 = getelementptr inbounds %struct.serial_data, %struct.serial_data* %3, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  %59 = load i8*, i8** @is_channel, align 8
  %60 = getelementptr inbounds %struct.serial_data, %struct.serial_data* %3, i32 0, i32 2
  store i8* %59, i8** %60, align 8
  br label %61

61:                                               ; preds = %50, %49
  %62 = load i32, i32* %7, align 4
  %63 = and i32 %62, 31
  %64 = getelementptr inbounds %struct.serial_data, %struct.serial_data* %3, i32 0, i32 0
  store i32 %63, i32* %64, align 8
  br label %67

65:                                               ; preds = %26
  br label %66

66:                                               ; preds = %65
  br label %12

67:                                               ; preds = %61, %20
  %68 = bitcast %struct.serial_data* %3 to { i64, i8* }*
  %69 = load { i64, i8* }, { i64, i8* }* %68, align 8
  ret { i64, i8* } %69
}

declare dso_local i32 @tty_read(%struct.file*, i32) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
