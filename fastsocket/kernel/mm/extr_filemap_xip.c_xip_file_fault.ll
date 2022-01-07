; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap_xip.c_xip_file_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap_xip.c_xip_file_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, %struct.file* }
%struct.file = type { %struct.address_space* }
%struct.address_space = type { %struct.TYPE_4__*, %struct.inode* }
%struct.TYPE_4__ = type { i32 (%struct.address_space*, i32, i32, i8**, i64*)* }
%struct.inode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.vm_fault = type { i32, i64 }
%struct.page = type { i32 }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@VM_FAULT_OOM = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@VM_MAYWRITE = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@VM_MAYSHARE = common dso_local global i32 0, align 4
@MS_RDONLY = common dso_local global i32 0, align 4
@xip_sparse_mutex = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@VM_FAULT_NOPAGE = common dso_local global i32 0, align 4
@xip_sparse_seq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.vm_fault*)* @xip_file_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xip_file_fault(%struct.vm_area_struct* %0, %struct.vm_fault* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.vm_fault*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store %struct.vm_fault* %1, %struct.vm_fault** %5, align 8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 1
  %19 = load %struct.file*, %struct.file** %18, align 8
  store %struct.file* %19, %struct.file** %6, align 8
  %20 = load %struct.file*, %struct.file** %6, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 0
  %22 = load %struct.address_space*, %struct.address_space** %21, align 8
  store %struct.address_space* %22, %struct.address_space** %7, align 8
  %23 = load %struct.address_space*, %struct.address_space** %7, align 8
  %24 = getelementptr inbounds %struct.address_space, %struct.address_space* %23, i32 0, i32 1
  %25 = load %struct.inode*, %struct.inode** %24, align 8
  store %struct.inode* %25, %struct.inode** %8, align 8
  br label %26

26:                                               ; preds = %161, %2
  %27 = load %struct.inode*, %struct.inode** %8, align 8
  %28 = call i32 @i_size_read(%struct.inode* %27)
  %29 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %30 = add nsw i32 %28, %29
  %31 = sub nsw i32 %30, 1
  %32 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %33 = ashr i32 %31, %32
  store i32 %33, i32* %9, align 4
  %34 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %35 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %40, i32* %3, align 4
  br label %193

41:                                               ; preds = %26
  %42 = load %struct.address_space*, %struct.address_space** %7, align 8
  %43 = getelementptr inbounds %struct.address_space, %struct.address_space* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32 (%struct.address_space*, i32, i32, i8**, i64*)*, i32 (%struct.address_space*, i32, i32, i8**, i64*)** %45, align 8
  %47 = load %struct.address_space*, %struct.address_space** %7, align 8
  %48 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %49 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 %46(%struct.address_space* %47, i32 %50, i32 0, i8** %10, i64* %11)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i64 @likely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %41
  br label %118

59:                                               ; preds = %41
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @ENODATA, align 4
  %62 = sub nsw i32 0, %61
  %63 = icmp ne i32 %60, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %65, i32* %3, align 4
  br label %193

66:                                               ; preds = %59
  %67 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %68 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @VM_WRITE, align 4
  %71 = load i32, i32* @VM_MAYWRITE, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %69, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %141

75:                                               ; preds = %66
  %76 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %77 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @VM_SHARED, align 4
  %80 = load i32, i32* @VM_MAYSHARE, align 4
  %81 = or i32 %79, %80
  %82 = and i32 %78, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %141

84:                                               ; preds = %75
  %85 = load %struct.address_space*, %struct.address_space** %7, align 8
  %86 = getelementptr inbounds %struct.address_space, %struct.address_space* %85, i32 0, i32 1
  %87 = load %struct.inode*, %struct.inode** %86, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 0
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @MS_RDONLY, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %141, label %95

95:                                               ; preds = %84
  %96 = call i32 @mutex_lock(i32* @xip_sparse_mutex)
  %97 = load %struct.address_space*, %struct.address_space** %7, align 8
  %98 = getelementptr inbounds %struct.address_space, %struct.address_space* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32 (%struct.address_space*, i32, i32, i8**, i64*)*, i32 (%struct.address_space*, i32, i32, i8**, i64*)** %100, align 8
  %102 = load %struct.address_space*, %struct.address_space** %7, align 8
  %103 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %104 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 %101(%struct.address_space* %102, i32 %105, i32 1, i8** %10, i64* %11)
  store i32 %106, i32* %13, align 4
  %107 = call i32 @mutex_unlock(i32* @xip_sparse_mutex)
  %108 = load i32, i32* %13, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %95
  %111 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %111, i32* %3, align 4
  br label %193

112:                                              ; preds = %95
  %113 = load %struct.address_space*, %struct.address_space** %7, align 8
  %114 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %115 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @__xip_unmap(%struct.address_space* %113, i32 %116)
  br label %118

118:                                              ; preds = %112, %58
  %119 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %120 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %121 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %11, align 8
  %124 = call i32 @vm_insert_mixed(%struct.vm_area_struct* %119, i64 %122, i64 %123)
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* @ENOMEM, align 4
  %127 = sub nsw i32 0, %126
  %128 = icmp eq i32 %125, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %118
  %130 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %130, i32* %3, align 4
  br label %193

131:                                              ; preds = %118
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* @EBUSY, align 4
  %134 = sub nsw i32 0, %133
  %135 = icmp ne i32 %132, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load i32, i32* %14, align 4
  %138 = call i32 @BUG_ON(i32 %137)
  br label %139

139:                                              ; preds = %136, %131
  %140 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  store i32 %140, i32* %3, align 4
  br label %193

141:                                              ; preds = %84, %75, %66
  %142 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %142, i32* %16, align 4
  %143 = call i32 @mutex_lock(i32* @xip_sparse_mutex)
  %144 = call i32 @write_seqcount_begin(i32* @xip_sparse_seq)
  %145 = load %struct.address_space*, %struct.address_space** %7, align 8
  %146 = getelementptr inbounds %struct.address_space, %struct.address_space* %145, i32 0, i32 0
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32 (%struct.address_space*, i32, i32, i8**, i64*)*, i32 (%struct.address_space*, i32, i32, i8**, i64*)** %148, align 8
  %150 = load %struct.address_space*, %struct.address_space** %7, align 8
  %151 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %152 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 %149(%struct.address_space* %150, i32 %153, i32 0, i8** %10, i64* %11)
  store i32 %154, i32* %13, align 4
  %155 = load i32, i32* %13, align 4
  %156 = icmp ne i32 %155, 0
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i32
  %159 = call i64 @unlikely(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %141
  %162 = call i32 @write_seqcount_end(i32* @xip_sparse_seq)
  %163 = call i32 @mutex_unlock(i32* @xip_sparse_mutex)
  br label %26

164:                                              ; preds = %141
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* @ENODATA, align 4
  %167 = sub nsw i32 0, %166
  %168 = icmp ne i32 %165, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  br label %189

170:                                              ; preds = %164
  %171 = call %struct.page* (...) @xip_sparse_page()
  store %struct.page* %171, %struct.page** %12, align 8
  %172 = load %struct.page*, %struct.page** %12, align 8
  %173 = icmp ne %struct.page* %172, null
  br i1 %173, label %175, label %174

174:                                              ; preds = %170
  br label %189

175:                                              ; preds = %170
  %176 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %177 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %178 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.page*, %struct.page** %12, align 8
  %181 = call i32 @vm_insert_page(%struct.vm_area_struct* %176, i64 %179, %struct.page* %180)
  store i32 %181, i32* %15, align 4
  %182 = load i32, i32* %15, align 4
  %183 = load i32, i32* @ENOMEM, align 4
  %184 = sub nsw i32 0, %183
  %185 = icmp eq i32 %182, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %175
  br label %189

187:                                              ; preds = %175
  %188 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  store i32 %188, i32* %16, align 4
  br label %189

189:                                              ; preds = %187, %186, %174, %169
  %190 = call i32 @write_seqcount_end(i32* @xip_sparse_seq)
  %191 = call i32 @mutex_unlock(i32* @xip_sparse_mutex)
  %192 = load i32, i32* %16, align 4
  store i32 %192, i32* %3, align 4
  br label %193

193:                                              ; preds = %189, %139, %129, %110, %64, %39
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @__xip_unmap(%struct.address_space*, i32) #1

declare dso_local i32 @vm_insert_mixed(%struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @write_seqcount_begin(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @write_seqcount_end(i32*) #1

declare dso_local %struct.page* @xip_sparse_page(...) #1

declare dso_local i32 @vm_insert_page(%struct.vm_area_struct*, i64, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
