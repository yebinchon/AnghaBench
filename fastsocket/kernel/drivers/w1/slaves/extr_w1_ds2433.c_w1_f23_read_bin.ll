; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/slaves/extr_w1_ds2433.c_w1_f23_read_bin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/slaves/extr_w1_ds2433.c_w1_f23_read_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.w1_slave = type { %struct.TYPE_3__*, %struct.w1_f23_data* }
%struct.TYPE_3__ = type { i32 }
%struct.w1_f23_data = type { i32* }

@W1_EEPROM_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@W1_F23_READ_EEPROM = common dso_local global i64 0, align 8
@W1_PAGE_BITS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @w1_f23_read_bin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @w1_f23_read_bin(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.w1_slave*, align 8
  %15 = alloca [3 x i64], align 16
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load %struct.kobject*, %struct.kobject** %9, align 8
  %17 = call %struct.w1_slave* @kobj_to_w1_slave(%struct.kobject* %16)
  store %struct.w1_slave* %17, %struct.w1_slave** %14, align 8
  %18 = load i64, i64* %12, align 8
  %19 = load i64, i64* %13, align 8
  %20 = load i32, i32* @W1_EEPROM_SIZE, align 4
  %21 = call i64 @w1_f23_fix_count(i64 %18, i64 %19, i32 %20)
  store i64 %21, i64* %13, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  store i64 0, i64* %7, align 8
  br label %63

24:                                               ; preds = %6
  %25 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %26 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %31 = call i64 @w1_reset_select_slave(%struct.w1_slave* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i64, i64* @EIO, align 8
  %35 = sub i64 0, %34
  store i64 %35, i64* %13, align 8
  br label %56

36:                                               ; preds = %24
  %37 = load i64, i64* @W1_F23_READ_EEPROM, align 8
  %38 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 0
  store i64 %37, i64* %38, align 16
  %39 = load i64, i64* %12, align 8
  %40 = and i64 %39, 255
  %41 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 1
  store i64 %40, i64* %41, align 8
  %42 = load i64, i64* %12, align 8
  %43 = lshr i64 %42, 8
  %44 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 2
  store i64 %43, i64* %44, align 16
  %45 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %46 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 0
  %49 = call i32 @w1_write_block(%struct.TYPE_3__* %47, i64* %48, i32 3)
  %50 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %51 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = load i64, i64* %13, align 8
  %55 = call i32 @w1_read_block(%struct.TYPE_3__* %52, i8* %53, i64 %54)
  br label %56

56:                                               ; preds = %36, %33
  %57 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %58 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i64, i64* %13, align 8
  store i64 %62, i64* %7, align 8
  br label %63

63:                                               ; preds = %56, %23
  %64 = load i64, i64* %7, align 8
  ret i64 %64
}

declare dso_local %struct.w1_slave* @kobj_to_w1_slave(%struct.kobject*) #1

declare dso_local i64 @w1_f23_fix_count(i64, i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @w1_reset_select_slave(%struct.w1_slave*) #1

declare dso_local i32 @w1_write_block(%struct.TYPE_3__*, i64*, i32) #1

declare dso_local i32 @w1_read_block(%struct.TYPE_3__*, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
