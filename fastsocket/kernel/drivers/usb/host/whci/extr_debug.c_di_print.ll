; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_debug.c_di_print.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_debug.c_di_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.whc* }
%struct.whc = type { i32, %struct.di_buf_entry* }
%struct.di_buf_entry = type { i32, i64 }

@UWB_NUM_MAS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"DI[%d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"  availability: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"  %c%c key idx: %d dev addr: %d\0A\00", align 1
@WHC_DI_SECURE = common dso_local global i32 0, align 4
@WHC_DI_DISABLE = common dso_local global i32 0, align 4
@WHC_DI_KEY_IDX_MASK = common dso_local global i32 0, align 4
@WHC_DI_DEV_ADDR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @di_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @di_print(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.whc*, align 8
  %6 = alloca [72 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca %struct.di_buf_entry*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.whc*, %struct.whc** %10, align 8
  store %struct.whc* %11, %struct.whc** %5, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %67, %2
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.whc*, %struct.whc** %5, align 8
  %15 = getelementptr inbounds %struct.whc, %struct.whc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %70

18:                                               ; preds = %12
  %19 = load %struct.whc*, %struct.whc** %5, align 8
  %20 = getelementptr inbounds %struct.whc, %struct.whc* %19, i32 0, i32 1
  %21 = load %struct.di_buf_entry*, %struct.di_buf_entry** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.di_buf_entry, %struct.di_buf_entry* %21, i64 %23
  store %struct.di_buf_entry* %24, %struct.di_buf_entry** %8, align 8
  %25 = getelementptr inbounds [72 x i8], [72 x i8]* %6, i64 0, i64 0
  %26 = load %struct.di_buf_entry*, %struct.di_buf_entry** %8, align 8
  %27 = getelementptr inbounds %struct.di_buf_entry, %struct.di_buf_entry* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i64*
  %30 = load i32, i32* @UWB_NUM_MAS, align 4
  %31 = call i32 @bitmap_scnprintf(i8* %25, i32 72, i64* %29, i32 %30)
  %32 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %36 = getelementptr inbounds [72 x i8], [72 x i8]* %6, i64 0, i64 0
  %37 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  %38 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %39 = load %struct.di_buf_entry*, %struct.di_buf_entry** %8, align 8
  %40 = getelementptr inbounds %struct.di_buf_entry, %struct.di_buf_entry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @WHC_DI_SECURE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 83, i32 32
  %47 = load %struct.di_buf_entry*, %struct.di_buf_entry** %8, align 8
  %48 = getelementptr inbounds %struct.di_buf_entry, %struct.di_buf_entry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @WHC_DI_DISABLE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 68, i32 32
  %55 = load %struct.di_buf_entry*, %struct.di_buf_entry** %8, align 8
  %56 = getelementptr inbounds %struct.di_buf_entry, %struct.di_buf_entry* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @WHC_DI_KEY_IDX_MASK, align 4
  %59 = and i32 %57, %58
  %60 = ashr i32 %59, 8
  %61 = load %struct.di_buf_entry*, %struct.di_buf_entry** %8, align 8
  %62 = getelementptr inbounds %struct.di_buf_entry, %struct.di_buf_entry* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @WHC_DI_DEV_ADDR_MASK, align 4
  %65 = and i32 %63, %64
  %66 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %54, i32 %60, i32 %65)
  br label %67

67:                                               ; preds = %18
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %12

70:                                               ; preds = %12
  ret i32 0
}

declare dso_local i32 @bitmap_scnprintf(i8*, i32, i64*, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
