; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8180_93cx6.c_eprom_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8180_93cx6.c_eprom_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64 }

@__const.eprom_read.read_cmd = private unnamed_addr constant [3 x i16] [i16 1, i16 1, i16 0], align 2
@EPROM_CMD = common dso_local global i32 0, align 4
@EPROM_CMD_PROGRAM = common dso_local global i32 0, align 4
@EPROM_CMD_OPERATING_MODE_SHIFT = common dso_local global i32 0, align 4
@EPROM_DELAY = common dso_local global i32 0, align 4
@EPROM_93c56 = common dso_local global i64 0, align 8
@EPROM_CMD_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eprom_read(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r8192_priv*, align 8
  %6 = alloca [3 x i16], align 2
  %7 = alloca [8 x i16], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %11)
  store %struct.r8192_priv* %12, %struct.r8192_priv** %5, align 8
  %13 = bitcast [3 x i16]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %13, i8* align 2 bitcast ([3 x i16]* @__const.eprom_read.read_cmd to i8*), i64 6, i1 false)
  store i32 0, i32* %10, align 4
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = load i32, i32* @EPROM_CMD, align 4
  %16 = load i32, i32* @EPROM_CMD_PROGRAM, align 4
  %17 = load i32, i32* @EPROM_CMD_OPERATING_MODE_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = call i32 @write_nic_byte(%struct.net_device* %14, i32 %15, i32 %18)
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = call i32 @force_pci_posting(%struct.net_device* %20)
  %22 = load i32, i32* @EPROM_DELAY, align 4
  %23 = call i32 @udelay(i32 %22)
  %24 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %25 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @EPROM_93c56, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %62

29:                                               ; preds = %2
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, 1
  %32 = trunc i32 %31 to i16
  %33 = getelementptr inbounds [8 x i16], [8 x i16]* %7, i64 0, i64 7
  store i16 %32, i16* %33, align 2
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, 2
  %36 = trunc i32 %35 to i16
  %37 = getelementptr inbounds [8 x i16], [8 x i16]* %7, i64 0, i64 6
  store i16 %36, i16* %37, align 4
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, 4
  %40 = trunc i32 %39 to i16
  %41 = getelementptr inbounds [8 x i16], [8 x i16]* %7, i64 0, i64 5
  store i16 %40, i16* %41, align 2
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, 8
  %44 = trunc i32 %43 to i16
  %45 = getelementptr inbounds [8 x i16], [8 x i16]* %7, i64 0, i64 4
  store i16 %44, i16* %45, align 8
  %46 = load i32, i32* %4, align 4
  %47 = and i32 %46, 16
  %48 = trunc i32 %47 to i16
  %49 = getelementptr inbounds [8 x i16], [8 x i16]* %7, i64 0, i64 3
  store i16 %48, i16* %49, align 2
  %50 = load i32, i32* %4, align 4
  %51 = and i32 %50, 32
  %52 = trunc i32 %51 to i16
  %53 = getelementptr inbounds [8 x i16], [8 x i16]* %7, i64 0, i64 2
  store i16 %52, i16* %53, align 4
  %54 = load i32, i32* %4, align 4
  %55 = and i32 %54, 64
  %56 = trunc i32 %55 to i16
  %57 = getelementptr inbounds [8 x i16], [8 x i16]* %7, i64 0, i64 1
  store i16 %56, i16* %57, align 2
  %58 = load i32, i32* %4, align 4
  %59 = and i32 %58, 128
  %60 = trunc i32 %59 to i16
  %61 = getelementptr inbounds [8 x i16], [8 x i16]* %7, i64 0, i64 0
  store i16 %60, i16* %61, align 16
  store i32 8, i32* %9, align 4
  br label %87

