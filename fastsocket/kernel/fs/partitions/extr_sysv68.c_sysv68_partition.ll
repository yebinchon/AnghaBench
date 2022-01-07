; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_sysv68.c_sysv68_partition.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_sysv68.c_sysv68_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_partitions = type { i32, i32 }
%struct.block_device = type { i32 }
%struct.dkblk0 = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.slice = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"MOTOROLA\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"sysV68: %s(s%u)\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"(s%u)\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysv68_partition(%struct.parsed_partitions* %0, %struct.block_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.parsed_partitions*, align 8
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.dkblk0*, align 8
  %12 = alloca %struct.slice*, align 8
  store %struct.parsed_partitions* %0, %struct.parsed_partitions** %4, align 8
  store %struct.block_device* %1, %struct.block_device** %5, align 8
  store i32 1, i32* %8, align 4
  %13 = load %struct.block_device*, %struct.block_device** %5, align 8
  %14 = call i8* @read_dev_sector(%struct.block_device* %13, i32 0, i32* %9)
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %102

18:                                               ; preds = %2
  %19 = load i8*, i8** %10, align 8
  %20 = bitcast i8* %19 to %struct.dkblk0*
  store %struct.dkblk0* %20, %struct.dkblk0** %11, align 8
  %21 = load %struct.dkblk0*, %struct.dkblk0** %11, align 8
  %22 = getelementptr inbounds %struct.dkblk0, %struct.dkblk0* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @memcmp(i32 %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 4)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @put_dev_sector(i32 %28)
  store i32 0, i32* %3, align 4
  br label %102

30:                                               ; preds = %18
  %31 = load %struct.dkblk0*, %struct.dkblk0** %11, align 8
  %32 = getelementptr inbounds %struct.dkblk0, %struct.dkblk0* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @be16_to_cpu(i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.dkblk0*, %struct.dkblk0** %11, align 8
  %37 = getelementptr inbounds %struct.dkblk0, %struct.dkblk0* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @be32_to_cpu(i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @put_dev_sector(i32 %41)
  %43 = load %struct.block_device*, %struct.block_device** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i8* @read_dev_sector(%struct.block_device* %43, i32 %44, i32* %9)
  store i8* %45, i8** %10, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %30
  store i32 -1, i32* %3, align 4
  br label %102

49:                                               ; preds = %30
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  %52 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %53 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load i8*, i8** %10, align 8
  %58 = bitcast i8* %57 to %struct.slice*
  store %struct.slice* %58, %struct.slice** %12, align 8
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %93, %49
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %98

63:                                               ; preds = %59
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %66 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %64, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %98

70:                                               ; preds = %63
  %71 = load %struct.slice*, %struct.slice** %12, align 8
  %72 = getelementptr inbounds %struct.slice, %struct.slice* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @be32_to_cpu(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %70
  %77 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.slice*, %struct.slice** %12, align 8
  %80 = getelementptr inbounds %struct.slice, %struct.slice* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @be32_to_cpu(i32 %81)
  %83 = load %struct.slice*, %struct.slice** %12, align 8
  %84 = getelementptr inbounds %struct.slice, %struct.slice* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @be32_to_cpu(i32 %85)
  %87 = call i32 @put_partition(%struct.parsed_partitions* %77, i32 %78, i32 %82, i32 %86)
  %88 = load i32, i32* %6, align 4
  %89 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %76, %70
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  %96 = load %struct.slice*, %struct.slice** %12, align 8
  %97 = getelementptr inbounds %struct.slice, %struct.slice* %96, i32 1
  store %struct.slice* %97, %struct.slice** %12, align 8
  br label %59

98:                                               ; preds = %69, %59
  %99 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @put_dev_sector(i32 %100)
  store i32 1, i32* %3, align 4
  br label %102

102:                                              ; preds = %98, %48, %27, %17
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i8* @read_dev_sector(%struct.block_device*, i32, i32*) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @put_dev_sector(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @put_partition(%struct.parsed_partitions*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
