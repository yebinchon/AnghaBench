; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_alauda.c_alauda_read_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_alauda.c_alauda_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32 }
%struct.TYPE_2__ = type { i32 }

@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i32, i32, i32, i8*)* @alauda_read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alauda_read_block(%struct.us_data* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.us_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_2__, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %18 = load %struct.us_data*, %struct.us_data** %7, align 8
  %19 = call i32 @MEDIA_INFO(%struct.us_data* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %14, align 4
  %23 = load %struct.us_data*, %struct.us_data** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i8*, i8** %11, align 8
  %28 = call i32 @alauda_read_block_raw(%struct.us_data* %23, i32 %24, i32 %25, i32 %26, i8* %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %5
  %33 = load i32, i32* %13, align 4
  store i32 %33, i32* %6, align 4
  br label %62

34:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %35

35:                                               ; preds = %57, %34
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %60

39:                                               ; preds = %35
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %14, align 4
  %42 = mul i32 %40, %41
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %14, align 4
  %45 = add i32 %44, 64
  %46 = mul i32 %43, %45
  store i32 %46, i32* %17, align 4
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* %16, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8*, i8** %11, align 8
  %52 = load i32, i32* %17, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @memmove(i8* %50, i8* %54, i32 %55)
  br label %57

57:                                               ; preds = %39
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %35

60:                                               ; preds = %35
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %60, %32
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32 @MEDIA_INFO(%struct.us_data*) #1

declare dso_local i32 @alauda_read_block_raw(%struct.us_data*, i32, i32, i32, i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
