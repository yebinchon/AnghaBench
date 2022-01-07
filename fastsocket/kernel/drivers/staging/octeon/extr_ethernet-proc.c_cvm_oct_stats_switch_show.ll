; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet-proc.c_cvm_oct_stats_switch_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet-proc.c_cvm_oct_stats_switch_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.seq_file = type { i32 }
%struct.octeon_ethernet = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.net_device.0*, i32, i32, i32)* }
%struct.net_device.0 = type opaque

@cvm_oct_stats_switch_show.ports = internal constant [6 x i32] [i32 0, i32 1, i32 2, i32 3, i32 9, i32 -1], align 16
@cvm_oct_device = common dso_local global %struct.net_device** null, align 8
@.str = private unnamed_addr constant [17 x i8] c"\0ASwitch Port %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"InGoodOctets:   %12llu\09OutOctets:      %12llu\0964 Octets:      %12llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"InBadOctets:    %12llu\09OutUnicast:     %12llu\0965-127 Octets:  %12llu\0A\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"InUnicast:      %12llu\09OutBroadcasts:  %12llu\09128-255 Octets: %12llu\0A\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"InBroadcasts:   %12llu\09OutMulticasts:  %12llu\09256-511 Octets: %12llu\0A\00", align 1
@.str.5 = private unnamed_addr constant [70 x i8] c"InMulticasts:   %12llu\09OutPause:       %12llu\09512-1023 Octets:%12llu\0A\00", align 1
@.str.6 = private unnamed_addr constant [70 x i8] c"InPause:        %12llu\09Excessive:      %12llu\091024-Max Octets:%12llu\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"InUndersize:    %12llu\09Collisions:     %12llu\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"InFragments:    %12llu\09Deferred:       %12llu\0A\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"InOversize:     %12llu\09Single:         %12llu\0A\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"InJabber:       %12llu\09Multiple:       %12llu\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"In RxErr:       %12llu\09OutFCSErr:      %12llu\0A\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"InFCSErr:       %12llu\09Late:           %12llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @cvm_oct_stats_switch_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvm_oct_stats_switch_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.octeon_ethernet*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.net_device**, %struct.net_device*** @cvm_oct_device, align 8
  %9 = getelementptr inbounds %struct.net_device*, %struct.net_device** %8, i64 0
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %17, %2
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [6 x i32], [6 x i32]* @cvm_oct_stats_switch_show.ports, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %132

