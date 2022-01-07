; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_wusb.c_whc_set_ptk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_wusb.c_whc_set_ptk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { i32 }
%struct.whc = type { i32, %struct.di_buf_entry* }
%struct.di_buf_entry = type { i32 }

@WHC_DI_KEY_IDX_MASK = common dso_local global i32 0, align 4
@WHC_DI_SECURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @whc_set_ptk(%struct.wusbhc* %0, i64 %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.wusbhc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.whc*, align 8
  %12 = alloca %struct.di_buf_entry*, align 8
  %13 = alloca i32, align 4
  store %struct.wusbhc* %0, %struct.wusbhc** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load %struct.wusbhc*, %struct.wusbhc** %6, align 8
  %15 = call %struct.whc* @wusbhc_to_whc(%struct.wusbhc* %14)
  store %struct.whc* %15, %struct.whc** %11, align 8
  %16 = load %struct.whc*, %struct.whc** %11, align 8
  %17 = getelementptr inbounds %struct.whc, %struct.whc* %16, i32 0, i32 1
  %18 = load %struct.di_buf_entry*, %struct.di_buf_entry** %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds %struct.di_buf_entry, %struct.di_buf_entry* %18, i64 %19
  store %struct.di_buf_entry* %20, %struct.di_buf_entry** %12, align 8
  %21 = load %struct.whc*, %struct.whc** %11, align 8
  %22 = getelementptr inbounds %struct.whc, %struct.whc* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load i8*, i8** %9, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %51

26:                                               ; preds = %5
  %27 = load %struct.whc*, %struct.whc** %11, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @whc_set_key(%struct.whc* %27, i64 %28, i32 %29, i8* %30, i64 %31, i32 0)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %62

36:                                               ; preds = %26
  %37 = load i32, i32* @WHC_DI_KEY_IDX_MASK, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.di_buf_entry*, %struct.di_buf_entry** %12, align 8
  %40 = getelementptr inbounds %struct.di_buf_entry, %struct.di_buf_entry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* @WHC_DI_SECURE, align 4
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @WHC_DI_KEY_IDX(i64 %44)
  %46 = or i32 %43, %45
  %47 = load %struct.di_buf_entry*, %struct.di_buf_entry** %12, align 8
  %48 = getelementptr inbounds %struct.di_buf_entry, %struct.di_buf_entry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %58

51:                                               ; preds = %5
  %52 = load i32, i32* @WHC_DI_SECURE, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.di_buf_entry*, %struct.di_buf_entry** %12, align 8
  %55 = getelementptr inbounds %struct.di_buf_entry, %struct.di_buf_entry* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %51, %36
  %59 = load %struct.whc*, %struct.whc** %11, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @whc_update_di(%struct.whc* %59, i64 %60)
  store i32 %61, i32* %13, align 4
  br label %62

62:                                               ; preds = %58, %35
  %63 = load %struct.whc*, %struct.whc** %11, align 8
  %64 = getelementptr inbounds %struct.whc, %struct.whc* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load i32, i32* %13, align 4
  ret i32 %66
}

declare dso_local %struct.whc* @wusbhc_to_whc(%struct.wusbhc*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @whc_set_key(%struct.whc*, i64, i32, i8*, i64, i32) #1

declare dso_local i32 @WHC_DI_KEY_IDX(i64) #1

declare dso_local i32 @whc_update_di(%struct.whc*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
