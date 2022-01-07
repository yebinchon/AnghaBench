; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_rd.c_rd_build_device_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_rd.c_rd_build_device_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rd_dev = type { i64, i32, i32, %struct.TYPE_2__*, %struct.rd_dev_sg_table* }
%struct.TYPE_2__ = type { i32 }
%struct.rd_dev_sg_table = type { i32, i32, i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.page = type { i32 }

@RD_MAX_ALLOCATION_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Illegal page count: %u for Ramdisk device\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Unable to allocate memory for Ramdisk scatterlist tables\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"Unable to allocate scatterlist array for struct rd_dev\0A\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"Unable to allocate scatterlist pages for struct rd_dev_sg_table\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [74 x i8] c"CORE_RD[%u] - Built Ramdisk Device ID: %u space of %u pages in %u tables\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rd_dev*)* @rd_build_device_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rd_build_device_space(%struct.rd_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rd_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rd_dev_sg_table*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca %struct.scatterlist*, align 8
  store %struct.rd_dev* %0, %struct.rd_dev** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %14 = load i32, i32* @RD_MAX_ALLOCATION_SIZE, align 4
  %15 = sext i32 %14 to i64
  %16 = udiv i64 %15, 4
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %10, align 4
  %18 = load %struct.rd_dev*, %struct.rd_dev** %3, align 8
  %19 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sle i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.rd_dev*, %struct.rd_dev** %3, align 8
  %24 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %169

29:                                               ; preds = %1
  %30 = load %struct.rd_dev*, %struct.rd_dev** %3, align 8
  %31 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = sdiv i32 %34, %35
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 24
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i8* @kzalloc(i32 %41, i32 %42)
  %44 = bitcast i8* %43 to %struct.rd_dev_sg_table*
  store %struct.rd_dev_sg_table* %44, %struct.rd_dev_sg_table** %11, align 8
  %45 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %11, align 8
  %46 = icmp ne %struct.rd_dev_sg_table* %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %29
  %48 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %169

51:                                               ; preds = %29
  %52 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %11, align 8
  %53 = load %struct.rd_dev*, %struct.rd_dev** %3, align 8
  %54 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %53, i32 0, i32 4
  store %struct.rd_dev_sg_table* %52, %struct.rd_dev_sg_table** %54, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.rd_dev*, %struct.rd_dev** %3, align 8
  %57 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %145, %51
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %152

61:                                               ; preds = %58
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* %10, align 4
  br label %69

67:                                               ; preds = %61
  %68 = load i32, i32* %9, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 4
  %74 = trunc i64 %73 to i32
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call i8* @kzalloc(i32 %74, i32 %75)
  %77 = bitcast i8* %76 to %struct.scatterlist*
  store %struct.scatterlist* %77, %struct.scatterlist** %13, align 8
  %78 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %79 = icmp ne %struct.scatterlist* %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %69
  %81 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %169

84:                                               ; preds = %69
  %85 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @sg_init_table(%struct.scatterlist* %85, i32 %86)
  %88 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %89 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %11, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.rd_dev_sg_table, %struct.rd_dev_sg_table* %89, i64 %91
  %93 = getelementptr inbounds %struct.rd_dev_sg_table, %struct.rd_dev_sg_table* %92, i32 0, i32 3
  store %struct.scatterlist* %88, %struct.scatterlist** %93, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %11, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.rd_dev_sg_table, %struct.rd_dev_sg_table* %95, i64 %97
  %99 = getelementptr inbounds %struct.rd_dev_sg_table, %struct.rd_dev_sg_table* %98, i32 0, i32 0
  store i32 %94, i32* %99, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %11, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.rd_dev_sg_table, %struct.rd_dev_sg_table* %101, i64 %103
  %105 = getelementptr inbounds %struct.rd_dev_sg_table, %struct.rd_dev_sg_table* %104, i32 0, i32 1
  store i32 %100, i32* %105, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %106, %107
  %109 = sub nsw i32 %108, 1
  %110 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %11, align 8
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %4, align 4
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds %struct.rd_dev_sg_table, %struct.rd_dev_sg_table* %110, i64 %113
  %115 = getelementptr inbounds %struct.rd_dev_sg_table, %struct.rd_dev_sg_table* %114, i32 0, i32 2
  store i32 %109, i32* %115, align 8
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %142, %84
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %145

120:                                              ; preds = %116
  %121 = load i32, i32* @GFP_KERNEL, align 4
  %122 = call %struct.page* @alloc_pages(i32 %121, i32 0)
  store %struct.page* %122, %struct.page** %12, align 8
  %123 = load %struct.page*, %struct.page** %12, align 8
  %124 = icmp ne %struct.page* %123, null
  br i1 %124, label %129, label %125

125:                                              ; preds = %120
  %126 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0))
  %127 = load i32, i32* @ENOMEM, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %2, align 4
  br label %169

129:                                              ; preds = %120
  %130 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %130, i64 %132
  %134 = load %struct.page*, %struct.page** %12, align 8
  %135 = call i32 @sg_assign_page(%struct.scatterlist* %133, %struct.page* %134)
  %136 = load i32, i32* @PAGE_SIZE, align 4
  %137 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %137, i64 %139
  %141 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %140, i32 0, i32 0
  store i32 %136, i32* %141, align 4
  br label %142

142:                                              ; preds = %129
  %143 = load i32, i32* %5, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %5, align 4
  br label %116

145:                                              ; preds = %116
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* %6, align 4
  %148 = add nsw i32 %147, %146
  store i32 %148, i32* %6, align 4
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* %9, align 4
  %151 = sub nsw i32 %150, %149
  store i32 %151, i32* %9, align 4
  br label %58

152:                                              ; preds = %58
  %153 = load %struct.rd_dev*, %struct.rd_dev** %3, align 8
  %154 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %153, i32 0, i32 3
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.rd_dev*, %struct.rd_dev** %3, align 8
  %159 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.rd_dev*, %struct.rd_dev** %3, align 8
  %162 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = trunc i64 %163 to i32
  %165 = load %struct.rd_dev*, %struct.rd_dev** %3, align 8
  %166 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @pr_debug(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0), i32 %157, i32 %160, i32 %164, i32 %167)
  store i32 0, i32* %2, align 4
  br label %169

169:                                              ; preds = %152, %125, %80, %47, %22
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i32 @sg_assign_page(%struct.scatterlist*, %struct.page*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