62:                                               ; preds = %2
  %63 = load i32, i32* %4, align 4
  %64 = and i32 %63, 1
  %65 = trunc i32 %64 to i16
  %66 = getelementptr inbounds [8 x i16], [8 x i16]* %7, i64 0, i64 5
  store i16 %65, i16* %66, align 2
  %67 = load i32, i32* %4, align 4
  %68 = and i32 %67, 2
  %69 = trunc i32 %68 to i16
  %70 = getelementptr inbounds [8 x i16], [8 x i16]* %7, i64 0, i64 4
  store i16 %69, i16* %70, align 8
  %71 = load i32, i32* %4, align 4
  %72 = and i32 %71, 4
  %73 = trunc i32 %72 to i16
  %74 = getelementptr inbounds [8 x i16], [8 x i16]* %7, i64 0, i64 3
  store i16 %73, i16* %74, align 2
  %75 = load i32, i32* %4, align 4
  %76 = and i32 %75, 8
  %77 = trunc i32 %76 to i16
  %78 = getelementptr inbounds [8 x i16], [8 x i16]* %7, i64 0, i64 2
  store i16 %77, i16* %78, align 4
  %79 = load i32, i32* %4, align 4
  %80 = and i32 %79, 16
  %81 = trunc i32 %80 to i16
  %82 = getelementptr inbounds [8 x i16], [8 x i16]* %7, i64 0, i64 1
  store i16 %81, i16* %82, align 2
  %83 = load i32, i32* %4, align 4
  %84 = and i32 %83, 32
  %85 = trunc i32 %84 to i16
  %86 = getelementptr inbounds [8 x i16], [8 x i16]* %7, i64 0, i64 0
  store i16 %85, i16* %86, align 16
  store i32 6, i32* %9, align 4
  br label %87

87:                                               ; preds = %62, %29
  %88 = load %struct.net_device*, %struct.net_device** %3, align 8
  %89 = call i32 @eprom_cs(%struct.net_device* %88, i32 1)
  %90 = load %struct.net_device*, %struct.net_device** %3, align 8
  %91 = call i32 @eprom_ck_cycle(%struct.net_device* %90)
  %92 = load %struct.net_device*, %struct.net_device** %3, align 8
  %93 = getelementptr inbounds [3 x i16], [3 x i16]* %6, i64 0, i64 0
  %94 = call i32 @eprom_send_bits_string(%struct.net_device* %92, i16* %93, i32 3)
  %95 = load %struct.net_device*, %struct.net_device** %3, align 8
  %96 = getelementptr inbounds [8 x i16], [8 x i16]* %7, i64 0, i64 0
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @eprom_send_bits_string(%struct.net_device* %95, i16* %96, i32 %97)
  %99 = load %struct.net_device*, %struct.net_device** %3, align 8
  %100 = call i32 @eprom_w(%struct.net_device* %99, i32 0)
  store i32 0, i32* %8, align 4
  br label %101

101:                                              ; preds = %114, %87
  %102 = load i32, i32* %8, align 4
  %103 = icmp slt i32 %102, 16
  br i1 %103, label %104, label %117

104:                                              ; preds = %101
  %105 = load %struct.net_device*, %struct.net_device** %3, align 8
  %106 = call i32 @eprom_ck_cycle(%struct.net_device* %105)
  %107 = load %struct.net_device*, %struct.net_device** %3, align 8
  %108 = call i32 @eprom_r(%struct.net_device* %107)
  %109 = load i32, i32* %8, align 4
  %110 = sub nsw i32 15, %109
  %111 = shl i32 %108, %110
  %112 = load i32, i32* %10, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %10, align 4
  br label %114

114:                                              ; preds = %104
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %101

117:                                              ; preds = %101
  %118 = load %struct.net_device*, %struct.net_device** %3, align 8
  %119 = call i32 @eprom_cs(%struct.net_device* %118, i32 0)
  %120 = load %struct.net_device*, %struct.net_device** %3, align 8
  %121 = call i32 @eprom_ck_cycle(%struct.net_device* %120)
  %122 = load %struct.net_device*, %struct.net_device** %3, align 8
  %123 = load i32, i32* @EPROM_CMD, align 4
  %124 = load i32, i32* @EPROM_CMD_NORMAL, align 4
  %125 = load i32, i32* @EPROM_CMD_OPERATING_MODE_SHIFT, align 4
  %126 = shl i32 %124, %125
  %127 = call i32 @write_nic_byte(%struct.net_device* %122, i32 %123, i32 %126)
  %128 = load i32, i32* %10, align 4
  ret i32 %128
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @force_pci_posting(%struct.net_device*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @eprom_cs(%struct.net_device*, i32) #1

declare dso_local i32 @eprom_ck_cycle(%struct.net_device*) #1

declare dso_local i32 @eprom_send_bits_string(%struct.net_device*, i16*, i32) #1

declare dso_local i32 @eprom_w(%struct.net_device*, i32) #1

declare dso_local i32 @eprom_r(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
