; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fbmem.c_fb_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fbmem.c_fb_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.fb_ops* }
%struct.TYPE_8__ = type { i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.fb_ops = type { i32 (%struct.fb_info.0*, %struct.vm_area_struct*)* }
%struct.fb_info.0 = type opaque
%struct.vm_area_struct = type { i64, i64, i64, i32, i32 }
%struct.file = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@registered_fb = common dso_local global %struct.fb_info** null, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@VM_IO = common dso_local global i32 0, align 4
@VM_RESERVED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @fb_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fb_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fb_info*, align 8
  %8 = alloca %struct.fb_ops*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @iminor(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.fb_info**, %struct.fb_info*** @registered_fb, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %20, i64 %22
  %24 = load %struct.fb_info*, %struct.fb_info** %23, align 8
  store %struct.fb_info* %24, %struct.fb_info** %7, align 8
  %25 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 3
  %27 = load %struct.fb_ops*, %struct.fb_ops** %26, align 8
  store %struct.fb_ops* %27, %struct.fb_ops** %8, align 8
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %29 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PAGE_SHIFT, align 8
  %32 = lshr i64 -1, %31
  %33 = icmp ugt i64 %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %180

37:                                               ; preds = %2
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %39 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PAGE_SHIFT, align 8
  %42 = shl i64 %40, %41
  store i64 %42, i64* %9, align 8
  %43 = load %struct.fb_ops*, %struct.fb_ops** %8, align 8
  %44 = icmp ne %struct.fb_ops* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %180

48:                                               ; preds = %37
  %49 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %50 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %49, i32 0, i32 0
  %51 = call i32 @mutex_lock(i32* %50)
  %52 = load %struct.fb_ops*, %struct.fb_ops** %8, align 8
  %53 = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %52, i32 0, i32 0
  %54 = load i32 (%struct.fb_info.0*, %struct.vm_area_struct*)*, i32 (%struct.fb_info.0*, %struct.vm_area_struct*)** %53, align 8
  %55 = icmp ne i32 (%struct.fb_info.0*, %struct.vm_area_struct*)* %54, null
  br i1 %55, label %56, label %68

56:                                               ; preds = %48
  %57 = load %struct.fb_ops*, %struct.fb_ops** %8, align 8
  %58 = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %57, i32 0, i32 0
  %59 = load i32 (%struct.fb_info.0*, %struct.vm_area_struct*)*, i32 (%struct.fb_info.0*, %struct.vm_area_struct*)** %58, align 8
  %60 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %61 = bitcast %struct.fb_info* %60 to %struct.fb_info.0*
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %63 = call i32 %59(%struct.fb_info.0* %61, %struct.vm_area_struct* %62)
  store i32 %63, i32* %12, align 4
  %64 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %65 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %3, align 4
  br label %180

68:                                               ; preds = %48
  %69 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %70 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %10, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* @PAGE_MASK, align 8
  %75 = xor i64 %74, -1
  %76 = and i64 %73, %75
  %77 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %78 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %76, %80
  %82 = call i64 @PAGE_ALIGN(i64 %81)
  store i64 %82, i64* %11, align 8
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* %11, align 8
  %85 = icmp uge i64 %83, %84
  br i1 %85, label %86, label %116

86:                                               ; preds = %68
  %87 = load i64, i64* %11, align 8
  %88 = load i64, i64* %9, align 8
  %89 = sub i64 %88, %87
  store i64 %89, i64* %9, align 8
  %90 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %91 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %86
  %96 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %97 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %96, i32 0, i32 0
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %180

101:                                              ; preds = %86
  %102 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %103 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %10, align 8
  %106 = load i64, i64* %10, align 8
  %107 = load i64, i64* @PAGE_MASK, align 8
  %108 = xor i64 %107, -1
  %109 = and i64 %106, %108
  %110 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %111 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = add i64 %109, %113
  %115 = call i64 @PAGE_ALIGN(i64 %114)
  store i64 %115, i64* %11, align 8
  br label %116

116:                                              ; preds = %101, %68
  %117 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %118 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %117, i32 0, i32 0
  %119 = call i32 @mutex_unlock(i32* %118)
  %120 = load i64, i64* @PAGE_MASK, align 8
  %121 = load i64, i64* %10, align 8
  %122 = and i64 %121, %120
  store i64 %122, i64* %10, align 8
  %123 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %124 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %127 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = sub i64 %125, %128
  %130 = load i64, i64* %9, align 8
  %131 = add i64 %129, %130
  %132 = load i64, i64* %11, align 8
  %133 = icmp ugt i64 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %116
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %3, align 4
  br label %180

137:                                              ; preds = %116
  %138 = load i64, i64* %10, align 8
  %139 = load i64, i64* %9, align 8
  %140 = add i64 %139, %138
  store i64 %140, i64* %9, align 8
  %141 = load i64, i64* %9, align 8
  %142 = load i64, i64* @PAGE_SHIFT, align 8
  %143 = lshr i64 %141, %142
  %144 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %145 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %144, i32 0, i32 0
  store i64 %143, i64* %145, align 8
  %146 = load i32, i32* @VM_IO, align 4
  %147 = load i32, i32* @VM_RESERVED, align 4
  %148 = or i32 %146, %147
  %149 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %150 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 8
  %153 = load %struct.file*, %struct.file** %4, align 8
  %154 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %155 = load i64, i64* %9, align 8
  %156 = call i32 @fb_pgprotect(%struct.file* %153, %struct.vm_area_struct* %154, i64 %155)
  %157 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %158 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %159 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* %9, align 8
  %162 = load i64, i64* @PAGE_SHIFT, align 8
  %163 = lshr i64 %161, %162
  %164 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %165 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %168 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = sub i64 %166, %169
  %171 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %172 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 4
  %174 = call i64 @io_remap_pfn_range(%struct.vm_area_struct* %157, i64 %160, i64 %163, i64 %170, i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %137
  %177 = load i32, i32* @EAGAIN, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %3, align 4
  br label %180

179:                                              ; preds = %137
  store i32 0, i32* %3, align 4
  br label %180

180:                                              ; preds = %179, %176, %134, %95, %56, %45, %34
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i32 @iminor(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @fb_pgprotect(%struct.file*, %struct.vm_area_struct*, i64) #1

declare dso_local i64 @io_remap_pfn_range(%struct.vm_area_struct*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
