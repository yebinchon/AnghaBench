; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_mac.c_MACvSetPacketFilter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_mac.c_MACvSetPacketFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PKT_TYPE_DIRECTED = common dso_local global i32 0, align 4
@MAC_REG_MAR0 = common dso_local global i64 0, align 8
@PKT_TYPE_PROMISCUOUS = common dso_local global i32 0, align 4
@PKT_TYPE_ALL_MULTICAST = common dso_local global i32 0, align 4
@RCR_RXALLTYPE = common dso_local global i32 0, align 4
@RCR_UNICAST = common dso_local global i32 0, align 4
@RCR_MULTICAST = common dso_local global i32 0, align 4
@RCR_BROADCAST = common dso_local global i32 0, align 4
@RCR_BSSID = common dso_local global i32 0, align 4
@PKT_TYPE_MULTICAST = common dso_local global i32 0, align 4
@PKT_TYPE_BROADCAST = common dso_local global i32 0, align 4
@PKT_TYPE_ERROR_CRC = common dso_local global i32 0, align 4
@RCR_ERRCRC = common dso_local global i32 0, align 4
@MAC_REG_RCR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MACvSetPacketFilter(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @PKT_TYPE_DIRECTED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @MACvSelectPage1(i64 %12)
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @MAC_REG_MAR0, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @VNSvOutPortD(i64 %16, i32 0)
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @MAC_REG_MAR0, align 8
  %20 = add nsw i64 %18, %19
  %21 = add i64 %20, 4
  %22 = call i32 @VNSvOutPortD(i64 %21, i32 0)
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @MACvSelectPage0(i64 %23)
  br label %25

25:                                               ; preds = %11, %2
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @PKT_TYPE_PROMISCUOUS, align 4
  %28 = load i32, i32* @PKT_TYPE_ALL_MULTICAST, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %25
  %33 = load i64, i64* %3, align 8
  %34 = call i32 @MACvSelectPage1(i64 %33)
  %35 = load i64, i64* %3, align 8
  %36 = load i64, i64* @MAC_REG_MAR0, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @VNSvOutPortD(i64 %37, i32 -1)
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* @MAC_REG_MAR0, align 8
  %41 = add nsw i64 %39, %40
  %42 = add i64 %41, 4
  %43 = call i32 @VNSvOutPortD(i64 %42, i32 -1)
  %44 = load i64, i64* %3, align 8
  %45 = call i32 @MACvSelectPage0(i64 %44)
  br label %46

46:                                               ; preds = %32, %25
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @PKT_TYPE_PROMISCUOUS, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %46
  %52 = load i32, i32* @RCR_RXALLTYPE, align 4
  %53 = load i32, i32* @RCR_UNICAST, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @RCR_MULTICAST, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @RCR_BROADCAST, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* @RCR_BSSID, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %6, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %51, %46
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @PKT_TYPE_ALL_MULTICAST, align 4
  %68 = load i32, i32* @PKT_TYPE_MULTICAST, align 4
  %69 = or i32 %67, %68
  %70 = and i32 %66, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load i32, i32* @RCR_MULTICAST, align 4
  %74 = load i32, i32* %6, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %72, %65
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @PKT_TYPE_BROADCAST, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i32, i32* @RCR_BROADCAST, align 4
  %83 = load i32, i32* %6, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %81, %76
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @PKT_TYPE_ERROR_CRC, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i32, i32* @RCR_ERRCRC, align 4
  %92 = load i32, i32* %6, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %90, %85
  %95 = load i64, i64* %3, align 8
  %96 = load i64, i64* @MAC_REG_RCR, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @VNSvInPortB(i64 %97, i32* %5)
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %94
  %103 = load i64, i64* %3, align 8
  %104 = load i64, i64* @MAC_REG_RCR, align 8
  %105 = add nsw i64 %103, %104
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @VNSvOutPortB(i64 %105, i32 %106)
  br label %108

108:                                              ; preds = %102, %94
  ret void
}

declare dso_local i32 @MACvSelectPage1(i64) #1

declare dso_local i32 @VNSvOutPortD(i64, i32) #1

declare dso_local i32 @MACvSelectPage0(i64) #1

declare dso_local i32 @VNSvInPortB(i64, i32*) #1

declare dso_local i32 @VNSvOutPortB(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
