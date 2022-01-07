; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_madvise.c_madvise_behavior.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_madvise.c_madvise_behavior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i64, i64, i32, i32, i64, %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@VM_RAND_READ = common dso_local global i64 0, align 8
@VM_SEQ_READ = common dso_local global i64 0, align 8
@VM_DONTCOPY = common dso_local global i64 0, align 8
@VM_IO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VM_NODUMP = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vm_area_struct*, %struct.vm_area_struct**, i64, i64, i32)* @madvise_behavior to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @madvise_behavior(%struct.vm_area_struct* %0, %struct.vm_area_struct** %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca %struct.vm_area_struct**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mm_struct*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %6, align 8
  store %struct.vm_area_struct** %1, %struct.vm_area_struct*** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 6
  %17 = load %struct.mm_struct*, %struct.mm_struct** %16, align 8
  store %struct.mm_struct* %17, %struct.mm_struct** %11, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %14, align 8
  %21 = load i32, i32* %10, align 4
  switch i32 %21, label %90 [
    i32 131, label %22
    i32 129, label %30
    i32 130, label %37
    i32 135, label %44
    i32 137, label %48
    i32 136, label %64
    i32 138, label %68
    i32 133, label %73
    i32 128, label %73
    i32 134, label %83
    i32 132, label %83
  ]

22:                                               ; preds = %5
  %23 = load i64, i64* %14, align 8
  %24 = load i64, i64* @VM_RAND_READ, align 8
  %25 = xor i64 %24, -1
  %26 = and i64 %23, %25
  %27 = load i64, i64* @VM_SEQ_READ, align 8
  %28 = xor i64 %27, -1
  %29 = and i64 %26, %28
  store i64 %29, i64* %14, align 8
  br label %90

30:                                               ; preds = %5
  %31 = load i64, i64* %14, align 8
  %32 = load i64, i64* @VM_RAND_READ, align 8
  %33 = xor i64 %32, -1
  %34 = and i64 %31, %33
  %35 = load i64, i64* @VM_SEQ_READ, align 8
  %36 = or i64 %34, %35
  store i64 %36, i64* %14, align 8
  br label %90

37:                                               ; preds = %5
  %38 = load i64, i64* %14, align 8
  %39 = load i64, i64* @VM_SEQ_READ, align 8
  %40 = xor i64 %39, -1
  %41 = and i64 %38, %40
  %42 = load i64, i64* @VM_RAND_READ, align 8
  %43 = or i64 %41, %42
  store i64 %43, i64* %14, align 8
  br label %90

44:                                               ; preds = %5
  %45 = load i64, i64* @VM_DONTCOPY, align 8
  %46 = load i64, i64* %14, align 8
  %47 = or i64 %46, %45
  store i64 %47, i64* %14, align 8
  br label %90

48:                                               ; preds = %5
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %50 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* @VM_IO, align 4
  %53 = sext i32 %52 to i64
  %54 = and i64 %51, %53
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %12, align 4
  br label %171

59:                                               ; preds = %48
  %60 = load i64, i64* @VM_DONTCOPY, align 8
  %61 = xor i64 %60, -1
  %62 = load i64, i64* %14, align 8
  %63 = and i64 %62, %61
  store i64 %63, i64* %14, align 8
  br label %90

64:                                               ; preds = %5
  %65 = load i64, i64* @VM_NODUMP, align 8
  %66 = load i64, i64* %14, align 8
  %67 = or i64 %66, %65
  store i64 %67, i64* %14, align 8
  br label %90

68:                                               ; preds = %5
  %69 = load i64, i64* @VM_NODUMP, align 8
  %70 = xor i64 %69, -1
  %71 = load i64, i64* %14, align 8
  %72 = and i64 %71, %70
  store i64 %72, i64* %14, align 8
  br label %90

73:                                               ; preds = %5, %5
  %74 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @ksm_madvise(%struct.vm_area_struct* %74, i64 %75, i64 %76, i32 %77, i64* %14)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %171

82:                                               ; preds = %73
  br label %90

83:                                               ; preds = %5, %5
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @hugepage_madvise(i64* %14, i32 %84)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %171

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %5, %89, %82, %68, %64, %59, %44, %37, %30, %22
  %91 = load i64, i64* %14, align 8
  %92 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %93 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %91, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %98 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %7, align 8
  store %struct.vm_area_struct* %97, %struct.vm_area_struct** %98, align 8
  br label %171

99:                                               ; preds = %90
  %100 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %101 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %100, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %8, align 8
  %104 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %105 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = sub i64 %103, %106
  %108 = load i64, i64* @PAGE_SHIFT, align 8
  %109 = lshr i64 %107, %108
  %110 = add i64 %102, %109
  store i64 %110, i64* %13, align 8
  %111 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %112 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %7, align 8
  %113 = load %struct.vm_area_struct*, %struct.vm_area_struct** %112, align 8
  %114 = load i64, i64* %8, align 8
  %115 = load i64, i64* %9, align 8
  %116 = load i64, i64* %14, align 8
  %117 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %118 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %121 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = load i64, i64* %13, align 8
  %124 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %125 = call i32 @vma_policy(%struct.vm_area_struct* %124)
  %126 = call %struct.vm_area_struct* @vma_merge(%struct.mm_struct* %111, %struct.vm_area_struct* %113, i64 %114, i64 %115, i64 %116, i32 %119, i32 %122, i64 %123, i32 %125)
  %127 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %7, align 8
  store %struct.vm_area_struct* %126, %struct.vm_area_struct** %127, align 8
  %128 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %7, align 8
  %129 = load %struct.vm_area_struct*, %struct.vm_area_struct** %128, align 8
  %130 = icmp ne %struct.vm_area_struct* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %99
  %132 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %7, align 8
  %133 = load %struct.vm_area_struct*, %struct.vm_area_struct** %132, align 8
  store %struct.vm_area_struct* %133, %struct.vm_area_struct** %6, align 8
  br label %167

134:                                              ; preds = %99
  %135 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %136 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %7, align 8
  store %struct.vm_area_struct* %135, %struct.vm_area_struct** %136, align 8
  %137 = load i64, i64* %8, align 8
  %138 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %139 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %137, %140
  br i1 %141, label %142, label %151

142:                                              ; preds = %134
  %143 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %144 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %145 = load i64, i64* %8, align 8
  %146 = call i32 @split_vma(%struct.mm_struct* %143, %struct.vm_area_struct* %144, i64 %145, i32 1)
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  br label %171

150:                                              ; preds = %142
  br label %151

151:                                              ; preds = %150, %134
  %152 = load i64, i64* %9, align 8
  %153 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %154 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %152, %155
  br i1 %156, label %157, label %166

157:                                              ; preds = %151
  %158 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %159 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %160 = load i64, i64* %9, align 8
  %161 = call i32 @split_vma(%struct.mm_struct* %158, %struct.vm_area_struct* %159, i64 %160, i32 0)
  store i32 %161, i32* %12, align 4
  %162 = load i32, i32* %12, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %157
  br label %171

165:                                              ; preds = %157
  br label %166

166:                                              ; preds = %165, %151
  br label %167

167:                                              ; preds = %166, %131
  %168 = load i64, i64* %14, align 8
  %169 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %170 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %169, i32 0, i32 0
  store i64 %168, i64* %170, align 8
  br label %171

171:                                              ; preds = %167, %164, %149, %96, %88, %81, %56
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* @ENOMEM, align 4
  %174 = sub nsw i32 0, %173
  %175 = icmp eq i32 %172, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %171
  %177 = load i32, i32* @EAGAIN, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %12, align 4
  br label %179

179:                                              ; preds = %176, %171
  %180 = load i32, i32* %12, align 4
  %181 = sext i32 %180 to i64
  ret i64 %181
}

declare dso_local i32 @ksm_madvise(%struct.vm_area_struct*, i64, i64, i32, i64*) #1

declare dso_local i32 @hugepage_madvise(i64*, i32) #1

declare dso_local %struct.vm_area_struct* @vma_merge(%struct.mm_struct*, %struct.vm_area_struct*, i64, i64, i64, i32, i32, i64, i32) #1

declare dso_local i32 @vma_policy(%struct.vm_area_struct*) #1

declare dso_local i32 @split_vma(%struct.mm_struct*, %struct.vm_area_struct*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
