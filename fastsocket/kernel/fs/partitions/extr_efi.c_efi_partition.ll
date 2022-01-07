; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_efi.c_efi_partition.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_efi.c_efi_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_partitions = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.block_device = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"GUID Partition Table is valid!  Yea!\0A\00", align 1
@PARTITION_LINUX_RAID_GUID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efi_partition(%struct.parsed_partitions* %0, %struct.block_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.parsed_partitions*, align 8
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.parsed_partitions* %0, %struct.parsed_partitions** %4, align 8
  store %struct.block_device* %1, %struct.block_device** %5, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %7, align 8
  %12 = load %struct.block_device*, %struct.block_device** %5, align 8
  %13 = call i32 @bdev_logical_block_size(%struct.block_device* %12)
  %14 = sdiv i32 %13, 512
  store i32 %14, i32* %9, align 4
  %15 = load %struct.block_device*, %struct.block_device** %5, align 8
  %16 = call i32 @find_valid_gpt(%struct.block_device* %15, %struct.TYPE_9__** %6, %struct.TYPE_9__** %7)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %20 = icmp ne %struct.TYPE_9__* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %23 = icmp ne %struct.TYPE_9__* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %21, %18, %2
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = call i32 @kfree(%struct.TYPE_9__* %25)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %28 = call i32 @kfree(%struct.TYPE_9__* %27)
  store i32 0, i32* %3, align 4
  br label %121

29:                                               ; preds = %21
  %30 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %112, %29
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le32_to_cpu(i32 %35)
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %41 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %42, 1
  %44 = icmp slt i32 %39, %43
  br label %45

45:                                               ; preds = %38, %31
  %46 = phi i1 [ false, %31 ], [ %44, %38 ]
  br i1 %46, label %47, label %115

47:                                               ; preds = %45
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le64_to_cpu(i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @le64_to_cpu(i32 %60)
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le64_to_cpu(i32 %67)
  %69 = sub i32 %61, %68
  %70 = zext i32 %69 to i64
  %71 = add i64 %70, 1
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %11, align 4
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i64 %75
  %77 = load %struct.block_device*, %struct.block_device** %5, align 8
  %78 = call i32 @last_lba(%struct.block_device* %77)
  %79 = call i32 @is_pte_valid(%struct.TYPE_9__* %76, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %47
  br label %112

82:                                               ; preds = %47
  %83 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %9, align 4
  %88 = mul i32 %86, %87
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %9, align 4
  %91 = mul i32 %89, %90
  %92 = call i32 @put_partition(%struct.parsed_partitions* %83, i32 %85, i32 %88, i32 %91)
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @PARTITION_LINUX_RAID_GUID, align 4
  %100 = call i32 @efi_guidcmp(i32 %98, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %111, label %102

102:                                              ; preds = %82
  %103 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %104 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %103, i32 0, i32 1
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  store i32 1, i32* %110, align 4
  br label %111

111:                                              ; preds = %102, %82
  br label %112

112:                                              ; preds = %111, %81
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %8, align 4
  br label %31

115:                                              ; preds = %45
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %117 = call i32 @kfree(%struct.TYPE_9__* %116)
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %119 = call i32 @kfree(%struct.TYPE_9__* %118)
  %120 = call i32 @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %121

121:                                              ; preds = %115, %24
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @bdev_logical_block_size(%struct.block_device*) #1

declare dso_local i32 @find_valid_gpt(%struct.block_device*, %struct.TYPE_9__**, %struct.TYPE_9__**) #1

declare dso_local i32 @kfree(%struct.TYPE_9__*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @is_pte_valid(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @last_lba(%struct.block_device*) #1

declare dso_local i32 @put_partition(%struct.parsed_partitions*, i32, i32, i32) #1

declare dso_local i32 @efi_guidcmp(i32, i32) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
