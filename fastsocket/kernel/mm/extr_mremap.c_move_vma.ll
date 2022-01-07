; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mremap.c_move_vma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mremap.c_move_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i64, i64, i64, %struct.TYPE_2__*, i32, %struct.mm_struct* }
%struct.TYPE_2__ = type { i64 }
%struct.mm_struct = type { i32, i64, i64, i64 }

@sysctl_max_map_count = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@MADV_UNMERGEABLE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_ACCOUNT = common dso_local global i64 0, align 8
@VM_LOCKED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vm_area_struct*, i64, i64, i64, i64)* @move_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @move_vma(%struct.vm_area_struct* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mm_struct*, align 8
  %13 = alloca %struct.vm_area_struct*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 6
  %23 = load %struct.mm_struct*, %struct.mm_struct** %22, align 8
  store %struct.mm_struct* %23, %struct.mm_struct** %12, align 8
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %14, align 8
  store i64 0, i64* %17, align 8
  store i32 0, i32* %19, align 4
  %27 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %28 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @sysctl_max_map_count, align 4
  %31 = sub nsw i32 %30, 3
  %32 = icmp sge i32 %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %5
  %34 = load i64, i64* @ENOMEM, align 8
  %35 = sub i64 0, %34
  store i64 %35, i64* %6, align 8
  br label %211

36:                                               ; preds = %5
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = add i64 %39, %40
  %42 = load i32, i32* @MADV_UNMERGEABLE, align 4
  %43 = call i32 @ksm_madvise(%struct.vm_area_struct* %37, i64 %38, i64 %41, i32 %42, i64* %14)
  store i32 %43, i32* %20, align 4
  %44 = load i32, i32* %20, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load i32, i32* %20, align 4
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %6, align 8
  br label %211

49:                                               ; preds = %36
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %51 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %55 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = sub i64 %53, %56
  %58 = load i64, i64* @PAGE_SHIFT, align 8
  %59 = lshr i64 %57, %58
  %60 = add i64 %52, %59
  store i64 %60, i64* %15, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* %15, align 8
  %64 = call %struct.vm_area_struct* @copy_vma(%struct.vm_area_struct** %7, i64 %61, i64 %62, i64 %63)
  store %struct.vm_area_struct* %64, %struct.vm_area_struct** %13, align 8
  %65 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %66 = icmp ne %struct.vm_area_struct* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %49
  %68 = load i64, i64* @ENOMEM, align 8
  %69 = sub i64 0, %68
  store i64 %69, i64* %6, align 8
  br label %211

70:                                               ; preds = %49
  %71 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* %9, align 8
  %76 = call i64 @move_page_tables(%struct.vm_area_struct* %71, i64 %72, %struct.vm_area_struct* %73, i64 %74, i64 %75)
  store i64 %76, i64* %16, align 8
  %77 = load i64, i64* %16, align 8
  %78 = load i64, i64* %9, align 8
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %70
  %81 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* %16, align 8
  %86 = call i64 @move_page_tables(%struct.vm_area_struct* %81, i64 %82, %struct.vm_area_struct* %83, i64 %84, i64 %85)
  %87 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  store %struct.vm_area_struct* %87, %struct.vm_area_struct** %7, align 8
  %88 = load i64, i64* %10, align 8
  store i64 %88, i64* %9, align 8
  %89 = load i64, i64* %11, align 8
  store i64 %89, i64* %8, align 8
  %90 = load i64, i64* @ENOMEM, align 8
  %91 = sub i64 0, %90
  store i64 %91, i64* %11, align 8
  br label %92

92:                                               ; preds = %80, %70
  %93 = load i64, i64* %14, align 8
  %94 = load i64, i64* @VM_ACCOUNT, align 8
  %95 = and i64 %93, %94
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %128

97:                                               ; preds = %92
  %98 = load i64, i64* @VM_ACCOUNT, align 8
  %99 = xor i64 %98, -1
  %100 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %101 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = and i64 %102, %99
  store i64 %103, i64* %101, align 8
  %104 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %105 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %108 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = sub i64 %106, %109
  %111 = load i64, i64* %9, align 8
  %112 = sub i64 %110, %111
  store i64 %112, i64* %17, align 8
  %113 = load i64, i64* %8, align 8
  %114 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %115 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp ugt i64 %113, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %97
  %119 = load i64, i64* %8, align 8
  %120 = load i64, i64* %9, align 8
  %121 = add i64 %119, %120
  %122 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %123 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = icmp ult i64 %121, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %118
  store i32 1, i32* %19, align 4
  br label %127

127:                                              ; preds = %126, %118, %97
  br label %128

128:                                              ; preds = %127, %92
  %129 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %130 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %18, align 8
  %132 = load i64, i64* %10, align 8
  %133 = load i64, i64* @PAGE_SHIFT, align 8
  %134 = lshr i64 %132, %133
  %135 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %136 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = add i64 %137, %134
  store i64 %138, i64* %136, align 8
  %139 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %140 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %141 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %144 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 8
  %146 = load i64, i64* %10, align 8
  %147 = load i64, i64* @PAGE_SHIFT, align 8
  %148 = lshr i64 %146, %147
  %149 = call i32 @vm_stat_account(%struct.mm_struct* %139, i64 %142, i32 %145, i64 %148)
  %150 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %151 = load i64, i64* %8, align 8
  %152 = load i64, i64* %9, align 8
  %153 = call i64 @do_munmap(%struct.mm_struct* %150, i64 %151, i64 %152)
  %154 = icmp slt i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %128
  %156 = load i64, i64* %17, align 8
  %157 = load i64, i64* @PAGE_SHIFT, align 8
  %158 = lshr i64 %156, %157
  %159 = call i32 @vm_unacct_memory(i64 %158)
  store i64 0, i64* %17, align 8
  br label %160

160:                                              ; preds = %155, %128
  %161 = load i64, i64* %18, align 8
  %162 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %163 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %162, i32 0, i32 1
  store i64 %161, i64* %163, align 8
  %164 = load i64, i64* %17, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %183

166:                                              ; preds = %160
  %167 = load i64, i64* @VM_ACCOUNT, align 8
  %168 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %169 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = or i64 %170, %167
  store i64 %171, i64* %169, align 8
  %172 = load i32, i32* %19, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %166
  %175 = load i64, i64* @VM_ACCOUNT, align 8
  %176 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %177 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %176, i32 0, i32 4
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = or i64 %180, %175
  store i64 %181, i64* %179, align 8
  br label %182

182:                                              ; preds = %174, %166
  br label %183

183:                                              ; preds = %182, %160
  %184 = load i64, i64* %14, align 8
  %185 = load i64, i64* @VM_LOCKED, align 8
  %186 = and i64 %184, %185
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %209

188:                                              ; preds = %183
  %189 = load i64, i64* %10, align 8
  %190 = load i64, i64* @PAGE_SHIFT, align 8
  %191 = lshr i64 %189, %190
  %192 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %193 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = add i64 %194, %191
  store i64 %195, i64* %193, align 8
  %196 = load i64, i64* %10, align 8
  %197 = load i64, i64* %9, align 8
  %198 = icmp ugt i64 %196, %197
  br i1 %198, label %199, label %208

199:                                              ; preds = %188
  %200 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %201 = load i64, i64* %11, align 8
  %202 = load i64, i64* %9, align 8
  %203 = add i64 %201, %202
  %204 = load i64, i64* %11, align 8
  %205 = load i64, i64* %10, align 8
  %206 = add i64 %204, %205
  %207 = call i32 @mlock_vma_pages_range(%struct.vm_area_struct* %200, i64 %203, i64 %206)
  br label %208

208:                                              ; preds = %199, %188
  br label %209

209:                                              ; preds = %208, %183
  %210 = load i64, i64* %11, align 8
  store i64 %210, i64* %6, align 8
  br label %211

211:                                              ; preds = %209, %67, %46, %33
  %212 = load i64, i64* %6, align 8
  ret i64 %212
}

declare dso_local i32 @ksm_madvise(%struct.vm_area_struct*, i64, i64, i32, i64*) #1

declare dso_local %struct.vm_area_struct* @copy_vma(%struct.vm_area_struct**, i64, i64, i64) #1

declare dso_local i64 @move_page_tables(%struct.vm_area_struct*, i64, %struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @vm_stat_account(%struct.mm_struct*, i64, i32, i64) #1

declare dso_local i64 @do_munmap(%struct.mm_struct*, i64, i64) #1

declare dso_local i32 @vm_unacct_memory(i64) #1

declare dso_local i32 @mlock_vma_pages_range(%struct.vm_area_struct*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
