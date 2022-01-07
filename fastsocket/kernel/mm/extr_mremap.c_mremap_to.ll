; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mremap.c_mremap_to.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mremap.c_mremap_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i32, i64, i64, i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@TASK_SIZE = common dso_local global i64 0, align 8
@MAP_FIXED = common dso_local global i64 0, align 8
@VM_MAYSHARE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64, i64)* @mremap_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mremap_to(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mm_struct*, align 8
  %10 = alloca %struct.vm_area_struct*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  store %struct.mm_struct* %16, %struct.mm_struct** %9, align 8
  %17 = load i64, i64* @EINVAL, align 8
  %18 = sub i64 0, %17
  store i64 %18, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @PAGE_MASK, align 8
  %21 = xor i64 %20, -1
  %22 = and i64 %19, %21
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %159

25:                                               ; preds = %4
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @TASK_SIZE, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @TASK_SIZE, align 8
  %32 = load i64, i64* %8, align 8
  %33 = sub i64 %31, %32
  %34 = icmp ugt i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29, %25
  br label %159

36:                                               ; preds = %29
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %5, align 8
  %39 = icmp ule i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %41, %42
  %44 = load i64, i64* %5, align 8
  %45 = icmp ugt i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %159

47:                                               ; preds = %40, %36
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp ule i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = add i64 %52, %53
  %55 = load i64, i64* %7, align 8
  %56 = icmp ugt i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %159

58:                                               ; preds = %51, %47
  %59 = load i64, i64* %7, align 8
  %60 = call i64 @security_file_mmap(i32* null, i32 0, i32 0, i32 0, i64 %59, i32 1)
  store i64 %60, i64* %11, align 8
  %61 = load i64, i64* %11, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %159

64:                                               ; preds = %58
  %65 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* %8, align 8
  %68 = call i64 @do_munmap(%struct.mm_struct* %65, i64 %66, i64 %67)
  store i64 %68, i64* %11, align 8
  %69 = load i64, i64* %11, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %159

72:                                               ; preds = %64
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* %8, align 8
  %75 = icmp uge i64 %73, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %72
  %77 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* %8, align 8
  %80 = add i64 %78, %79
  %81 = load i64, i64* %6, align 8
  %82 = load i64, i64* %8, align 8
  %83 = sub i64 %81, %82
  %84 = call i64 @do_munmap(%struct.mm_struct* %77, i64 %80, i64 %83)
  store i64 %84, i64* %11, align 8
  %85 = load i64, i64* %11, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %76
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* %8, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %159

92:                                               ; preds = %87, %76
  %93 = load i64, i64* %8, align 8
  store i64 %93, i64* %6, align 8
  br label %94

94:                                               ; preds = %92, %72
  %95 = load i64, i64* %5, align 8
  %96 = load i64, i64* %6, align 8
  %97 = load i64, i64* %8, align 8
  %98 = call %struct.vm_area_struct* @vma_to_resize(i64 %95, i64 %96, i64 %97, i64* %12)
  store %struct.vm_area_struct* %98, %struct.vm_area_struct** %10, align 8
  %99 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %100 = call i64 @IS_ERR(%struct.vm_area_struct* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %94
  %103 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %104 = call i64 @PTR_ERR(%struct.vm_area_struct* %103)
  store i64 %104, i64* %11, align 8
  br label %159

105:                                              ; preds = %94
  %106 = load i64, i64* @MAP_FIXED, align 8
  store i64 %106, i64* %13, align 8
  %107 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %108 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @VM_MAYSHARE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %105
  %114 = load i64, i64* @MAP_SHARED, align 8
  %115 = load i64, i64* %13, align 8
  %116 = or i64 %115, %114
  store i64 %116, i64* %13, align 8
  br label %117

117:                                              ; preds = %113, %105
  %118 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %119 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = load i64, i64* %7, align 8
  %122 = load i64, i64* %8, align 8
  %123 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %124 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* %5, align 8
  %127 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %128 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = sub i64 %126, %129
  %131 = load i64, i64* @PAGE_SHIFT, align 8
  %132 = lshr i64 %130, %131
  %133 = add i64 %125, %132
  %134 = load i64, i64* %13, align 8
  %135 = call i64 @get_unmapped_area(i32 %120, i64 %121, i64 %122, i64 %133, i64 %134)
  store i64 %135, i64* %11, align 8
  %136 = load i64, i64* %11, align 8
  %137 = load i64, i64* @PAGE_MASK, align 8
  %138 = xor i64 %137, -1
  %139 = and i64 %136, %138
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %117
  br label %156

142:                                              ; preds = %117
  %143 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %144 = load i64, i64* %5, align 8
  %145 = load i64, i64* %6, align 8
  %146 = load i64, i64* %8, align 8
  %147 = load i64, i64* %7, align 8
  %148 = call i64 @move_vma(%struct.vm_area_struct* %143, i64 %144, i64 %145, i64 %146, i64 %147)
  store i64 %148, i64* %11, align 8
  %149 = load i64, i64* %11, align 8
  %150 = load i64, i64* @PAGE_MASK, align 8
  %151 = xor i64 %150, -1
  %152 = and i64 %149, %151
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %142
  br label %159

155:                                              ; preds = %142
  br label %156

156:                                              ; preds = %155, %141
  %157 = load i64, i64* %12, align 8
  %158 = call i32 @vm_unacct_memory(i64 %157)
  br label %159

159:                                              ; preds = %156, %154, %102, %91, %71, %63, %57, %46, %35, %24
  %160 = load i64, i64* %11, align 8
  ret i64 %160
}

declare dso_local i64 @security_file_mmap(i32*, i32, i32, i32, i64, i32) #1

declare dso_local i64 @do_munmap(%struct.mm_struct*, i64, i64) #1

declare dso_local %struct.vm_area_struct* @vma_to_resize(i64, i64, i64, i64*) #1

declare dso_local i64 @IS_ERR(%struct.vm_area_struct*) #1

declare dso_local i64 @PTR_ERR(%struct.vm_area_struct*) #1

declare dso_local i64 @get_unmapped_area(i32, i64, i64, i64, i64) #1

declare dso_local i64 @move_vma(%struct.vm_area_struct*, i64, i64, i64, i64) #1

declare dso_local i32 @vm_unacct_memory(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
