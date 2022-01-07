; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_do_brk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_do_brk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.mm_struct* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.mm_struct = type { i64, i64, i64, i64 }
%struct.vm_area_struct = type { i64, i64, i64, i64, i32, %struct.mm_struct*, i32 }
%struct.rb_node = type { i32 }

@current = common dso_local global %struct.TYPE_6__* null, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_DATA_DEFAULT_FLAGS = common dso_local global i64 0, align 8
@VM_ACCOUNT = common dso_local global i64 0, align 8
@MAP_FIXED = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@VM_LOCKED = common dso_local global i32 0, align 4
@RLIMIT_MEMLOCK = common dso_local global i64 0, align 8
@CAP_IPC_LOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@sysctl_max_map_count = common dso_local global i64 0, align 8
@vm_area_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @do_brk(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rb_node**, align 8
  %11 = alloca %struct.rb_node*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load %struct.mm_struct*, %struct.mm_struct** %17, align 8
  store %struct.mm_struct* %18, %struct.mm_struct** %6, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @PAGE_SHIFT, align 8
  %21 = lshr i64 %19, %20
  store i64 %21, i64* %12, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @PAGE_ALIGN(i64 %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = load i64, i64* %4, align 8
  store i64 %27, i64* %3, align 8
  br label %242

28:                                               ; preds = %2
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @security_file_mmap(i32* null, i32 0, i32 0, i32 0, i64 %29, i32 1)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %3, align 8
  br label %242

36:                                               ; preds = %28
  %37 = load i64, i64* @VM_DATA_DEFAULT_FLAGS, align 8
  %38 = load i64, i64* @VM_ACCOUNT, align 8
  %39 = or i64 %37, %38
  %40 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %41 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = or i64 %39, %42
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i32, i32* @MAP_FIXED, align 4
  %47 = call i32 @get_unmapped_area(i32* null, i64 %44, i64 %45, i32 0, i32 %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @PAGE_MASK, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %36
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %3, align 8
  br label %242

56:                                               ; preds = %36
  %57 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %58 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @VM_LOCKED, align 4
  %61 = sext i32 %60 to i64
  %62 = and i64 %59, %61
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %96

64:                                               ; preds = %56
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* @PAGE_SHIFT, align 8
  %67 = lshr i64 %65, %66
  store i64 %67, i64* %14, align 8
  %68 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %69 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %14, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %14, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i64, i64* @RLIMIT_MEMLOCK, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %15, align 8
  %82 = load i64, i64* @PAGE_SHIFT, align 8
  %83 = load i64, i64* %15, align 8
  %84 = lshr i64 %83, %82
  store i64 %84, i64* %15, align 8
  %85 = load i64, i64* %14, align 8
  %86 = load i64, i64* %15, align 8
  %87 = icmp ugt i64 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %64
  %89 = load i32, i32* @CAP_IPC_LOCK, align 4
  %90 = call i32 @capable(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = load i64, i64* @EAGAIN, align 8
  %94 = sub i64 0, %93
  store i64 %94, i64* %3, align 8
  br label %242

95:                                               ; preds = %88, %64
  br label %96

96:                                               ; preds = %95, %56
  %97 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %98 = call i32 @verify_mm_writelocked(%struct.mm_struct* %97)
  br label %99

99:                                               ; preds = %122, %96
  %100 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %101 = load i64, i64* %4, align 8
  %102 = call %struct.vm_area_struct* @find_vma_prepare(%struct.mm_struct* %100, i64 %101, %struct.vm_area_struct** %8, %struct.rb_node*** %10, %struct.rb_node** %11)
  store %struct.vm_area_struct* %102, %struct.vm_area_struct** %7, align 8
  %103 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %104 = icmp ne %struct.vm_area_struct* %103, null
  br i1 %104, label %105, label %123

105:                                              ; preds = %99
  %106 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %107 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %4, align 8
  %110 = load i64, i64* %5, align 8
  %111 = add i64 %109, %110
  %112 = icmp ult i64 %108, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %105
  %114 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %115 = load i64, i64* %4, align 8
  %116 = load i64, i64* %5, align 8
  %117 = call i64 @do_munmap(%struct.mm_struct* %114, i64 %115, i64 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = load i64, i64* @ENOMEM, align 8
  %121 = sub i64 0, %120
  store i64 %121, i64* %3, align 8
  br label %242

122:                                              ; preds = %113
  br label %99

123:                                              ; preds = %105, %99
  %124 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %125 = load i64, i64* %5, align 8
  %126 = load i64, i64* @PAGE_SHIFT, align 8
  %127 = lshr i64 %125, %126
  %128 = call i32 @may_expand_vm(%struct.mm_struct* %124, i64 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %123
  %131 = load i64, i64* @ENOMEM, align 8
  %132 = sub i64 0, %131
  store i64 %132, i64* %3, align 8
  br label %242

133:                                              ; preds = %123
  %134 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %135 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @sysctl_max_map_count, align 8
  %138 = icmp sgt i64 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %133
  %140 = load i64, i64* @ENOMEM, align 8
  %141 = sub i64 0, %140
  store i64 %141, i64* %3, align 8
  br label %242

142:                                              ; preds = %133
  %143 = load i64, i64* %5, align 8
  %144 = load i64, i64* @PAGE_SHIFT, align 8
  %145 = lshr i64 %143, %144
  %146 = call i64 @security_vm_enough_memory(i64 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %142
  %149 = load i64, i64* @ENOMEM, align 8
  %150 = sub i64 0, %149
  store i64 %150, i64* %3, align 8
  br label %242

151:                                              ; preds = %142
  %152 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %153 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %154 = load i64, i64* %4, align 8
  %155 = load i64, i64* %4, align 8
  %156 = load i64, i64* %5, align 8
  %157 = add i64 %155, %156
  %158 = load i64, i64* %9, align 8
  %159 = load i64, i64* %12, align 8
  %160 = call %struct.vm_area_struct* @vma_merge(%struct.mm_struct* %152, %struct.vm_area_struct* %153, i64 %154, i64 %157, i64 %158, i32* null, i32* null, i64 %159, i32* null)
  store %struct.vm_area_struct* %160, %struct.vm_area_struct** %7, align 8
  %161 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %162 = icmp ne %struct.vm_area_struct* %161, null
  br i1 %162, label %163, label %164

163:                                              ; preds = %151
  br label %208

164:                                              ; preds = %151
  %165 = load i32, i32* @vm_area_cachep, align 4
  %166 = load i32, i32* @GFP_KERNEL, align 4
  %167 = call %struct.vm_area_struct* @kmem_cache_zalloc(i32 %165, i32 %166)
  store %struct.vm_area_struct* %167, %struct.vm_area_struct** %7, align 8
  %168 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %169 = icmp ne %struct.vm_area_struct* %168, null
  br i1 %169, label %177, label %170

170:                                              ; preds = %164
  %171 = load i64, i64* %5, align 8
  %172 = load i64, i64* @PAGE_SHIFT, align 8
  %173 = lshr i64 %171, %172
  %174 = call i32 @vm_unacct_memory(i64 %173)
  %175 = load i64, i64* @ENOMEM, align 8
  %176 = sub i64 0, %175
  store i64 %176, i64* %3, align 8
  br label %242

177:                                              ; preds = %164
  %178 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %179 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %178, i32 0, i32 6
  %180 = call i32 @INIT_LIST_HEAD(i32* %179)
  %181 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %182 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %183 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %182, i32 0, i32 5
  store %struct.mm_struct* %181, %struct.mm_struct** %183, align 8
  %184 = load i64, i64* %4, align 8
  %185 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %186 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %185, i32 0, i32 0
  store i64 %184, i64* %186, align 8
  %187 = load i64, i64* %4, align 8
  %188 = load i64, i64* %5, align 8
  %189 = add i64 %187, %188
  %190 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %191 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %190, i32 0, i32 1
  store i64 %189, i64* %191, align 8
  %192 = load i64, i64* %12, align 8
  %193 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %194 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %193, i32 0, i32 2
  store i64 %192, i64* %194, align 8
  %195 = load i64, i64* %9, align 8
  %196 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %197 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %196, i32 0, i32 3
  store i64 %195, i64* %197, align 8
  %198 = load i64, i64* %9, align 8
  %199 = call i32 @vm_get_page_prot(i64 %198)
  %200 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %201 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %200, i32 0, i32 4
  store i32 %199, i32* %201, align 8
  %202 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %203 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %204 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %205 = load %struct.rb_node**, %struct.rb_node*** %10, align 8
  %206 = load %struct.rb_node*, %struct.rb_node** %11, align 8
  %207 = call i32 @vma_link(%struct.mm_struct* %202, %struct.vm_area_struct* %203, %struct.vm_area_struct* %204, %struct.rb_node** %205, %struct.rb_node* %206)
  br label %208

208:                                              ; preds = %177, %163
  %209 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %210 = call i32 @perf_event_mmap(%struct.vm_area_struct* %209)
  %211 = load i64, i64* %5, align 8
  %212 = load i64, i64* @PAGE_SHIFT, align 8
  %213 = lshr i64 %211, %212
  %214 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %215 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = add i64 %216, %213
  store i64 %217, i64* %215, align 8
  %218 = load i64, i64* %9, align 8
  %219 = load i32, i32* @VM_LOCKED, align 4
  %220 = sext i32 %219 to i64
  %221 = and i64 %218, %220
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %240

223:                                              ; preds = %208
  %224 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %225 = load i64, i64* %4, align 8
  %226 = load i64, i64* %4, align 8
  %227 = load i64, i64* %5, align 8
  %228 = add i64 %226, %227
  %229 = call i32 @mlock_vma_pages_range(%struct.vm_area_struct* %224, i64 %225, i64 %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %239, label %231

231:                                              ; preds = %223
  %232 = load i64, i64* %5, align 8
  %233 = load i64, i64* @PAGE_SHIFT, align 8
  %234 = lshr i64 %232, %233
  %235 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %236 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %235, i32 0, i32 3
  %237 = load i64, i64* %236, align 8
  %238 = add i64 %237, %234
  store i64 %238, i64* %236, align 8
  br label %239

239:                                              ; preds = %231, %223
  br label %240

240:                                              ; preds = %239, %208
  %241 = load i64, i64* %4, align 8
  store i64 %241, i64* %3, align 8
  br label %242

242:                                              ; preds = %240, %170, %148, %139, %130, %119, %92, %53, %33, %26
  %243 = load i64, i64* %3, align 8
  ret i64 %243
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @security_file_mmap(i32*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @get_unmapped_area(i32*, i64, i64, i32, i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @verify_mm_writelocked(%struct.mm_struct*) #1

declare dso_local %struct.vm_area_struct* @find_vma_prepare(%struct.mm_struct*, i64, %struct.vm_area_struct**, %struct.rb_node***, %struct.rb_node**) #1

declare dso_local i64 @do_munmap(%struct.mm_struct*, i64, i64) #1

declare dso_local i32 @may_expand_vm(%struct.mm_struct*, i64) #1

declare dso_local i64 @security_vm_enough_memory(i64) #1

declare dso_local %struct.vm_area_struct* @vma_merge(%struct.mm_struct*, %struct.vm_area_struct*, i64, i64, i64, i32*, i32*, i64, i32*) #1

declare dso_local %struct.vm_area_struct* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @vm_unacct_memory(i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @vm_get_page_prot(i64) #1

declare dso_local i32 @vma_link(%struct.mm_struct*, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node**, %struct.rb_node*) #1

declare dso_local i32 @perf_event_mmap(%struct.vm_area_struct*) #1

declare dso_local i32 @mlock_vma_pages_range(%struct.vm_area_struct*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
