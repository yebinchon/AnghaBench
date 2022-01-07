; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedi_fops.c_comedi_free_board_minor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedi_fops.c_comedi_free_board_minor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device_file_info = type { i32, i64, %struct.comedi_device_file_info* }
%struct.comedi_device = type { i32, i64, %struct.comedi_device* }

@COMEDI_NUM_BOARD_MINORS = common dso_local global i32 0, align 4
@comedi_file_info_table_lock = common dso_local global i32 0, align 4
@comedi_file_info_table = common dso_local global %struct.comedi_device_file_info** null, align 8
@comedi_class = common dso_local global i32 0, align 4
@COMEDI_MAJOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @comedi_free_board_minor(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.comedi_device_file_info*, align 8
  %5 = alloca %struct.comedi_device*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @COMEDI_NUM_BOARD_MINORS, align 4
  %8 = icmp uge i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @spin_lock_irqsave(i32* @comedi_file_info_table_lock, i64 %11)
  %13 = load %struct.comedi_device_file_info**, %struct.comedi_device_file_info*** @comedi_file_info_table, align 8
  %14 = load i32, i32* %2, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %13, i64 %15
  %17 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %16, align 8
  store %struct.comedi_device_file_info* %17, %struct.comedi_device_file_info** %4, align 8
  %18 = load %struct.comedi_device_file_info**, %struct.comedi_device_file_info*** @comedi_file_info_table, align 8
  %19 = load i32, i32* %2, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %18, i64 %20
  store %struct.comedi_device_file_info* null, %struct.comedi_device_file_info** %21, align 8
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* @comedi_file_info_table_lock, i64 %22)
  %24 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %4, align 8
  %25 = icmp ne %struct.comedi_device_file_info* %24, null
  br i1 %25, label %26, label %56

26:                                               ; preds = %1
  %27 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %4, align 8
  %28 = getelementptr inbounds %struct.comedi_device_file_info, %struct.comedi_device_file_info* %27, i32 0, i32 2
  %29 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %28, align 8
  %30 = bitcast %struct.comedi_device_file_info* %29 to %struct.comedi_device*
  store %struct.comedi_device* %30, %struct.comedi_device** %5, align 8
  %31 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %32 = icmp ne %struct.comedi_device* %31, null
  br i1 %32, label %33, label %53

33:                                               ; preds = %26
  %34 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %35 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load i32, i32* @comedi_class, align 4
  %40 = load i32, i32* @COMEDI_MAJOR, align 4
  %41 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %42 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @MKDEV(i32 %40, i32 %43)
  %45 = call i32 @device_destroy(i32 %39, i32 %44)
  br label %46

46:                                               ; preds = %38, %33
  %47 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %48 = bitcast %struct.comedi_device* %47 to %struct.comedi_device_file_info*
  %49 = call i32 @comedi_device_cleanup(%struct.comedi_device_file_info* %48)
  %50 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %51 = bitcast %struct.comedi_device* %50 to %struct.comedi_device_file_info*
  %52 = call i32 @kfree(%struct.comedi_device_file_info* %51)
  br label %53

53:                                               ; preds = %46, %26
  %54 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %4, align 8
  %55 = call i32 @kfree(%struct.comedi_device_file_info* %54)
  br label %56

56:                                               ; preds = %53, %1
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @comedi_device_cleanup(%struct.comedi_device_file_info*) #1

declare dso_local i32 @kfree(%struct.comedi_device_file_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
