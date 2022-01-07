; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_mac.c_mac_partition.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_mac.c_mac_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_partitions = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.block_device = type { i32 }
%struct.mac_partition = type { i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.mac_driver_desc = type { i32, i32 }

@MAC_DRIVER_MAGIC = common dso_local global i32 0, align 4
@MAC_PARTITION_MAGIC = common dso_local global i32 0, align 4
@DISK_MAX_PARTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c" [mac]\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Linux_RAID\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MAC_STATUS_BOOTABLE = common dso_local global i32 0, align 4
@powermac = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_partition(%struct.parsed_partitions* %0, %struct.block_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.parsed_partitions*, align 8
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mac_partition*, align 8
  %12 = alloca %struct.mac_driver_desc*, align 8
  %13 = alloca i32, align 4
  store %struct.parsed_partitions* %0, %struct.parsed_partitions** %4, align 8
  store %struct.block_device* %1, %struct.block_device** %5, align 8
  %14 = load %struct.block_device*, %struct.block_device** %5, align 8
  %15 = call i8* @read_dev_sector(%struct.block_device* %14, i32 0, i32* %6)
  %16 = bitcast i8* %15 to %struct.mac_driver_desc*
  store %struct.mac_driver_desc* %16, %struct.mac_driver_desc** %12, align 8
  %17 = load %struct.mac_driver_desc*, %struct.mac_driver_desc** %12, align 8
  %18 = icmp ne %struct.mac_driver_desc* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %146

20:                                               ; preds = %2
  %21 = load %struct.mac_driver_desc*, %struct.mac_driver_desc** %12, align 8
  %22 = getelementptr inbounds %struct.mac_driver_desc, %struct.mac_driver_desc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @be16_to_cpu(i32 %23)
  %25 = load i32, i32* @MAC_DRIVER_MAGIC, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @put_dev_sector(i32 %28)
  store i32 0, i32* %3, align 4
  br label %146

30:                                               ; preds = %20
  %31 = load %struct.mac_driver_desc*, %struct.mac_driver_desc** %12, align 8
  %32 = getelementptr inbounds %struct.mac_driver_desc, %struct.mac_driver_desc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @be16_to_cpu(i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @put_dev_sector(i32 %35)
  %37 = load %struct.block_device*, %struct.block_device** %5, align 8
  %38 = load i32, i32* %10, align 4
  %39 = udiv i32 %38, 512
  %40 = call i8* @read_dev_sector(%struct.block_device* %37, i32 %39, i32* %6)
  store i8* %40, i8** %7, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %30
  store i32 -1, i32* %3, align 4
  br label %146

44:                                               ; preds = %30
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %10, align 4
  %47 = urem i32 %46, 512
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  %50 = bitcast i8* %49 to %struct.mac_partition*
  store %struct.mac_partition* %50, %struct.mac_partition** %11, align 8
  %51 = load %struct.mac_partition*, %struct.mac_partition** %11, align 8
  %52 = getelementptr inbounds %struct.mac_partition, %struct.mac_partition* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @be16_to_cpu(i32 %53)
  %55 = load i32, i32* @MAC_PARTITION_MAGIC, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %44
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @put_dev_sector(i32 %58)
  store i32 0, i32* %3, align 4
  br label %146

60:                                               ; preds = %44
  %61 = load %struct.mac_partition*, %struct.mac_partition** %11, align 8
  %62 = getelementptr inbounds %struct.mac_partition, %struct.mac_partition* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @be32_to_cpu(i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %60
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @DISK_MAX_PARTS, align 4
  %70 = icmp sge i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67, %60
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @put_dev_sector(i32 %72)
  store i32 0, i32* %3, align 4
  br label %146

74:                                               ; preds = %67
  %75 = call i32 @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %76

76:                                               ; preds = %139, %74
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp sle i32 %77, %78
  br i1 %79, label %80, label %142

80:                                               ; preds = %76
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %10, align 4
  %83 = mul i32 %81, %82
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @put_dev_sector(i32 %84)
  %86 = load %struct.block_device*, %struct.block_device** %5, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sdiv i32 %87, 512
  %89 = call i8* @read_dev_sector(%struct.block_device* %86, i32 %88, i32* %6)
  store i8* %89, i8** %7, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %80
  store i32 -1, i32* %3, align 4
  br label %146

93:                                               ; preds = %80
  %94 = load i8*, i8** %7, align 8
  %95 = load i32, i32* %13, align 4
  %96 = srem i32 %95, 512
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %94, i64 %97
  %99 = bitcast i8* %98 to %struct.mac_partition*
  store %struct.mac_partition* %99, %struct.mac_partition** %11, align 8
  %100 = load %struct.mac_partition*, %struct.mac_partition** %11, align 8
  %101 = getelementptr inbounds %struct.mac_partition, %struct.mac_partition* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @be16_to_cpu(i32 %102)
  %104 = load i32, i32* @MAC_PARTITION_MAGIC, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %93
  br label %142

107:                                              ; preds = %93
  %108 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.mac_partition*, %struct.mac_partition** %11, align 8
  %111 = getelementptr inbounds %struct.mac_partition, %struct.mac_partition* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @be32_to_cpu(i32 %112)
  %114 = load i32, i32* %10, align 4
  %115 = udiv i32 %114, 512
  %116 = mul i32 %113, %115
  %117 = load %struct.mac_partition*, %struct.mac_partition** %11, align 8
  %118 = getelementptr inbounds %struct.mac_partition, %struct.mac_partition* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @be32_to_cpu(i32 %119)
  %121 = load i32, i32* %10, align 4
  %122 = udiv i32 %121, 512
  %123 = mul i32 %120, %122
  %124 = call i32 @put_partition(%struct.parsed_partitions* %108, i32 %109, i32 %116, i32 %123)
  %125 = load %struct.mac_partition*, %struct.mac_partition** %11, align 8
  %126 = getelementptr inbounds %struct.mac_partition, %struct.mac_partition* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = call i64 @strnicmp(i64 %127, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 10)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %138, label %130

130:                                              ; preds = %107
  %131 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %132 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %131, i32 0, i32 0
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  store i32 1, i32* %137, align 4
  br label %138

138:                                              ; preds = %130, %107
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %8, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %8, align 4
  br label %76

142:                                              ; preds = %106, %76
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @put_dev_sector(i32 %143)
  %145 = call i32 @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %146

146:                                              ; preds = %142, %92, %71, %57, %43, %27, %19
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i8* @read_dev_sector(%struct.block_device*, i32, i32*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @put_dev_sector(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @put_partition(%struct.parsed_partitions*, i32, i32, i32) #1

declare dso_local i64 @strnicmp(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
