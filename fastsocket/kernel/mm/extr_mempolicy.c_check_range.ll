; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_check_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_check_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct* }
%struct.mm_struct = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@MPOL_MF_DISCONTIG_OK = common dso_local global i64 0, align 8
@MPOL_MF_STRICT = common dso_local global i64 0, align 8
@MPOL_MF_MOVE = common dso_local global i64 0, align 8
@MPOL_MF_MOVE_ALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vm_area_struct* (%struct.mm_struct*, i64, i64, i32*, i64, i8*)* @check_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vm_area_struct* @check_range(%struct.mm_struct* %0, i64 %1, i64 %2, i32* %3, i64 %4, i8* %5) #0 {
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca %struct.mm_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.vm_area_struct*, align 8
  %16 = alloca %struct.vm_area_struct*, align 8
  %17 = alloca %struct.vm_area_struct*, align 8
  %18 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  %19 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %19, i64 %20)
  store %struct.vm_area_struct* %21, %struct.vm_area_struct** %15, align 8
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %23 = icmp ne %struct.vm_area_struct* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* @EFAULT, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.vm_area_struct* @ERR_PTR(i32 %26)
  store %struct.vm_area_struct* %27, %struct.vm_area_struct** %7, align 8
  br label %138

28:                                               ; preds = %6
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %17, align 8
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  store %struct.vm_area_struct* %29, %struct.vm_area_struct** %16, align 8
  br label %30

30:                                               ; preds = %132, %28
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %16, align 8
  %32 = icmp ne %struct.vm_area_struct* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %16, align 8
  %35 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp ult i64 %36, %37
  br label %39

39:                                               ; preds = %33, %30
  %40 = phi i1 [ false, %30 ], [ %38, %33 ]
  br i1 %40, label %41, label %136

41:                                               ; preds = %39
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* @MPOL_MF_DISCONTIG_OK, align 8
  %44 = and i64 %42, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %77, label %46

46:                                               ; preds = %41
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %16, align 8
  %48 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %47, i32 0, i32 2
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %48, align 8
  %50 = icmp ne %struct.vm_area_struct* %49, null
  br i1 %50, label %61, label %51

51:                                               ; preds = %46
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %16, align 8
  %53 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %10, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i32, i32* @EFAULT, align 4
  %59 = sub nsw i32 0, %58
  %60 = call %struct.vm_area_struct* @ERR_PTR(i32 %59)
  store %struct.vm_area_struct* %60, %struct.vm_area_struct** %7, align 8
  br label %138

61:                                               ; preds = %51, %46
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %17, align 8
  %63 = icmp ne %struct.vm_area_struct* %62, null
  br i1 %63, label %64, label %76

64:                                               ; preds = %61
  %65 = load %struct.vm_area_struct*, %struct.vm_area_struct** %17, align 8
  %66 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.vm_area_struct*, %struct.vm_area_struct** %16, align 8
  %69 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ult i64 %67, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = load i32, i32* @EFAULT, align 4
  %74 = sub nsw i32 0, %73
  %75 = call %struct.vm_area_struct* @ERR_PTR(i32 %74)
  store %struct.vm_area_struct* %75, %struct.vm_area_struct** %7, align 8
  br label %138

76:                                               ; preds = %64, %61
  br label %77

77:                                               ; preds = %76, %41
  %78 = load %struct.vm_area_struct*, %struct.vm_area_struct** %16, align 8
  %79 = call i32 @is_vm_hugetlb_page(%struct.vm_area_struct* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %130, label %81

81:                                               ; preds = %77
  %82 = load i64, i64* %12, align 8
  %83 = load i64, i64* @MPOL_MF_STRICT, align 8
  %84 = and i64 %82, %83
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %81
  %87 = load i64, i64* %12, align 8
  %88 = load i64, i64* @MPOL_MF_MOVE, align 8
  %89 = load i64, i64* @MPOL_MF_MOVE_ALL, align 8
  %90 = or i64 %88, %89
  %91 = and i64 %87, %90
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %130

93:                                               ; preds = %86
  %94 = load %struct.vm_area_struct*, %struct.vm_area_struct** %16, align 8
  %95 = call i64 @vma_migratable(%struct.vm_area_struct* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %130

97:                                               ; preds = %93, %81
  %98 = load %struct.vm_area_struct*, %struct.vm_area_struct** %16, align 8
  %99 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %18, align 8
  %101 = load i64, i64* %18, align 8
  %102 = load i64, i64* %10, align 8
  %103 = icmp ugt i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load i64, i64* %10, align 8
  store i64 %105, i64* %18, align 8
  br label %106

106:                                              ; preds = %104, %97
  %107 = load %struct.vm_area_struct*, %struct.vm_area_struct** %16, align 8
  %108 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %9, align 8
  %111 = icmp ugt i64 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load %struct.vm_area_struct*, %struct.vm_area_struct** %16, align 8
  %114 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %9, align 8
  br label %116

116:                                              ; preds = %112, %106
  %117 = load %struct.vm_area_struct*, %struct.vm_area_struct** %16, align 8
  %118 = load i64, i64* %9, align 8
  %119 = load i64, i64* %18, align 8
  %120 = load i32*, i32** %11, align 8
  %121 = load i64, i64* %12, align 8
  %122 = load i8*, i8** %13, align 8
  %123 = call i32 @check_pgd_range(%struct.vm_area_struct* %117, i64 %118, i64 %119, i32* %120, i64 %121, i8* %122)
  store i32 %123, i32* %14, align 4
  %124 = load i32, i32* %14, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %116
  %127 = load i32, i32* %14, align 4
  %128 = call %struct.vm_area_struct* @ERR_PTR(i32 %127)
  store %struct.vm_area_struct* %128, %struct.vm_area_struct** %15, align 8
  br label %136

129:                                              ; preds = %116
  br label %130

130:                                              ; preds = %129, %93, %86, %77
  %131 = load %struct.vm_area_struct*, %struct.vm_area_struct** %16, align 8
  store %struct.vm_area_struct* %131, %struct.vm_area_struct** %17, align 8
  br label %132

132:                                              ; preds = %130
  %133 = load %struct.vm_area_struct*, %struct.vm_area_struct** %16, align 8
  %134 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %133, i32 0, i32 2
  %135 = load %struct.vm_area_struct*, %struct.vm_area_struct** %134, align 8
  store %struct.vm_area_struct* %135, %struct.vm_area_struct** %16, align 8
  br label %30

136:                                              ; preds = %126, %39
  %137 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  store %struct.vm_area_struct* %137, %struct.vm_area_struct** %7, align 8
  br label %138

138:                                              ; preds = %136, %72, %57, %24
  %139 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  ret %struct.vm_area_struct* %139
}

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local %struct.vm_area_struct* @ERR_PTR(i32) #1

declare dso_local i32 @is_vm_hugetlb_page(%struct.vm_area_struct*) #1

declare dso_local i64 @vma_migratable(%struct.vm_area_struct*) #1

declare dso_local i32 @check_pgd_range(%struct.vm_area_struct*, i64, i64, i32*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
