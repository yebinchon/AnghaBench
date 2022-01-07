; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.sep_device* }
%struct.sep_device = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"------------>SEP Driver: ioctl start\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"SEP Driver: cmd is %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"SEP Driver: after sep_send_command_handler\0A\00", align 1
@ENOTTY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"SEP Driver:<-------- ioctl end\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*, i32, i64)* @sep_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sep_ioctl(%struct.inode* %0, %struct.file* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sep_device*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.file*, %struct.file** %6, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.sep_device*, %struct.sep_device** %12, align 8
  store %struct.sep_device* %13, %struct.sep_device** %10, align 8
  %14 = call i32 @dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %7, align 4
  %16 = call i32 (i8*, ...) @edbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %87 [
    i32 133, label %18
    i32 132, label %22
    i32 143, label %25
    i32 128, label %29
    i32 135, label %33
    i32 141, label %37
    i32 142, label %41
    i32 139, label %45
    i32 129, label %48
    i32 144, label %52
    i32 145, label %56
    i32 130, label %60
    i32 131, label %63
    i32 136, label %67
    i32 140, label %71
    i32 134, label %75
    i32 137, label %79
    i32 138, label %83
  ]

18:                                               ; preds = %4
  %19 = load %struct.sep_device*, %struct.sep_device** %10, align 8
  %20 = call i32 @sep_send_command_handler(%struct.sep_device* %19)
  %21 = call i32 (i8*, ...) @edbg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %90

22:                                               ; preds = %4
  %23 = load %struct.sep_device*, %struct.sep_device** %10, align 8
  %24 = call i32 @sep_send_reply_command_handler(%struct.sep_device* %23)
  br label %90

25:                                               ; preds = %4
  %26 = load %struct.sep_device*, %struct.sep_device** %10, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @sep_allocate_data_pool_memory_handler(%struct.sep_device* %26, i64 %27)
  store i32 %28, i32* %9, align 4
  br label %90

29:                                               ; preds = %4
  %30 = load %struct.sep_device*, %struct.sep_device** %10, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @sep_write_into_data_pool_handler(%struct.sep_device* %30, i64 %31)
  store i32 %32, i32* %9, align 4
  br label %90

33:                                               ; preds = %4
  %34 = load %struct.sep_device*, %struct.sep_device** %10, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @sep_read_from_data_pool_handler(%struct.sep_device* %34, i64 %35)
  store i32 %36, i32* %9, align 4
  br label %90

37:                                               ; preds = %4
  %38 = load %struct.sep_device*, %struct.sep_device** %10, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @sep_create_sync_dma_tables_handler(%struct.sep_device* %38, i64 %39)
  store i32 %40, i32* %9, align 4
  br label %90

41:                                               ; preds = %4
  %42 = load %struct.sep_device*, %struct.sep_device** %10, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @sep_create_flow_dma_tables_handler(%struct.sep_device* %42, i64 %43)
  store i32 %44, i32* %9, align 4
  br label %90

45:                                               ; preds = %4
  %46 = load %struct.sep_device*, %struct.sep_device** %10, align 8
  %47 = call i32 @sep_free_dma_table_data_handler(%struct.sep_device* %46)
  store i32 %47, i32* %9, align 4
  br label %90

48:                                               ; preds = %4
  %49 = load %struct.sep_device*, %struct.sep_device** %10, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @sep_set_flow_id_handler(%struct.sep_device* %49, i64 %50)
  store i32 %51, i32* %9, align 4
  br label %90

52:                                               ; preds = %4
  %53 = load %struct.sep_device*, %struct.sep_device** %10, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @sep_add_flow_tables_handler(%struct.sep_device* %53, i64 %54)
  store i32 %55, i32* %9, align 4
  br label %90

56:                                               ; preds = %4
  %57 = load %struct.sep_device*, %struct.sep_device** %10, align 8
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @sep_add_flow_tables_message_handler(%struct.sep_device* %57, i64 %58)
  store i32 %59, i32* %9, align 4
  br label %90

