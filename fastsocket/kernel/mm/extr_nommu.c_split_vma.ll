; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_nommu.c_split_vma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_nommu.c_split_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i64 }
%struct.vm_area_struct = type { i64, i64, i64, %struct.vm_region*, %struct.TYPE_2__*, i64 }
%struct.vm_region = type { i64, i64, i64, i64, i32 }
%struct.TYPE_2__ = type { i32 (%struct.vm_area_struct*)* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOMEM = common dso_local global i32 0, align 4
@sysctl_max_map_count = common dso_local global i64 0, align 8
@vm_region_jar = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@vm_area_cachep = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@nommu_region_sem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @split_vma(%struct.mm_struct* %0, %struct.vm_area_struct* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vm_area_struct*, align 8
  %11 = alloca %struct.vm_region*, align 8
  %12 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %6, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = call i32 @kenter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %4
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 3
  %21 = load %struct.vm_region*, %struct.vm_region** %20, align 8
  %22 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %21, i32 0, i32 4
  %23 = call i32 @atomic_read(i32* %22)
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %18, %4
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %180

28:                                               ; preds = %18
  %29 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %30 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @sysctl_max_map_count, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %180

37:                                               ; preds = %28
  %38 = load i32, i32* @vm_region_jar, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i8* @kmem_cache_alloc(i32 %38, i32 %39)
  %41 = bitcast i8* %40 to %struct.vm_region*
  store %struct.vm_region* %41, %struct.vm_region** %11, align 8
  %42 = load %struct.vm_region*, %struct.vm_region** %11, align 8
  %43 = icmp ne %struct.vm_region* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %180

47:                                               ; preds = %37
  %48 = load i32, i32* @vm_area_cachep, align 4
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i8* @kmem_cache_alloc(i32 %48, i32 %49)
  %51 = bitcast i8* %50 to %struct.vm_area_struct*
  store %struct.vm_area_struct* %51, %struct.vm_area_struct** %10, align 8
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %53 = icmp ne %struct.vm_area_struct* %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* @vm_region_jar, align 4
  %56 = load %struct.vm_region*, %struct.vm_region** %11, align 8
  %57 = call i32 @kmem_cache_free(i32 %55, %struct.vm_region* %56)
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %180

60:                                               ; preds = %47
  %61 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %63 = bitcast %struct.vm_area_struct* %61 to i8*
  %64 = bitcast %struct.vm_area_struct* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 48, i1 false)
  %65 = load %struct.vm_region*, %struct.vm_region** %11, align 8
  %66 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %67 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %66, i32 0, i32 3
  %68 = load %struct.vm_region*, %struct.vm_region** %67, align 8
  %69 = bitcast %struct.vm_region* %65 to i8*
  %70 = bitcast %struct.vm_region* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 40, i1 false)
  %71 = load %struct.vm_region*, %struct.vm_region** %11, align 8
  %72 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %73 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %72, i32 0, i32 3
  store %struct.vm_region* %71, %struct.vm_region** %73, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %76 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = sub i64 %74, %77
  %79 = load i64, i64* @PAGE_SHIFT, align 8
  %80 = lshr i64 %78, %79
  store i64 %80, i64* %12, align 8
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %60
  %84 = load i64, i64* %8, align 8
  %85 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %86 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  %87 = load %struct.vm_region*, %struct.vm_region** %11, align 8
  %88 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %87, i32 0, i32 1
  store i64 %84, i64* %88, align 8
  %89 = load %struct.vm_region*, %struct.vm_region** %11, align 8
  %90 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %89, i32 0, i32 0
  store i64 %84, i64* %90, align 8
  br label %104

91:                                               ; preds = %60
  %92 = load i64, i64* %8, align 8
  %93 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %94 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load %struct.vm_region*, %struct.vm_region** %11, align 8
  %96 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %95, i32 0, i32 2
  store i64 %92, i64* %96, align 8
  %97 = load i64, i64* %12, align 8
  %98 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %99 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = add i64 %100, %97
  store i64 %101, i64* %99, align 8
  %102 = load %struct.vm_region*, %struct.vm_region** %11, align 8
  %103 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %102, i32 0, i32 3
  store i64 %101, i64* %103, align 8
  br label %104

