; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/kcomedilib/extr_kcomedilib_main.c_comedi_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/kcomedilib/extr_kcomedilib_main.c_comedi_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device_file_info = type { %struct.comedi_device* }
%struct.comedi_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"/dev/comedi\00", align 1
@COMEDI_NUM_BOARD_MINORS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @comedi_open(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.comedi_device_file_info*, align 8
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @strncmp(i8* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 11)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %49

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 11
  %14 = call i32 @simple_strtoul(i8* %13, i32* null, i32 0)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @COMEDI_NUM_BOARD_MINORS, align 4
  %17 = icmp uge i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i8* null, i8** %2, align 8
  br label %49

19:                                               ; preds = %11
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.comedi_device_file_info* @comedi_get_device_file_info(i32 %20)
  store %struct.comedi_device_file_info* %21, %struct.comedi_device_file_info** %4, align 8
  %22 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %4, align 8
  %23 = icmp eq %struct.comedi_device_file_info* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i8* null, i8** %2, align 8
  br label %49

25:                                               ; preds = %19
  %26 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %4, align 8
  %27 = getelementptr inbounds %struct.comedi_device_file_info, %struct.comedi_device_file_info* %26, i32 0, i32 0
  %28 = load %struct.comedi_device*, %struct.comedi_device** %27, align 8
  store %struct.comedi_device* %28, %struct.comedi_device** %5, align 8
  %29 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %30 = icmp eq %struct.comedi_device* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31, %25
  store i8* null, i8** %2, align 8
  br label %49

37:                                               ; preds = %31
  %38 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %39 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @try_module_get(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  store i8* null, i8** %2, align 8
  br label %49

46:                                               ; preds = %37
  %47 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %48 = bitcast %struct.comedi_device* %47 to i8*
  store i8* %48, i8** %2, align 8
  br label %49

49:                                               ; preds = %46, %45, %36, %24, %18, %10
  %50 = load i8*, i8** %2, align 8
  ret i8* %50
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local %struct.comedi_device_file_info* @comedi_get_device_file_info(i32) #1

declare dso_local i32 @try_module_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