17:                                               ; preds = %11
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = call %struct.octeon_ethernet* @netdev_priv(%struct.net_device* %18)
  store %struct.octeon_ethernet* %19, %struct.octeon_ethernet** %7, align 8
  %20 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %7, align 8
  %21 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.net_device.0*, i32, i32, i32)*, i32 (%struct.net_device.0*, i32, i32, i32)** %22, align 8
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = bitcast %struct.net_device* %24 to %struct.net_device.0*
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [6 x i32], [6 x i32]* @cvm_oct_stats_switch_show.ports, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = or i32 56320, %29
  %31 = call i32 %23(%struct.net_device.0* %25, i32 27, i32 29, i32 %30)
  %32 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [6 x i32], [6 x i32]* @cvm_oct_stats_switch_show.ports, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %39 = load %struct.net_device*, %struct.net_device** %5, align 8
  %40 = call i32 @cvm_oct_stats_read_switch(%struct.net_device* %39, i32 27, i32 0)
  %41 = load %struct.net_device*, %struct.net_device** %5, align 8
  %42 = call i32 @cvm_oct_stats_read_switch(%struct.net_device* %41, i32 27, i32 1)
  %43 = shl i32 %42, 32
  %44 = or i32 %40, %43
  %45 = load %struct.net_device*, %struct.net_device** %5, align 8
  %46 = call i32 @cvm_oct_stats_read_switch(%struct.net_device* %45, i32 27, i32 14)
  %47 = load %struct.net_device*, %struct.net_device** %5, align 8
  %48 = call i32 @cvm_oct_stats_read_switch(%struct.net_device* %47, i32 27, i32 15)
  %49 = shl i32 %48, 32
  %50 = or i32 %46, %49
  %51 = load %struct.net_device*, %struct.net_device** %5, align 8
  %52 = call i32 @cvm_oct_stats_read_switch(%struct.net_device* %51, i32 27, i32 8)
  %53 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %38, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %50, i32 %52)
  %54 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %55 = load %struct.net_device*, %struct.net_device** %5, align 8
  %56 = call i32 @cvm_oct_stats_read_switch(%struct.net_device* %55, i32 27, i32 2)
  %57 = load %struct.net_device*, %struct.net_device** %5, align 8
  %58 = call i32 @cvm_oct_stats_read_switch(%struct.net_device* %57, i32 27, i32 16)
  %59 = load %struct.net_device*, %struct.net_device** %5, align 8
  %60 = call i32 @cvm_oct_stats_read_switch(%struct.net_device* %59, i32 27, i32 9)
  %61 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %54, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32 %58, i32 %60)
  %62 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %63 = load %struct.net_device*, %struct.net_device** %5, align 8
  %64 = call i32 @cvm_oct_stats_read_switch(%struct.net_device* %63, i32 27, i32 4)
  %65 = load %struct.net_device*, %struct.net_device** %5, align 8
  %66 = call i32 @cvm_oct_stats_read_switch(%struct.net_device* %65, i32 27, i32 19)
  %67 = load %struct.net_device*, %struct.net_device** %5, align 8
  %68 = call i32 @cvm_oct_stats_read_switch(%struct.net_device* %67, i32 27, i32 10)
  %69 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %62, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i32 %64, i32 %66, i32 %68)
  %70 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %71 = load %struct.net_device*, %struct.net_device** %5, align 8
  %72 = call i32 @cvm_oct_stats_read_switch(%struct.net_device* %71, i32 27, i32 6)
  %73 = load %struct.net_device*, %struct.net_device** %5, align 8
  %74 = call i32 @cvm_oct_stats_read_switch(%struct.net_device* %73, i32 27, i32 18)
  %75 = load %struct.net_device*, %struct.net_device** %5, align 8
  %76 = call i32 @cvm_oct_stats_read_switch(%struct.net_device* %75, i32 27, i32 11)
  %77 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %70, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i64 0, i64 0), i32 %72, i32 %74, i32 %76)
  %78 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %79 = load %struct.net_device*, %struct.net_device** %5, align 8
  %80 = call i32 @cvm_oct_stats_read_switch(%struct.net_device* %79, i32 27, i32 7)
  %81 = load %struct.net_device*, %struct.net_device** %5, align 8
  %82 = call i32 @cvm_oct_stats_read_switch(%struct.net_device* %81, i32 27, i32 21)
  %83 = load %struct.net_device*, %struct.net_device** %5, align 8
  %84 = call i32 @cvm_oct_stats_read_switch(%struct.net_device* %83, i32 27, i32 12)
  %85 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %78, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0), i32 %80, i32 %82, i32 %84)
  %86 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %87 = load %struct.net_device*, %struct.net_device** %5, align 8
  %88 = call i32 @cvm_oct_stats_read_switch(%struct.net_device* %87, i32 27, i32 22)
  %89 = load %struct.net_device*, %struct.net_device** %5, align 8
  %90 = call i32 @cvm_oct_stats_read_switch(%struct.net_device* %89, i32 27, i32 17)
  %91 = load %struct.net_device*, %struct.net_device** %5, align 8
  %92 = call i32 @cvm_oct_stats_read_switch(%struct.net_device* %91, i32 27, i32 13)
  %93 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %86, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i64 0, i64 0), i32 %88, i32 %90, i32 %92)
  %94 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %95 = load %struct.net_device*, %struct.net_device** %5, align 8
  %96 = call i32 @cvm_oct_stats_read_switch(%struct.net_device* %95, i32 27, i32 24)
  %97 = load %struct.net_device*, %struct.net_device** %5, align 8
  %98 = call i32 @cvm_oct_stats_read_switch(%struct.net_device* %97, i32 27, i32 30)
  %99 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %94, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i32 %96, i32 %98)
  %100 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %101 = load %struct.net_device*, %struct.net_device** %5, align 8
  %102 = call i32 @cvm_oct_stats_read_switch(%struct.net_device* %101, i32 27, i32 25)
  %103 = load %struct.net_device*, %struct.net_device** %5, align 8
  %104 = call i32 @cvm_oct_stats_read_switch(%struct.net_device* %103, i32 27, i32 5)
  %105 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %100, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), i32 %102, i32 %104)
  %106 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %107 = load %struct.net_device*, %struct.net_device** %5, align 8
  %108 = call i32 @cvm_oct_stats_read_switch(%struct.net_device* %107, i32 27, i32 26)
  %109 = load %struct.net_device*, %struct.net_device** %5, align 8
  %110 = call i32 @cvm_oct_stats_read_switch(%struct.net_device* %109, i32 27, i32 20)
  %111 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %106, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i32 %108, i32 %110)
  %112 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %113 = load %struct.net_device*, %struct.net_device** %5, align 8
  %114 = call i32 @cvm_oct_stats_read_switch(%struct.net_device* %113, i32 27, i32 27)
  %115 = load %struct.net_device*, %struct.net_device** %5, align 8
  %116 = call i32 @cvm_oct_stats_read_switch(%struct.net_device* %115, i32 27, i32 23)
  %117 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %112, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0), i32 %114, i32 %116)
  %118 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %119 = load %struct.net_device*, %struct.net_device** %5, align 8
  %120 = call i32 @cvm_oct_stats_read_switch(%struct.net_device* %119, i32 27, i32 28)
  %121 = load %struct.net_device*, %struct.net_device** %5, align 8
  %122 = call i32 @cvm_oct_stats_read_switch(%struct.net_device* %121, i32 27, i32 3)
  %123 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %118, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), i32 %120, i32 %122)
  %124 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %125 = load %struct.net_device*, %struct.net_device** %5, align 8
  %126 = call i32 @cvm_oct_stats_read_switch(%struct.net_device* %125, i32 27, i32 29)
  %127 = load %struct.net_device*, %struct.net_device** %5, align 8
  %128 = call i32 @cvm_oct_stats_read_switch(%struct.net_device* %127, i32 27, i32 31)
  %129 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %124, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i64 0, i64 0), i32 %126, i32 %128)
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %6, align 4
  br label %11

132:                                              ; preds = %11
  ret i32 0
}

declare dso_local %struct.octeon_ethernet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @cvm_oct_stats_read_switch(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
