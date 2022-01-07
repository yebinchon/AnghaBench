; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mremap.c_vma_to_resize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mremap.c_vma_to_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.mm_struct* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.mm_struct = type { i64 }
%struct.vm_area_struct = type { i64, i64, i32, i64 }

@current = common dso_local global %struct.TYPE_6__* null, align 8
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@VM_PFNMAP = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_LOCKED = common dso_local global i32 0, align 4
@RLIMIT_MEMLOCK = common dso_local global i64 0, align 8
@CAP_IPC_LOCK = common dso_local global i32 0, align 4
@VM_ACCOUNT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vm_area_struct* (i64, i64, i64, i64*)* @vma_to_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vm_area_struct* @vma_to_resize(i64 %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.mm_struct*, align 8
  %11 = alloca %struct.vm_area_struct*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load %struct.mm_struct*, %struct.mm_struct** %17, align 8
  store %struct.mm_struct* %18, %struct.mm_struct** %10, align 8
  %19 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %19, i64 %20)
  store %struct.vm_area_struct* %21, %struct.vm_area_struct** %11, align 8
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %23 = icmp ne %struct.vm_area_struct* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %26 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %4
  br label %149

31:                                               ; preds = %24
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %33 = call i64 @is_vm_hugetlb_page(%struct.vm_area_struct* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %153

36:                                               ; preds = %31
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %39 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = sub i64 %40, %41
  %43 = icmp ugt i64 %37, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %149

45:                                               ; preds = %36
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %7, align 8
  %48 = icmp ugt i64 %46, %47
  br i1 %48, label %49, label %81

49:                                               ; preds = %45
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %51 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @VM_DONTEXPAND, align 4
  %54 = load i32, i32* @VM_PFNMAP, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %149

59:                                               ; preds = %49
  %60 = load i64, i64* %6, align 8
  %61 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %62 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = sub i64 %60, %63
  %65 = load i64, i64* @PAGE_SHIFT, align 8
  %66 = lshr i64 %64, %65
  store i64 %66, i64* %12, align 8
  %67 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %68 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %12, align 8
  %71 = add i64 %70, %69
  store i64 %71, i64* %12, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* @PAGE_SHIFT, align 8
  %75 = lshr i64 %73, %74
  %76 = add i64 %72, %75
  %77 = load i64, i64* %12, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %59
  br label %153

80:                                               ; preds = %59
  br label %81

81:                                               ; preds = %80, %45
  %82 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %83 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @VM_LOCKED, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %117

88:                                               ; preds = %81
  %89 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %90 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @PAGE_SHIFT, align 8
  %93 = shl i64 %91, %92
  store i64 %93, i64* %13, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load i64, i64* @RLIMIT_MEMLOCK, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %14, align 8
  %103 = load i64, i64* %8, align 8
  %104 = load i64, i64* %7, align 8
  %105 = sub i64 %103, %104
  %106 = load i64, i64* %13, align 8
  %107 = add i64 %106, %105
  store i64 %107, i64* %13, align 8
  %108 = load i64, i64* %13, align 8
  %109 = load i64, i64* %14, align 8
  %110 = icmp ugt i64 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %88
  %112 = load i32, i32* @CAP_IPC_LOCK, align 4
  %113 = call i32 @capable(i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %111
  br label %161

116:                                              ; preds = %111, %88
  br label %117

117:                                              ; preds = %116, %81
  %118 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %119 = load i64, i64* %8, align 8
  %120 = load i64, i64* %7, align 8
  %121 = sub i64 %119, %120
  %122 = load i64, i64* @PAGE_SHIFT, align 8
  %123 = lshr i64 %121, %122
  %124 = call i32 @may_expand_vm(%struct.mm_struct* %118, i64 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %117
  br label %157

127:                                              ; preds = %117
  %128 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %129 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @VM_ACCOUNT, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %147

134:                                              ; preds = %127
  %135 = load i64, i64* %8, align 8
  %136 = load i64, i64* %7, align 8
  %137 = sub i64 %135, %136
  %138 = load i64, i64* @PAGE_SHIFT, align 8
  %139 = lshr i64 %137, %138
  store i64 %139, i64* %15, align 8
  %140 = load i64, i64* %15, align 8
  %141 = call i64 @security_vm_enough_memory(i64 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %134
  br label %149

144:                                              ; preds = %134
  %145 = load i64, i64* %15, align 8
  %146 = load i64*, i64** %9, align 8
  store i64 %145, i64* %146, align 8
  br label %147

147:                                              ; preds = %144, %127
  %148 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  store %struct.vm_area_struct* %148, %struct.vm_area_struct** %5, align 8
  br label %165

149:                                              ; preds = %143, %58, %44, %30
  %150 = load i32, i32* @EFAULT, align 4
  %151 = sub nsw i32 0, %150
  %152 = call %struct.vm_area_struct* @ERR_PTR(i32 %151)
  store %struct.vm_area_struct* %152, %struct.vm_area_struct** %5, align 8
  br label %165

153:                                              ; preds = %79, %35
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  %156 = call %struct.vm_area_struct* @ERR_PTR(i32 %155)
  store %struct.vm_area_struct* %156, %struct.vm_area_struct** %5, align 8
  br label %165

157:                                              ; preds = %126
  %158 = load i32, i32* @ENOMEM, align 4
  %159 = sub nsw i32 0, %158
  %160 = call %struct.vm_area_struct* @ERR_PTR(i32 %159)
  store %struct.vm_area_struct* %160, %struct.vm_area_struct** %5, align 8
  br label %165

161:                                              ; preds = %115
  %162 = load i32, i32* @EAGAIN, align 4
  %163 = sub nsw i32 0, %162
  %164 = call %struct.vm_area_struct* @ERR_PTR(i32 %163)
  store %struct.vm_area_struct* %164, %struct.vm_area_struct** %5, align 8
  br label %165

165:                                              ; preds = %161, %157, %153, %149, %147
  %166 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  ret %struct.vm_area_struct* %166
}

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i64 @is_vm_hugetlb_page(%struct.vm_area_struct*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @may_expand_vm(%struct.mm_struct*, i64) #1

declare dso_local i64 @security_vm_enough_memory(i64) #1

declare dso_local %struct.vm_area_struct* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