60:                                               ; preds = %4
  %61 = load %struct.sep_device*, %struct.sep_device** %10, align 8
  %62 = call i32 @sep_start_handler(%struct.sep_device* %61)
  store i32 %62, i32* %9, align 4
  br label %90

63:                                               ; preds = %4
  %64 = load %struct.sep_device*, %struct.sep_device** %10, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @sep_init_handler(%struct.sep_device* %64, i64 %65)
  store i32 %66, i32* %9, align 4
  br label %90

67:                                               ; preds = %4
  %68 = load %struct.sep_device*, %struct.sep_device** %10, align 8
  %69 = load i64, i64* %8, align 8
  %70 = call i32 @sep_get_static_pool_addr_handler(%struct.sep_device* %68, i64 %69)
  store i32 %70, i32* %9, align 4
  br label %90

71:                                               ; preds = %4
  %72 = load %struct.sep_device*, %struct.sep_device** %10, align 8
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @sep_end_transaction_handler(%struct.sep_device* %72, i64 %73)
  store i32 %74, i32* %9, align 4
  br label %90

75:                                               ; preds = %4
  %76 = load %struct.sep_device*, %struct.sep_device** %10, align 8
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @sep_realloc_cache_resident_handler(%struct.sep_device* %76, i64 %77)
  store i32 %78, i32* %9, align 4
  br label %90

79:                                               ; preds = %4
  %80 = load %struct.sep_device*, %struct.sep_device** %10, align 8
  %81 = load i64, i64* %8, align 8
  %82 = call i32 @sep_get_physical_mapped_offset_handler(%struct.sep_device* %80, i64 %81)
  store i32 %82, i32* %9, align 4
  br label %90

83:                                               ; preds = %4
  %84 = load %struct.sep_device*, %struct.sep_device** %10, align 8
  %85 = load i64, i64* %8, align 8
  %86 = call i32 @sep_get_time_handler(%struct.sep_device* %84, i64 %85)
  store i32 %86, i32* %9, align 4
  br label %90

87:                                               ; preds = %4
  %88 = load i32, i32* @ENOTTY, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %87, %83, %79, %75, %71, %67, %63, %60, %56, %52, %48, %45, %41, %37, %33, %29, %25, %22, %18
  %91 = call i32 @dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %92 = load i32, i32* %9, align 4
  ret i32 %92
}

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @edbg(i8*, ...) #1

declare dso_local i32 @sep_send_command_handler(%struct.sep_device*) #1

declare dso_local i32 @sep_send_reply_command_handler(%struct.sep_device*) #1

declare dso_local i32 @sep_allocate_data_pool_memory_handler(%struct.sep_device*, i64) #1

declare dso_local i32 @sep_write_into_data_pool_handler(%struct.sep_device*, i64) #1

declare dso_local i32 @sep_read_from_data_pool_handler(%struct.sep_device*, i64) #1

declare dso_local i32 @sep_create_sync_dma_tables_handler(%struct.sep_device*, i64) #1

declare dso_local i32 @sep_create_flow_dma_tables_handler(%struct.sep_device*, i64) #1

declare dso_local i32 @sep_free_dma_table_data_handler(%struct.sep_device*) #1

declare dso_local i32 @sep_set_flow_id_handler(%struct.sep_device*, i64) #1

declare dso_local i32 @sep_add_flow_tables_handler(%struct.sep_device*, i64) #1

declare dso_local i32 @sep_add_flow_tables_message_handler(%struct.sep_device*, i64) #1

declare dso_local i32 @sep_start_handler(%struct.sep_device*) #1

declare dso_local i32 @sep_init_handler(%struct.sep_device*, i64) #1

declare dso_local i32 @sep_get_static_pool_addr_handler(%struct.sep_device*, i64) #1

declare dso_local i32 @sep_end_transaction_handler(%struct.sep_device*, i64) #1

declare dso_local i32 @sep_realloc_cache_resident_handler(%struct.sep_device*, i64) #1

declare dso_local i32 @sep_get_physical_mapped_offset_handler(%struct.sep_device*, i64) #1

declare dso_local i32 @sep_get_time_handler(%struct.sep_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
