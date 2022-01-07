; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_copy_vma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_copy_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i32, i64, i64, %struct.TYPE_2__*, i64, i32, i32, %struct.mm_struct* }
%struct.TYPE_2__ = type { i32 (%struct.vm_area_struct*)* }
%struct.mm_struct = type { i32 }
%struct.rb_node = type { i32 }
%struct.mempolicy = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@vm_area_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@VM_EXECUTABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vm_area_struct* @copy_vma(%struct.vm_area_struct** %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.vm_area_struct**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vm_area_struct*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mm_struct*, align 8
  %13 = alloca %struct.vm_area_struct*, align 8
  %14 = alloca %struct.vm_area_struct*, align 8
  %15 = alloca %struct.rb_node**, align 8
  %16 = alloca %struct.rb_node*, align 8
  %17 = alloca %struct.mempolicy*, align 8
  store %struct.vm_area_struct** %0, %struct.vm_area_struct*** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %6, align 8
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %18, align 8
  store %struct.vm_area_struct* %19, %struct.vm_area_struct** %10, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %11, align 8
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 8
  %25 = load %struct.mm_struct*, %struct.mm_struct** %24, align 8
  store %struct.mm_struct* %25, %struct.mm_struct** %12, align 8
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %27 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %4
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @PAGE_SHIFT, align 8
  %38 = lshr i64 %36, %37
  store i64 %38, i64* %9, align 8
  br label %39

39:                                               ; preds = %35, %30, %4
  %40 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @find_vma_prepare(%struct.mm_struct* %40, i64 %41, %struct.vm_area_struct** %14, %struct.rb_node*** %15, %struct.rb_node** %16)
  %43 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %46, %47
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %50 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %53 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %56 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %60 = call i32 @vma_policy(%struct.vm_area_struct* %59)
  %61 = call %struct.vm_area_struct* @vma_merge(%struct.mm_struct* %43, %struct.vm_area_struct* %44, i64 %45, i64 %48, i32 %51, i32 %54, i64 %57, i64 %58, i32 %60)
  store %struct.vm_area_struct* %61, %struct.vm_area_struct** %13, align 8
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %63 = icmp ne %struct.vm_area_struct* %62, null
  br i1 %63, label %64, label %80

64:                                               ; preds = %39
  %65 = load i64, i64* %11, align 8
  %66 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %67 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp uge i64 %65, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %64
  %71 = load i64, i64* %11, align 8
  %72 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %73 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ult i64 %71, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %78 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %6, align 8
  store %struct.vm_area_struct* %77, %struct.vm_area_struct** %78, align 8
  br label %79

79:                                               ; preds = %76, %70, %64
  br label %169

80:                                               ; preds = %39
  %81 = load i32, i32* @vm_area_cachep, align 4
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call %struct.vm_area_struct* @kmem_cache_alloc(i32 %81, i32 %82)
  store %struct.vm_area_struct* %83, %struct.vm_area_struct** %13, align 8
  %84 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %85 = icmp ne %struct.vm_area_struct* %84, null
  br i1 %85, label %86, label %168

86:                                               ; preds = %80
  %87 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %88 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %89 = bitcast %struct.vm_area_struct* %87 to i8*
  %90 = bitcast %struct.vm_area_struct* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %89, i8* align 8 %90, i64 64, i1 false)
  %91 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %92 = call i32 @vma_policy(%struct.vm_area_struct* %91)
  %93 = call %struct.mempolicy* @mpol_dup(i32 %92)
  store %struct.mempolicy* %93, %struct.mempolicy** %17, align 8
  %94 = load %struct.mempolicy*, %struct.mempolicy** %17, align 8
  %95 = call i64 @IS_ERR(%struct.mempolicy* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %86
  br label %174

98:                                               ; preds = %86
  %99 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %100 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %99, i32 0, i32 6
  %101 = call i32 @INIT_LIST_HEAD(i32* %100)
  %102 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %103 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %104 = call i64 @anon_vma_clone(%struct.vm_area_struct* %102, %struct.vm_area_struct* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  br label %171

107:                                              ; preds = %98
  %108 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %109 = load %struct.mempolicy*, %struct.mempolicy** %17, align 8
  %110 = call i32 @vma_set_policy(%struct.vm_area_struct* %108, %struct.mempolicy* %109)
  %111 = load i64, i64* %7, align 8
  %112 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %113 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load i64, i64* %7, align 8
  %115 = load i64, i64* %8, align 8
  %116 = add i64 %114, %115
  %117 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %118 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %117, i32 0, i32 2
  store i64 %116, i64* %118, align 8
  %119 = load i64, i64* %9, align 8
  %120 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %121 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %120, i32 0, i32 3
  store i64 %119, i64* %121, align 8
  %122 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %123 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %141

126:                                              ; preds = %107
  %127 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %128 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @get_file(i64 %129)
  %131 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %132 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @VM_EXECUTABLE, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %126
  %138 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %139 = call i32 @added_exe_file_vma(%struct.mm_struct* %138)
  br label %140

140:                                              ; preds = %137, %126
  br label %141

141:                                              ; preds = %140, %107
  %142 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %143 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %142, i32 0, i32 4
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = icmp ne %struct.TYPE_2__* %144, null
  br i1 %145, label %146, label %161

146:                                              ; preds = %141
  %147 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %148 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %147, i32 0, i32 4
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*)** %150, align 8
  %152 = icmp ne i32 (%struct.vm_area_struct*)* %151, null
  br i1 %152, label %153, label %161

153:                                              ; preds = %146
  %154 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %155 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %154, i32 0, i32 4
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*)** %157, align 8
  %159 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %160 = call i32 %158(%struct.vm_area_struct* %159)
  br label %161

