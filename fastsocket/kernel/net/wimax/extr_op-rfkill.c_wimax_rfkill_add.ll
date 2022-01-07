; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wimax/extr_op-rfkill.c_wimax_rfkill_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wimax/extr_op-rfkill.c_wimax_rfkill_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wimax_dev = type { %struct.rfkill*, i32, i32*, i32 }
%struct.rfkill = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"(wimax_dev %p)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@RFKILL_TYPE_WIMAX = common dso_local global i32 0, align 4
@wimax_rfkill_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"rfkill %p\0A\00", align 1
@WIMAX_RF_ON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"(wimax_dev %p) = 0\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"(wimax_dev %p) = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wimax_rfkill_add(%struct.wimax_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wimax_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rfkill*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.wimax_dev* %0, %struct.wimax_dev** %3, align 8
  %7 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %8 = call %struct.device* @wimax_dev_to_dev(%struct.wimax_dev* %7)
  store %struct.device* %8, %struct.device** %6, align 8
  %9 = load %struct.device*, %struct.device** %6, align 8
  %10 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %11 = call i32 @d_fnstart(i32 3, %struct.device* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.wimax_dev* %10)
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  %14 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %15 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = load i32, i32* @RFKILL_TYPE_WIMAX, align 4
  %19 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %20 = call %struct.rfkill* @rfkill_alloc(i32 %16, %struct.device* %17, i32 %18, i32* @wimax_rfkill_ops, %struct.wimax_dev* %19)
  store %struct.rfkill* %20, %struct.rfkill** %5, align 8
  %21 = load %struct.rfkill*, %struct.rfkill** %5, align 8
  %22 = icmp eq %struct.rfkill* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %56

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = load %struct.rfkill*, %struct.rfkill** %5, align 8
  %27 = call i32 @d_printf(i32 1, %struct.device* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.rfkill* %26)
  %28 = load %struct.rfkill*, %struct.rfkill** %5, align 8
  %29 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %30 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %29, i32 0, i32 0
  store %struct.rfkill* %28, %struct.rfkill** %30, align 8
  %31 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %32 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %31, i32 0, i32 0
  %33 = load %struct.rfkill*, %struct.rfkill** %32, align 8
  %34 = call i32 @rfkill_register(%struct.rfkill* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  br label %51

38:                                               ; preds = %24
  %39 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %40 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @WIMAX_RF_ON, align 4
  %45 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %46 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %43, %38
  %48 = load %struct.device*, %struct.device** %6, align 8
  %49 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %50 = call i32 (i32, %struct.device*, i8*, %struct.wimax_dev*, ...) @d_fnend(i32 3, %struct.device* %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), %struct.wimax_dev* %49)
  store i32 0, i32* %2, align 4
  br label %62

51:                                               ; preds = %37
  %52 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %53 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %52, i32 0, i32 0
  %54 = load %struct.rfkill*, %struct.rfkill** %53, align 8
  %55 = call i32 @rfkill_destroy(%struct.rfkill* %54)
  br label %56

56:                                               ; preds = %51, %23
  %57 = load %struct.device*, %struct.device** %6, align 8
  %58 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 (i32, %struct.device*, i8*, %struct.wimax_dev*, ...) @d_fnend(i32 3, %struct.device* %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), %struct.wimax_dev* %58, i32 %59)
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %56, %47
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.device* @wimax_dev_to_dev(%struct.wimax_dev*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.wimax_dev*) #1

declare dso_local %struct.rfkill* @rfkill_alloc(i32, %struct.device*, i32, i32*, %struct.wimax_dev*) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, %struct.rfkill*) #1

declare dso_local i32 @rfkill_register(%struct.rfkill*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.wimax_dev*, ...) #1

declare dso_local i32 @rfkill_destroy(%struct.rfkill*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