104:                                              ; preds = %91, %83
  %105 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %106 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %105, i32 0, i32 4
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = icmp ne %struct.TYPE_2__* %107, null
  br i1 %108, label %109, label %124

109:                                              ; preds = %104
  %110 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %111 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %110, i32 0, i32 4
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*)** %113, align 8
  %115 = icmp ne i32 (%struct.vm_area_struct*)* %114, null
  br i1 %115, label %116, label %124

116:                                              ; preds = %109
  %117 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %118 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %117, i32 0, i32 4
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*)** %120, align 8
  %122 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %123 = call i32 %121(%struct.vm_area_struct* %122)
  br label %124

124:                                              ; preds = %116, %109, %104
  %125 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %126 = call i32 @delete_vma_from_mm(%struct.vm_area_struct* %125)
  %127 = call i32 @down_write(i32* @nommu_region_sem)
  %128 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %129 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %128, i32 0, i32 3
  %130 = load %struct.vm_region*, %struct.vm_region** %129, align 8
  %131 = call i32 @delete_nommu_region(%struct.vm_region* %130)
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %151

134:                                              ; preds = %124
  %135 = load i64, i64* %8, align 8
  %136 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %137 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %136, i32 0, i32 0
  store i64 %135, i64* %137, align 8
  %138 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %139 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %138, i32 0, i32 3
  %140 = load %struct.vm_region*, %struct.vm_region** %139, align 8
  %141 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %140, i32 0, i32 2
  store i64 %135, i64* %141, align 8
  %142 = load i64, i64* %12, align 8
  %143 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %144 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = add i64 %145, %142
  store i64 %146, i64* %144, align 8
  %147 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %148 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %147, i32 0, i32 3
  %149 = load %struct.vm_region*, %struct.vm_region** %148, align 8
  %150 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %149, i32 0, i32 3
  store i64 %146, i64* %150, align 8
  br label %164

151:                                              ; preds = %124
  %152 = load i64, i64* %8, align 8
  %153 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %154 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %153, i32 0, i32 1
  store i64 %152, i64* %154, align 8
  %155 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %156 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %155, i32 0, i32 3
  %157 = load %struct.vm_region*, %struct.vm_region** %156, align 8
  %158 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %157, i32 0, i32 1
  store i64 %152, i64* %158, align 8
  %159 = load i64, i64* %8, align 8
  %160 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %161 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %160, i32 0, i32 3
  %162 = load %struct.vm_region*, %struct.vm_region** %161, align 8
  %163 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %162, i32 0, i32 0
  store i64 %159, i64* %163, align 8
  br label %164

164:                                              ; preds = %151, %134
  %165 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %166 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %165, i32 0, i32 3
  %167 = load %struct.vm_region*, %struct.vm_region** %166, align 8
  %168 = call i32 @add_nommu_region(%struct.vm_region* %167)
  %169 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %170 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %169, i32 0, i32 3
  %171 = load %struct.vm_region*, %struct.vm_region** %170, align 8
  %172 = call i32 @add_nommu_region(%struct.vm_region* %171)
  %173 = call i32 @up_write(i32* @nommu_region_sem)
  %174 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %175 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %176 = call i32 @add_vma_to_mm(%struct.mm_struct* %174, %struct.vm_area_struct* %175)
  %177 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %178 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %179 = call i32 @add_vma_to_mm(%struct.mm_struct* %177, %struct.vm_area_struct* %178)
  store i32 0, i32* %5, align 4
  br label %180

180:                                              ; preds = %164, %54, %44, %34, %25
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

declare dso_local i32 @kenter(i8*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i8* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.vm_region*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @delete_vma_from_mm(%struct.vm_area_struct*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @delete_nommu_region(%struct.vm_region*) #1

declare dso_local i32 @add_nommu_region(%struct.vm_region*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @add_vma_to_mm(%struct.mm_struct*, %struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
