; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_sufile.c_nilfs_sufile_mod_counter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_sufile.c_nilfs_sufile_mod_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.nilfs_sufile_header = type { i32, i32 }

@KM_USER0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer_head*, i32, i32)* @nilfs_sufile_mod_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_sufile_mod_counter(%struct.buffer_head* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nilfs_sufile_header*, align 8
  %8 = alloca i8*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %10 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @KM_USER0, align 4
  %13 = call i8* @kmap_atomic(i32 %11, i32 %12)
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %16 = call i32 @bh_offset(%struct.buffer_head* %15)
  %17 = sext i32 %16 to i64
  %18 = getelementptr i8, i8* %14, i64 %17
  %19 = bitcast i8* %18 to %struct.nilfs_sufile_header*
  store %struct.nilfs_sufile_header* %19, %struct.nilfs_sufile_header** %7, align 8
  %20 = load %struct.nilfs_sufile_header*, %struct.nilfs_sufile_header** %7, align 8
  %21 = getelementptr inbounds %struct.nilfs_sufile_header, %struct.nilfs_sufile_header* %20, i32 0, i32 1
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @le64_add_cpu(i32* %21, i32 %22)
  %24 = load %struct.nilfs_sufile_header*, %struct.nilfs_sufile_header** %7, align 8
  %25 = getelementptr inbounds %struct.nilfs_sufile_header, %struct.nilfs_sufile_header* %24, i32 0, i32 0
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @le64_add_cpu(i32* %25, i32 %26)
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* @KM_USER0, align 4
  %30 = call i32 @kunmap_atomic(i8* %28, i32 %29)
  %31 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %32 = call i32 @nilfs_mdt_mark_buffer_dirty(%struct.buffer_head* %31)
  ret void
}

declare dso_local i8* @kmap_atomic(i32, i32) #1

declare dso_local i32 @bh_offset(%struct.buffer_head*) #1

declare dso_local i32 @le64_add_cpu(i32*, i32) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @nilfs_mdt_mark_buffer_dirty(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