161:                                              ; preds = %153, %146, %141
  %162 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %163 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %164 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %165 = load %struct.rb_node**, %struct.rb_node*** %15, align 8
  %166 = load %struct.rb_node*, %struct.rb_node** %16, align 8
  %167 = call i32 @vma_link(%struct.mm_struct* %162, %struct.vm_area_struct* %163, %struct.vm_area_struct* %164, %struct.rb_node** %165, %struct.rb_node* %166)
  br label %168

168:                                              ; preds = %161, %80
  br label %169

169:                                              ; preds = %168, %79
  %170 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  store %struct.vm_area_struct* %170, %struct.vm_area_struct** %5, align 8
  br label %178

171:                                              ; preds = %106
  %172 = load %struct.mempolicy*, %struct.mempolicy** %17, align 8
  %173 = call i32 @mpol_put(%struct.mempolicy* %172)
  br label %174

174:                                              ; preds = %171, %97
  %175 = load i32, i32* @vm_area_cachep, align 4
  %176 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %177 = call i32 @kmem_cache_free(i32 %175, %struct.vm_area_struct* %176)
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %5, align 8
  br label %178

178:                                              ; preds = %174, %169
  %179 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  ret %struct.vm_area_struct* %179
}

declare dso_local i32 @find_vma_prepare(%struct.mm_struct*, i64, %struct.vm_area_struct**, %struct.rb_node***, %struct.rb_node**) #1

declare dso_local %struct.vm_area_struct* @vma_merge(%struct.mm_struct*, %struct.vm_area_struct*, i64, i64, i32, i32, i64, i64, i32) #1

declare dso_local i32 @vma_policy(%struct.vm_area_struct*) #1

declare dso_local %struct.vm_area_struct* @kmem_cache_alloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.mempolicy* @mpol_dup(i32) #1

declare dso_local i64 @IS_ERR(%struct.mempolicy*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @anon_vma_clone(%struct.vm_area_struct*, %struct.vm_area_struct*) #1

declare dso_local i32 @vma_set_policy(%struct.vm_area_struct*, %struct.mempolicy*) #1

declare dso_local i32 @get_file(i64) #1

declare dso_local i32 @added_exe_file_vma(%struct.mm_struct*) #1

declare dso_local i32 @vma_link(%struct.mm_struct*, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node**, %struct.rb_node*) #1

declare dso_local i32 @mpol_put(%struct.mempolicy*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
