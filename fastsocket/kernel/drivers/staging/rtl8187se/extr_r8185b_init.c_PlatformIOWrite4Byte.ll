; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_PlatformIOWrite4Byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_PlatformIOWrite4Byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@PhyAddr = common dso_local global i64 0, align 8
@BIT7 = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PlatformIOWrite4Byte(%struct.net_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @PhyAddr, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %67

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = and i64 %15, 255
  %17 = trunc i64 %16 to i8
  store i8 %17, i8* %7, align 1
  %18 = load i64, i64* %6, align 8
  %19 = ashr i64 %18, 8
  store i64 %19, i64* %8, align 8
  store i8 0, i8* %9, align 1
  br label %20

20:                                               ; preds = %38, %14
  %21 = load i8, i8* %9, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp slt i32 %22, 30
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = load i64, i64* @PhyAddr, align 8
  %27 = call zeroext i8 @PlatformIORead1Byte(%struct.net_device* %25, i64 %26)
  store i8 %27, i8* %10, align 1
  %28 = load i8, i8* %10, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* @BIT7, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %29, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %41

35:                                               ; preds = %24
  %36 = call i32 @mdelay(i32 10)
  br label %37

37:                                               ; preds = %35
  br label %38

38:                                               ; preds = %37
  %39 = load i8, i8* %9, align 1
  %40 = add i8 %39, 1
  store i8 %40, i8* %9, align 1
  br label %20

41:                                               ; preds = %34, %20
  store i8 0, i8* %9, align 1
  br label %42

42:                                               ; preds = %59, %41
  %43 = load i8, i8* %9, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp slt i32 %44, 3
  br i1 %45, label %46, label %62

46:                                               ; preds = %42
  %47 = load %struct.net_device*, %struct.net_device** %4, align 8
  %48 = load i64, i64* %5, align 8
  %49 = add nsw i64 %48, 1
  %50 = load i8, i8* %9, align 1
  %51 = zext i8 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = bitcast i64* %8 to i8*
  %54 = load i8, i8* %9, align 1
  %55 = zext i8 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = call i32 @PlatformIOWrite1Byte(%struct.net_device* %47, i64 %52, i8 zeroext %57)
  br label %59

59:                                               ; preds = %46
  %60 = load i8, i8* %9, align 1
  %61 = add i8 %60, 1
  store i8 %61, i8* %9, align 1
  br label %42

62:                                               ; preds = %42
  %63 = load %struct.net_device*, %struct.net_device** %4, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load i8, i8* %7, align 1
  %66 = call i32 @write_nic_byte(%struct.net_device* %63, i64 %64, i8 zeroext %65)
  br label %75

67:                                               ; preds = %3
  %68 = load %struct.net_device*, %struct.net_device** %4, align 8
  %69 = load i64, i64* %5, align 8
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @write_nic_dword(%struct.net_device* %68, i64 %69, i64 %70)
  %72 = load %struct.net_device*, %struct.net_device** %4, align 8
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @read_nic_dword(%struct.net_device* %72, i64 %73)
  br label %75

75:                                               ; preds = %67, %62
  ret void
}

declare dso_local zeroext i8 @PlatformIORead1Byte(%struct.net_device*, i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @PlatformIOWrite1Byte(%struct.net_device*, i64, i8 zeroext) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i64, i8 zeroext) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i64, i64) #1

declare dso_local i32 @read_nic_dword(%struct.net_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
