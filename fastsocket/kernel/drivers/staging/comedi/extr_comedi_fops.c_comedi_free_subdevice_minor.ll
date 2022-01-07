; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedi_fops.c_comedi_free_subdevice_minor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedi_fops.c_comedi_free_subdevice_minor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device_file_info = type { i32 }
%struct.comedi_subdevice = type { i64, i32* }

@COMEDI_NUM_MINORS = common dso_local global i64 0, align 8
@COMEDI_FIRST_SUBDEVICE_MINOR = common dso_local global i64 0, align 8
@comedi_file_info_table_lock = common dso_local global i32 0, align 4
@comedi_file_info_table = common dso_local global %struct.comedi_device_file_info** null, align 8
@comedi_class = common dso_local global i32 0, align 4
@COMEDI_MAJOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @comedi_free_subdevice_minor(%struct.comedi_subdevice* %0) #0 {
  %2 = alloca %struct.comedi_subdevice*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.comedi_device_file_info*, align 8
  store %struct.comedi_subdevice* %0, %struct.comedi_subdevice** %2, align 8
  %5 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %2, align 8
  %6 = icmp eq %struct.comedi_subdevice* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %61

8:                                                ; preds = %1
  %9 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %2, align 8
  %10 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %61

14:                                               ; preds = %8
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %2, align 8
  %16 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @COMEDI_NUM_MINORS, align 8
  %19 = icmp uge i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %2, align 8
  %23 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @COMEDI_FIRST_SUBDEVICE_MINOR, align 8
  %26 = icmp ult i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @spin_lock_irqsave(i32* @comedi_file_info_table_lock, i64 %29)
  %31 = load %struct.comedi_device_file_info**, %struct.comedi_device_file_info*** @comedi_file_info_table, align 8
  %32 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %2, align 8
  %33 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %31, i64 %34
  %36 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %35, align 8
  store %struct.comedi_device_file_info* %36, %struct.comedi_device_file_info** %4, align 8
  %37 = load %struct.comedi_device_file_info**, %struct.comedi_device_file_info*** @comedi_file_info_table, align 8
  %38 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %2, align 8
  %39 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %37, i64 %40
  store %struct.comedi_device_file_info* null, %struct.comedi_device_file_info** %41, align 8
  %42 = load i64, i64* %3, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* @comedi_file_info_table_lock, i64 %42)
  %44 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %2, align 8
  %45 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %14
  %49 = load i32, i32* @comedi_class, align 4
  %50 = load i32, i32* @COMEDI_MAJOR, align 4
  %51 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %2, align 8
  %52 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @MKDEV(i32 %50, i64 %53)
  %55 = call i32 @device_destroy(i32 %49, i32 %54)
  %56 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %2, align 8
  %57 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %56, i32 0, i32 1
  store i32* null, i32** %57, align 8
  br label %58

58:                                               ; preds = %48, %14
  %59 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %4, align 8
  %60 = call i32 @kfree(%struct.comedi_device_file_info* %59)
  br label %61

61:                                               ; preds = %58, %13, %7
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i64) #1

declare dso_local i32 @kfree(%struct.comedi_device_file_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
