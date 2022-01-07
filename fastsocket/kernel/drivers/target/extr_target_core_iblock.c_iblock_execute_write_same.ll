; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_iblock.c_iblock_execute_write_same.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_iblock.c_iblock_execute_write_same.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i32, %struct.iblock_req*, %struct.TYPE_4__*, %struct.scatterlist* }
%struct.iblock_req = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.scatterlist = type { i32, i32 }
%struct.bio = type { i32 }
%struct.bio_list = type { i32 }

@.str = private unnamed_addr constant [68 x i8] c"WRITE_SAME: Illegal SGL t_data_nents: %u length: %u block_size: %u\0A\00", align 1
@TCM_INVALID_CDB_FIELD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IBLOCK_LBA_SHIFT = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*)* @iblock_execute_write_same to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iblock_execute_write_same(%struct.se_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca %struct.iblock_req*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %struct.bio_list, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %10 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %11 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %8, align 4
  %13 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %14 = call i32 @sbc_get_write_same_sectors(%struct.se_cmd* %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %16 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %15, i32 0, i32 4
  %17 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %18 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %17, i64 0
  store %struct.scatterlist* %18, %struct.scatterlist** %5, align 8
  %19 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %20 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %34, label %23

23:                                               ; preds = %1
  %24 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %25 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %28 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %27, i32 0, i32 3
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %26, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %23, %1
  %35 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %36 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %39 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %42 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %41, i32 0, i32 3
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40, i32 %46)
  %48 = load i32, i32* @TCM_INVALID_CDB_FIELD, align 4
  store i32 %48, i32* %2, align 4
  br label %130

49:                                               ; preds = %23
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.iblock_req* @kzalloc(i32 4, i32 %50)
  store %struct.iblock_req* %51, %struct.iblock_req** %4, align 8
  %52 = load %struct.iblock_req*, %struct.iblock_req** %4, align 8
  %53 = icmp ne %struct.iblock_req* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  br label %128

55:                                               ; preds = %49
  %56 = load %struct.iblock_req*, %struct.iblock_req** %4, align 8
  %57 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %58 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %57, i32 0, i32 2
  store %struct.iblock_req* %56, %struct.iblock_req** %58, align 8
  %59 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call %struct.bio* @iblock_get_bio(%struct.se_cmd* %59, i32 %60, i32 1)
  store %struct.bio* %61, %struct.bio** %6, align 8
  %62 = load %struct.bio*, %struct.bio** %6, align 8
  %63 = icmp ne %struct.bio* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %55
  br label %125

65:                                               ; preds = %55
  %66 = call i32 @bio_list_init(%struct.bio_list* %7)
  %67 = load %struct.bio*, %struct.bio** %6, align 8
  %68 = call i32 @bio_list_add(%struct.bio_list* %7, %struct.bio* %67)
  %69 = load %struct.iblock_req*, %struct.iblock_req** %4, align 8
  %70 = getelementptr inbounds %struct.iblock_req, %struct.iblock_req* %69, i32 0, i32 0
  %71 = call i32 @atomic_set(i32* %70, i32 1)
  br label %72

72:                                               ; preds = %104, %65
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %114

75:                                               ; preds = %72
  br label %76

76:                                               ; preds = %98, %75
  %77 = load %struct.bio*, %struct.bio** %6, align 8
  %78 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %79 = call i32 @sg_page(%struct.scatterlist* %78)
  %80 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %81 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %84 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @bio_add_page(%struct.bio* %77, i32 %79, i32 %82, i32 %85)
  %87 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %88 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %86, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %76
  %92 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call %struct.bio* @iblock_get_bio(%struct.se_cmd* %92, i32 %93, i32 1)
  store %struct.bio* %94, %struct.bio** %6, align 8
  %95 = load %struct.bio*, %struct.bio** %6, align 8
  %96 = icmp ne %struct.bio* %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %91
  br label %117

98:                                               ; preds = %91
  %99 = load %struct.iblock_req*, %struct.iblock_req** %4, align 8
  %100 = getelementptr inbounds %struct.iblock_req, %struct.iblock_req* %99, i32 0, i32 0
  %101 = call i32 @atomic_inc(i32* %100)
  %102 = load %struct.bio*, %struct.bio** %6, align 8
  %103 = call i32 @bio_list_add(%struct.bio_list* %7, %struct.bio* %102)
  br label %76

104:                                              ; preds = %76
  %105 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %106 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @IBLOCK_LBA_SHIFT, align 4
  %109 = ashr i32 %107, %108
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %9, align 4
  %113 = sub nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  br label %72

114:                                              ; preds = %72
  %115 = load i32, i32* @WRITE, align 4
  %116 = call i32 @iblock_submit_bios(%struct.bio_list* %7, i32 %115)
  store i32 0, i32* %2, align 4
  br label %130

117:                                              ; preds = %97
  br label %118

118:                                              ; preds = %121, %117
  %119 = call %struct.bio* @bio_list_pop(%struct.bio_list* %7)
  store %struct.bio* %119, %struct.bio** %6, align 8
  %120 = icmp ne %struct.bio* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load %struct.bio*, %struct.bio** %6, align 8
  %123 = call i32 @bio_put(%struct.bio* %122)
  br label %118

124:                                              ; preds = %118
  br label %125

125:                                              ; preds = %124, %64
  %126 = load %struct.iblock_req*, %struct.iblock_req** %4, align 8
  %127 = call i32 @kfree(%struct.iblock_req* %126)
  br label %128

128:                                              ; preds = %125, %54
  %129 = load i32, i32* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %128, %114, %34
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i32 @sbc_get_write_same_sectors(%struct.se_cmd*) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local %struct.iblock_req* @kzalloc(i32, i32) #1

declare dso_local %struct.bio* @iblock_get_bio(%struct.se_cmd*, i32, i32) #1

declare dso_local i32 @bio_list_init(%struct.bio_list*) #1

declare dso_local i32 @bio_list_add(%struct.bio_list*, %struct.bio*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @bio_add_page(%struct.bio*, i32, i32, i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @iblock_submit_bios(%struct.bio_list*, i32) #1

declare dso_local %struct.bio* @bio_list_pop(%struct.bio_list*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @kfree(%struct.iblock_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
