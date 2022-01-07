; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_task_mmu.c_show_map_vma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_task_mmu.c_show_map_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.vm_area_struct = type { i32, i64, i64, i32, i64, %struct.file*, %struct.mm_struct* }
%struct.file = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.mm_struct = type { i64, i64, i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_GROWSDOWN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"%08lx-%08lx %c%c%c%c %08llx %02x:%02x %lu %n\00", align 1
@VM_READ = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@VM_MAYSHARE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"[heap]\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"[stack]\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"[vdso]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.vm_area_struct*)* @show_map_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_map_vma(%struct.seq_file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.inode*, align 8
  %14 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 6
  %17 = load %struct.mm_struct*, %struct.mm_struct** %16, align 8
  store %struct.mm_struct* %17, %struct.mm_struct** %5, align 8
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 5
  %20 = load %struct.file*, %struct.file** %19, align 8
  store %struct.file* %20, %struct.file** %6, align 8
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %24 = load %struct.file*, %struct.file** %6, align 8
  %25 = icmp ne %struct.file* %24, null
  br i1 %25, label %26, label %48

26:                                               ; preds = %2
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %27, i32 0, i32 5
  %29 = load %struct.file*, %struct.file** %28, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.inode*, %struct.inode** %33, align 8
  store %struct.inode* %34, %struct.inode** %13, align 8
  %35 = load %struct.inode*, %struct.inode** %13, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %11, align 4
  %40 = load %struct.inode*, %struct.inode** %13, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %8, align 8
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %44 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PAGE_SHIFT, align 8
  %47 = shl i64 %45, %46
  store i64 %47, i64* %9, align 8
  br label %48

48:                                               ; preds = %26, %2
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %50 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %10, align 8
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %53 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @VM_GROWSDOWN, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %48
  %59 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %60 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %63 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @vma_stack_continue(i32 %61, i64 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %58
  %68 = load i64, i64* @PAGE_SIZE, align 8
  %69 = load i64, i64* %10, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %10, align 8
  br label %71

71:                                               ; preds = %67, %58
  br label %72

72:                                               ; preds = %71, %48
  %73 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %76 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @VM_READ, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 114, i32 45
  %84 = trunc i32 %83 to i8
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @VM_WRITE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 119, i32 45
  %91 = trunc i32 %90 to i8
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @VM_EXEC, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i32 120, i32 45
  %98 = trunc i32 %97 to i8
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @VM_MAYSHARE, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 115, i32 112
  %105 = trunc i32 %104 to i8
  %106 = load i64, i64* %9, align 8
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @MAJOR(i32 %107)
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @MINOR(i32 %109)
  %111 = load i64, i64* %8, align 8
  %112 = call i32 @seq_printf(%struct.seq_file* %73, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %74, i64 %77, i8 signext %84, i8 signext %91, i8 signext %98, i8 signext %105, i64 %106, i32 %108, i32 %110, i64 %111, i32* %12)
  %113 = load %struct.file*, %struct.file** %6, align 8
  %114 = icmp ne %struct.file* %113, null
  br i1 %114, label %115, label %123

115:                                              ; preds = %72
  %116 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @pad_len_spaces(%struct.seq_file* %116, i32 %117)
  %119 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %120 = load %struct.file*, %struct.file** %6, align 8
  %121 = getelementptr inbounds %struct.file, %struct.file* %120, i32 0, i32 0
  %122 = call i32 @seq_path(%struct.seq_file* %119, %struct.TYPE_6__* %121, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %180

123:                                              ; preds = %72
  %124 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %125 = call i8* @arch_vma_name(%struct.vm_area_struct* %124)
  store i8* %125, i8** %14, align 8
  %126 = load i8*, i8** %14, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %169, label %128

128:                                              ; preds = %123
  %129 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %130 = icmp ne %struct.mm_struct* %129, null
  br i1 %130, label %131, label %167

131:                                              ; preds = %128
  %132 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %133 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %136 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ule i64 %134, %137
  br i1 %138, label %139, label %148

139:                                              ; preds = %131
  %140 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %141 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %144 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp uge i64 %142, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %139
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %14, align 8
  br label %166

148:                                              ; preds = %139, %131
  %149 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %150 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %153 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = icmp ule i64 %151, %154
  br i1 %155, label %156, label %165

156:                                              ; preds = %148
  %157 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %158 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %161 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = icmp uge i64 %159, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %156
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %14, align 8
  br label %165

165:                                              ; preds = %164, %156, %148
  br label %166

166:                                              ; preds = %165, %147
  br label %168

167:                                              ; preds = %128
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %14, align 8
  br label %168

168:                                              ; preds = %167, %166
  br label %169

169:                                              ; preds = %168, %123
  %170 = load i8*, i8** %14, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %179

172:                                              ; preds = %169
  %173 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %174 = load i32, i32* %12, align 4
  %175 = call i32 @pad_len_spaces(%struct.seq_file* %173, i32 %174)
  %176 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %177 = load i8*, i8** %14, align 8
  %178 = call i32 @seq_puts(%struct.seq_file* %176, i8* %177)
  br label %179

179:                                              ; preds = %172, %169
  br label %180

180:                                              ; preds = %179, %115
  %181 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %182 = call i32 @seq_putc(%struct.seq_file* %181, i8 signext 10)
  ret void
}

declare dso_local i32 @vma_stack_continue(i32, i64) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64, i64, i8 signext, i8 signext, i8 signext, i8 signext, i64, i32, i32, i64, i32*) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @pad_len_spaces(%struct.seq_file*, i32) #1

declare dso_local i32 @seq_path(%struct.seq_file*, %struct.TYPE_6__*, i8*) #1

declare dso_local i8* @arch_vma_name(%struct.vm_area_struct*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
