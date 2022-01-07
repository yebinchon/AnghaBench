; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_EFUSE_ShadowWrite.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_EFUSE_ShadowWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EFUSE_ShadowWrite(%struct.net_device* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %9 = load i32, i32* %7, align 4
  %10 = icmp sge i32 %9, 24
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = load i32, i32* %7, align 4
  %13 = icmp sle i32 %12, 31
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %43

15:                                               ; preds = %11, %4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i64, i64* %8, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @efuse_ShadowWrite1Byte(%struct.net_device* %19, i32 %20, i32 %22)
  br label %43

24:                                               ; preds = %15
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i64, i64* %8, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @efuse_ShadowWrite2Byte(%struct.net_device* %28, i32 %29, i32 %31)
  br label %42

33:                                               ; preds = %24
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 4
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @efuse_ShadowWrite4Byte(%struct.net_device* %37, i32 %38, i64 %39)
  br label %41

41:                                               ; preds = %36, %33
  br label %42

42:                                               ; preds = %41, %27
  br label %43

43:                                               ; preds = %14, %42, %18
  ret void
}

declare dso_local i32 @efuse_ShadowWrite1Byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @efuse_ShadowWrite2Byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @efuse_ShadowWrite4Byte(%struct.net_device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
