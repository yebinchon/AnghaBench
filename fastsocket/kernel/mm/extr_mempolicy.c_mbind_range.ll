; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_mbind_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_mbind_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.mempolicy = type { i32 }
%struct.vm_area_struct = type { i64, i64, i32, %struct.vm_area_struct*, i32, i32, i32, i64 }

@EFAULT = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, i64, i64, %struct.mempolicy*)* @mbind_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbind_range(%struct.mm_struct* %0, i64 %1, i64 %2, %struct.mempolicy* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mempolicy*, align 8
  %10 = alloca %struct.vm_area_struct*, align 8
  %11 = alloca %struct.vm_area_struct*, align 8
  %12 = alloca %struct.vm_area_struct*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.mempolicy* %3, %struct.mempolicy** %9, align 8
  store i32 0, i32* %13, align 4
  %17 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call %struct.vm_area_struct* @find_vma_prev(%struct.mm_struct* %17, i64 %18, %struct.vm_area_struct** %11)
  store %struct.vm_area_struct* %19, %struct.vm_area_struct** %12, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %21 = icmp ne %struct.vm_area_struct* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22, %4
  %29 = load i32, i32* @EFAULT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %154

31:                                               ; preds = %22
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %34 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ugt i64 %32, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  store %struct.vm_area_struct* %38, %struct.vm_area_struct** %11, align 8
  br label %39

39:                                               ; preds = %37, %31
  br label %40

40:                                               ; preds = %148, %39
  %41 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %42 = icmp ne %struct.vm_area_struct* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %45 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %8, align 8
  %48 = icmp ult i64 %46, %47
  br label %49

49:                                               ; preds = %43, %40
  %50 = phi i1 [ false, %40 ], [ %48, %43 ]
  br i1 %50, label %51, label %151

51:                                               ; preds = %49
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %53 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %52, i32 0, i32 3
  %54 = load %struct.vm_area_struct*, %struct.vm_area_struct** %53, align 8
  store %struct.vm_area_struct* %54, %struct.vm_area_struct** %10, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %57 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @max(i64 %55, i64 %58)
  store i64 %59, i64* %15, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %62 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @min(i64 %60, i64 %63)
  store i64 %64, i64* %16, align 8
  %65 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %66 = call i32 @vma_policy(%struct.vm_area_struct* %65)
  %67 = load %struct.mempolicy*, %struct.mempolicy** %9, align 8
  %68 = call i64 @mpol_equal(i32 %66, %struct.mempolicy* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %51
  br label %148

71:                                               ; preds = %51
  %72 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %73 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %72, i32 0, i32 7
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %15, align 8
  %76 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %77 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = sub i64 %75, %78
  %80 = load i64, i64* @PAGE_SHIFT, align 8
  %81 = lshr i64 %79, %80
  %82 = add i64 %74, %81
  store i64 %82, i64* %14, align 8
  %83 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %84 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %85 = load i64, i64* %15, align 8
  %86 = load i64, i64* %16, align 8
  %87 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %88 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %91 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %94 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load i64, i64* %14, align 8
  %97 = load %struct.mempolicy*, %struct.mempolicy** %9, align 8
  %98 = call %struct.vm_area_struct* @vma_merge(%struct.mm_struct* %83, %struct.vm_area_struct* %84, i64 %85, i64 %86, i32 %89, i32 %92, i32 %95, i64 %96, %struct.mempolicy* %97)
  store %struct.vm_area_struct* %98, %struct.vm_area_struct** %11, align 8
  %99 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %100 = icmp ne %struct.vm_area_struct* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %71
  %102 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  store %struct.vm_area_struct* %102, %struct.vm_area_struct** %12, align 8
  %103 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %104 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %103, i32 0, i32 3
  %105 = load %struct.vm_area_struct*, %struct.vm_area_struct** %104, align 8
  store %struct.vm_area_struct* %105, %struct.vm_area_struct** %10, align 8
  br label %148

106:                                              ; preds = %71
  %107 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %108 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %15, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %123

112:                                              ; preds = %106
  %113 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %114 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %117 = load i64, i64* %15, align 8
  %118 = call i32 @split_vma(i32 %115, %struct.vm_area_struct* %116, i64 %117, i32 1)
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %13, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %112
  br label %152

122:                                              ; preds = %112
  br label %123

123:                                              ; preds = %122, %106
  %124 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %125 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %16, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %140

129:                                              ; preds = %123
  %130 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %131 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %134 = load i64, i64* %16, align 8
  %135 = call i32 @split_vma(i32 %132, %struct.vm_area_struct* %133, i64 %134, i32 0)
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %13, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %129
  br label %152

139:                                              ; preds = %129
  br label %140

140:                                              ; preds = %139, %123
  %141 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %142 = load %struct.mempolicy*, %struct.mempolicy** %9, align 8
  %143 = call i32 @policy_vma(%struct.vm_area_struct* %141, %struct.mempolicy* %142)
  store i32 %143, i32* %13, align 4
  %144 = load i32, i32* %13, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  br label %152

147:                                              ; preds = %140
  br label %148

148:                                              ; preds = %147, %101, %70
  %149 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  store %struct.vm_area_struct* %149, %struct.vm_area_struct** %11, align 8
  %150 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  store %struct.vm_area_struct* %150, %struct.vm_area_struct** %12, align 8
  br label %40

151:                                              ; preds = %49
  br label %152

152:                                              ; preds = %151, %146, %138, %121
  %153 = load i32, i32* %13, align 4
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %152, %28
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local %struct.vm_area_struct* @find_vma_prev(%struct.mm_struct*, i64, %struct.vm_area_struct**) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @mpol_equal(i32, %struct.mempolicy*) #1

declare dso_local i32 @vma_policy(%struct.vm_area_struct*) #1

declare dso_local %struct.vm_area_struct* @vma_merge(%struct.mm_struct*, %struct.vm_area_struct*, i64, i64, i32, i32, i32, i64, %struct.mempolicy*) #1

declare dso_local i32 @split_vma(i32, %struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @policy_vma(%struct.vm_area_struct*, %struct.mempolicy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
