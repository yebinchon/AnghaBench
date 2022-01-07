; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mremap.c_do_mremap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mremap.c_do_mremap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32, i32 }
%struct.vm_area_struct = type { i64, i64, i32, i64, i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i64 0, align 8
@MREMAP_FIXED = common dso_local global i64 0, align 8
@MREMAP_MAYMOVE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@VM_LOCKED = common dso_local global i32 0, align 4
@VM_MAYSHARE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i64 0, align 8
@VM_EXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @do_mremap(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.mm_struct*, align 8
  %12 = alloca %struct.vm_area_struct*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.mm_struct*, %struct.mm_struct** %18, align 8
  store %struct.mm_struct* %19, %struct.mm_struct** %11, align 8
  %20 = load i64, i64* @EINVAL, align 8
  %21 = sub i64 0, %20
  store i64 %21, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @MREMAP_FIXED, align 8
  %24 = load i64, i64* @MREMAP_MAYMOVE, align 8
  %25 = or i64 %23, %24
  %26 = xor i64 %25, -1
  %27 = and i64 %22, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  br label %232

30:                                               ; preds = %5
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @PAGE_MASK, align 8
  %33 = xor i64 %32, -1
  %34 = and i64 %31, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %232

37:                                               ; preds = %30
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @PAGE_ALIGN(i64 %38)
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i64 @PAGE_ALIGN(i64 %40)
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  br label %232

45:                                               ; preds = %37
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* @MREMAP_FIXED, align 8
  %48 = and i64 %46, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* @MREMAP_MAYMOVE, align 8
  %53 = and i64 %51, %52
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i64 @mremap_to(i64 %56, i64 %57, i64 %58, i64 %59)
  store i64 %60, i64* %13, align 8
  br label %61

61:                                               ; preds = %55, %50
  br label %232

62:                                               ; preds = %45
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = icmp uge i64 %63, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %62
  %67 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* %8, align 8
  %70 = add i64 %68, %69
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* %8, align 8
  %73 = sub i64 %71, %72
  %74 = call i64 @do_munmap(%struct.mm_struct* %67, i64 %70, i64 %73)
  store i64 %74, i64* %13, align 8
  %75 = load i64, i64* %13, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %66
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* %8, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %232

82:                                               ; preds = %77, %66
  %83 = load i64, i64* %6, align 8
  store i64 %83, i64* %13, align 8
  br label %232

84:                                               ; preds = %62
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* %8, align 8
  %88 = call %struct.vm_area_struct* @vma_to_resize(i64 %85, i64 %86, i64 %87, i64* %14)
  store %struct.vm_area_struct* %88, %struct.vm_area_struct** %12, align 8
  %89 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %90 = call i64 @IS_ERR(%struct.vm_area_struct* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %94 = call i64 @PTR_ERR(%struct.vm_area_struct* %93)
  store i64 %94, i64* %13, align 8
  br label %232

95:                                               ; preds = %84
  %96 = load i64, i64* %7, align 8
  %97 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %98 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %6, align 8
  %101 = sub i64 %99, %100
  %102 = icmp eq i64 %96, %101
  br i1 %102, label %103, label %170

103:                                              ; preds = %95
  %104 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %105 = load i64, i64* %8, align 8
  %106 = load i64, i64* %7, align 8
  %107 = sub i64 %105, %106
  %108 = call i64 @vma_expandable(%struct.vm_area_struct* %104, i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %169

110:                                              ; preds = %103
  %111 = load i64, i64* %8, align 8
  %112 = load i64, i64* %7, align 8
  %113 = sub i64 %111, %112
  %114 = load i64, i64* @PAGE_SHIFT, align 8
  %115 = lshr i64 %113, %114
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %15, align 4
  %117 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %118 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %119 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %6, align 8
  %122 = load i64, i64* %8, align 8
  %123 = add i64 %121, %122
  %124 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %125 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = call i64 @vma_adjust(%struct.vm_area_struct* %117, i64 %120, i64 %123, i64 %126, i32* null)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %110
  %130 = load i64, i64* @ENOMEM, align 8
  %131 = sub i64 0, %130
  store i64 %131, i64* %13, align 8
  br label %232

132:                                              ; preds = %110
  %133 = load i32, i32* %15, align 4
  %134 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %135 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, %133
  store i32 %137, i32* %135, align 4
  %138 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %139 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %140 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %143 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %15, align 4
  %146 = call i32 @vm_stat_account(%struct.mm_struct* %138, i32 %141, i32 %144, i32 %145)
  %147 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %148 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @VM_LOCKED, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %167

153:                                              ; preds = %132
  %154 = load i32, i32* %15, align 4
  %155 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %156 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, %154
  store i32 %158, i32* %156, align 4
  %159 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %160 = load i64, i64* %6, align 8
  %161 = load i64, i64* %7, align 8
  %162 = add i64 %160, %161
  %163 = load i64, i64* %6, align 8
  %164 = load i64, i64* %8, align 8
  %165 = add i64 %163, %164
  %166 = call i32 @mlock_vma_pages_range(%struct.vm_area_struct* %159, i64 %162, i64 %165)
  br label %167

167:                                              ; preds = %153, %132
  %168 = load i64, i64* %6, align 8
  store i64 %168, i64* %13, align 8
  br label %232

169:                                              ; preds = %103
  br label %170

170:                                              ; preds = %169, %95
  %171 = load i64, i64* @ENOMEM, align 8
  %172 = sub i64 0, %171
  store i64 %172, i64* %13, align 8
  %173 = load i64, i64* %9, align 8
  %174 = load i64, i64* @MREMAP_MAYMOVE, align 8
  %175 = and i64 %173, %174
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %231

177:                                              ; preds = %170
  store i64 0, i64* %16, align 8
  %178 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %179 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @VM_MAYSHARE, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %177
  %185 = load i64, i64* @MAP_SHARED, align 8
  %186 = load i64, i64* %16, align 8
  %187 = or i64 %186, %185
  store i64 %187, i64* %16, align 8
  br label %188

188:                                              ; preds = %184, %177
  %189 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %190 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = load i64, i64* %8, align 8
  %193 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %194 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %193, i32 0, i32 3
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* %6, align 8
  %197 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %198 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = sub i64 %196, %199
  %201 = load i64, i64* @PAGE_SHIFT, align 8
  %202 = lshr i64 %200, %201
  %203 = add i64 %195, %202
  %204 = load i64, i64* %16, align 8
  %205 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %206 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @VM_EXEC, align 4
  %209 = and i32 %207, %208
  %210 = call i64 @get_unmapped_area_prot(i32 %191, i32 0, i64 %192, i64 %203, i64 %204, i32 %209)
  store i64 %210, i64* %10, align 8
  %211 = load i64, i64* %10, align 8
  %212 = load i64, i64* @PAGE_MASK, align 8
  %213 = xor i64 %212, -1
  %214 = and i64 %211, %213
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %188
  %217 = load i64, i64* %10, align 8
  store i64 %217, i64* %13, align 8
  br label %232

218:                                              ; preds = %188
  %219 = load i64, i64* %10, align 8
  %220 = call i64 @security_file_mmap(i32* null, i32 0, i32 0, i32 0, i64 %219, i32 1)
  store i64 %220, i64* %13, align 8
  %221 = load i64, i64* %13, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %218
  br label %232

224:                                              ; preds = %218
  %225 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %226 = load i64, i64* %6, align 8
  %227 = load i64, i64* %7, align 8
  %228 = load i64, i64* %8, align 8
  %229 = load i64, i64* %10, align 8
  %230 = call i64 @move_vma(%struct.vm_area_struct* %225, i64 %226, i64 %227, i64 %228, i64 %229)
  store i64 %230, i64* %13, align 8
  br label %231

231:                                              ; preds = %224, %170
  br label %232

232:                                              ; preds = %231, %223, %216, %167, %129, %92, %82, %81, %61, %44, %36, %29
  %233 = load i64, i64* %13, align 8
  %234 = load i64, i64* @PAGE_MASK, align 8
  %235 = xor i64 %234, -1
  %236 = and i64 %233, %235
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %232
  %239 = load i64, i64* %14, align 8
  %240 = call i32 @vm_unacct_memory(i64 %239)
  br label %241

241:                                              ; preds = %238, %232
  %242 = load i64, i64* %13, align 8
  ret i64 %242
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i64 @mremap_to(i64, i64, i64, i64) #1

declare dso_local i64 @do_munmap(%struct.mm_struct*, i64, i64) #1

declare dso_local %struct.vm_area_struct* @vma_to_resize(i64, i64, i64, i64*) #1

declare dso_local i64 @IS_ERR(%struct.vm_area_struct*) #1

declare dso_local i64 @PTR_ERR(%struct.vm_area_struct*) #1

declare dso_local i64 @vma_expandable(%struct.vm_area_struct*, i64) #1

declare dso_local i64 @vma_adjust(%struct.vm_area_struct*, i64, i64, i64, i32*) #1

declare dso_local i32 @vm_stat_account(%struct.mm_struct*, i32, i32, i32) #1

declare dso_local i32 @mlock_vma_pages_range(%struct.vm_area_struct*, i64, i64) #1

declare dso_local i64 @get_unmapped_area_prot(i32, i32, i64, i64, i64, i32) #1

declare dso_local i64 @security_file_mmap(i32*, i32, i32, i32, i64, i32) #1

declare dso_local i64 @move_vma(%struct.vm_area_struct*, i64, i64, i64, i64) #1

declare dso_local i32 @vm_unacct_memory(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
