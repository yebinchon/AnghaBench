; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_ldm.c_ldm_partition.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_ldm.c_ldm_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_partitions = type { i32 }
%struct.block_device = type { i32 }
%struct.ldmdb = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Out of memory.\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Failed to read the VBLKs from the database.\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Parsed LDM database successfully.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldm_partition(%struct.parsed_partitions* %0, %struct.block_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.parsed_partitions*, align 8
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca %struct.ldmdb*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.parsed_partitions* %0, %struct.parsed_partitions** %4, align 8
  store %struct.block_device* %1, %struct.block_device** %5, align 8
  store i32 -1, i32* %8, align 4
  %9 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %10 = icmp ne %struct.parsed_partitions* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.block_device*, %struct.block_device** %5, align 8
  %13 = icmp ne %struct.block_device* %12, null
  %14 = xor i1 %13, true
  br label %15

15:                                               ; preds = %11, %2
  %16 = phi i1 [ true, %2 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.block_device*, %struct.block_device** %5, align 8
  %20 = call i32 @ldm_validate_partition_table(%struct.block_device* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %105

23:                                               ; preds = %15
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.ldmdb* @kmalloc(i32 32, i32 %24)
  store %struct.ldmdb* %25, %struct.ldmdb** %6, align 8
  %26 = load %struct.ldmdb*, %struct.ldmdb** %6, align 8
  %27 = icmp ne %struct.ldmdb* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = call i32 @ldm_crit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %101

30:                                               ; preds = %23
  %31 = load %struct.block_device*, %struct.block_device** %5, align 8
  %32 = load %struct.ldmdb*, %struct.ldmdb** %6, align 8
  %33 = getelementptr inbounds %struct.ldmdb, %struct.ldmdb* %32, i32 0, i32 5
  %34 = call i32 @ldm_validate_privheads(%struct.block_device* %31, %struct.TYPE_2__* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %101

37:                                               ; preds = %30
  %38 = load %struct.ldmdb*, %struct.ldmdb** %6, align 8
  %39 = getelementptr inbounds %struct.ldmdb, %struct.ldmdb* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %7, align 8
  %42 = load %struct.block_device*, %struct.block_device** %5, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.ldmdb*, %struct.ldmdb** %6, align 8
  %45 = call i32 @ldm_validate_tocblocks(%struct.block_device* %42, i64 %43, %struct.ldmdb* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %37
  %48 = load %struct.block_device*, %struct.block_device** %5, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.ldmdb*, %struct.ldmdb** %6, align 8
  %51 = call i32 @ldm_validate_vmdb(%struct.block_device* %48, i64 %49, %struct.ldmdb* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %47, %37
  br label %101

54:                                               ; preds = %47
  %55 = load %struct.ldmdb*, %struct.ldmdb** %6, align 8
  %56 = getelementptr inbounds %struct.ldmdb, %struct.ldmdb* %55, i32 0, i32 4
  %57 = call i32 @INIT_LIST_HEAD(i32* %56)
  %58 = load %struct.ldmdb*, %struct.ldmdb** %6, align 8
  %59 = getelementptr inbounds %struct.ldmdb, %struct.ldmdb* %58, i32 0, i32 3
  %60 = call i32 @INIT_LIST_HEAD(i32* %59)
  %61 = load %struct.ldmdb*, %struct.ldmdb** %6, align 8
  %62 = getelementptr inbounds %struct.ldmdb, %struct.ldmdb* %61, i32 0, i32 2
  %63 = call i32 @INIT_LIST_HEAD(i32* %62)
  %64 = load %struct.ldmdb*, %struct.ldmdb** %6, align 8
  %65 = getelementptr inbounds %struct.ldmdb, %struct.ldmdb* %64, i32 0, i32 1
  %66 = call i32 @INIT_LIST_HEAD(i32* %65)
  %67 = load %struct.ldmdb*, %struct.ldmdb** %6, align 8
  %68 = getelementptr inbounds %struct.ldmdb, %struct.ldmdb* %67, i32 0, i32 0
  %69 = call i32 @INIT_LIST_HEAD(i32* %68)
  %70 = load %struct.block_device*, %struct.block_device** %5, align 8
  %71 = load i64, i64* %7, align 8
  %72 = load %struct.ldmdb*, %struct.ldmdb** %6, align 8
  %73 = call i32 @ldm_get_vblks(%struct.block_device* %70, i64 %71, %struct.ldmdb* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %54
  %76 = call i32 @ldm_crit(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %85

77:                                               ; preds = %54
  %78 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %79 = load %struct.ldmdb*, %struct.ldmdb** %6, align 8
  %80 = call i64 @ldm_create_data_partitions(%struct.parsed_partitions* %78, %struct.ldmdb* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = call i32 @ldm_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %84

84:                                               ; preds = %82, %77
  br label %85

85:                                               ; preds = %84, %75
  %86 = load %struct.ldmdb*, %struct.ldmdb** %6, align 8
  %87 = getelementptr inbounds %struct.ldmdb, %struct.ldmdb* %86, i32 0, i32 4
  %88 = call i32 @ldm_free_vblks(i32* %87)
  %89 = load %struct.ldmdb*, %struct.ldmdb** %6, align 8
  %90 = getelementptr inbounds %struct.ldmdb, %struct.ldmdb* %89, i32 0, i32 3
  %91 = call i32 @ldm_free_vblks(i32* %90)
  %92 = load %struct.ldmdb*, %struct.ldmdb** %6, align 8
  %93 = getelementptr inbounds %struct.ldmdb, %struct.ldmdb* %92, i32 0, i32 2
  %94 = call i32 @ldm_free_vblks(i32* %93)
  %95 = load %struct.ldmdb*, %struct.ldmdb** %6, align 8
  %96 = getelementptr inbounds %struct.ldmdb, %struct.ldmdb* %95, i32 0, i32 1
  %97 = call i32 @ldm_free_vblks(i32* %96)
  %98 = load %struct.ldmdb*, %struct.ldmdb** %6, align 8
  %99 = getelementptr inbounds %struct.ldmdb, %struct.ldmdb* %98, i32 0, i32 0
  %100 = call i32 @ldm_free_vblks(i32* %99)
  br label %101

101:                                              ; preds = %85, %53, %36, %28
  %102 = load %struct.ldmdb*, %struct.ldmdb** %6, align 8
  %103 = call i32 @kfree(%struct.ldmdb* %102)
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %101, %22
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ldm_validate_partition_table(%struct.block_device*) #1

declare dso_local %struct.ldmdb* @kmalloc(i32, i32) #1

declare dso_local i32 @ldm_crit(i8*) #1

declare dso_local i32 @ldm_validate_privheads(%struct.block_device*, %struct.TYPE_2__*) #1

declare dso_local i32 @ldm_validate_tocblocks(%struct.block_device*, i64, %struct.ldmdb*) #1

declare dso_local i32 @ldm_validate_vmdb(%struct.block_device*, i64, %struct.ldmdb*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ldm_get_vblks(%struct.block_device*, i64, %struct.ldmdb*) #1

declare dso_local i64 @ldm_create_data_partitions(%struct.parsed_partitions*, %struct.ldmdb*) #1

declare dso_local i32 @ldm_debug(i8*) #1

declare dso_local i32 @ldm_free_vblks(i32*) #1

declare dso_local i32 @kfree(%struct.ldmdb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
