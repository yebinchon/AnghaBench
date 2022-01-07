; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_dx_entry_list_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_dx_entry_list_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_dx_entry_list = type { i32, %struct.ocfs2_dx_entry* }
%struct.ocfs2_dx_entry = type { i32, i8*, i8* }
%struct.ocfs2_dx_hinfo = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_dx_entry_list*, %struct.ocfs2_dx_hinfo*, i32)* @ocfs2_dx_entry_list_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_dx_entry_list_insert(%struct.ocfs2_dx_entry_list* %0, %struct.ocfs2_dx_hinfo* %1, i32 %2) #0 {
  %4 = alloca %struct.ocfs2_dx_entry_list*, align 8
  %5 = alloca %struct.ocfs2_dx_hinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_dx_entry*, align 8
  store %struct.ocfs2_dx_entry_list* %0, %struct.ocfs2_dx_entry_list** %4, align 8
  store %struct.ocfs2_dx_hinfo* %1, %struct.ocfs2_dx_hinfo** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ocfs2_dx_entry_list*, %struct.ocfs2_dx_entry_list** %4, align 8
  %10 = getelementptr inbounds %struct.ocfs2_dx_entry_list, %struct.ocfs2_dx_entry_list* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @le16_to_cpu(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.ocfs2_dx_entry_list*, %struct.ocfs2_dx_entry_list** %4, align 8
  %14 = getelementptr inbounds %struct.ocfs2_dx_entry_list, %struct.ocfs2_dx_entry_list* %13, i32 0, i32 1
  %15 = load %struct.ocfs2_dx_entry*, %struct.ocfs2_dx_entry** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ocfs2_dx_entry, %struct.ocfs2_dx_entry* %15, i64 %17
  store %struct.ocfs2_dx_entry* %18, %struct.ocfs2_dx_entry** %8, align 8
  %19 = load %struct.ocfs2_dx_entry*, %struct.ocfs2_dx_entry** %8, align 8
  %20 = call i32 @memset(%struct.ocfs2_dx_entry* %19, i32 0, i32 24)
  %21 = load %struct.ocfs2_dx_hinfo*, %struct.ocfs2_dx_hinfo** %5, align 8
  %22 = getelementptr inbounds %struct.ocfs2_dx_hinfo, %struct.ocfs2_dx_hinfo* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @cpu_to_le32(i32 %23)
  %25 = load %struct.ocfs2_dx_entry*, %struct.ocfs2_dx_entry** %8, align 8
  %26 = getelementptr inbounds %struct.ocfs2_dx_entry, %struct.ocfs2_dx_entry* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load %struct.ocfs2_dx_hinfo*, %struct.ocfs2_dx_hinfo** %5, align 8
  %28 = getelementptr inbounds %struct.ocfs2_dx_hinfo, %struct.ocfs2_dx_hinfo* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @cpu_to_le32(i32 %29)
  %31 = load %struct.ocfs2_dx_entry*, %struct.ocfs2_dx_entry** %8, align 8
  %32 = getelementptr inbounds %struct.ocfs2_dx_entry, %struct.ocfs2_dx_entry* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @cpu_to_le64(i32 %33)
  %35 = load %struct.ocfs2_dx_entry*, %struct.ocfs2_dx_entry** %8, align 8
  %36 = getelementptr inbounds %struct.ocfs2_dx_entry, %struct.ocfs2_dx_entry* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.ocfs2_dx_entry_list*, %struct.ocfs2_dx_entry_list** %4, align 8
  %38 = getelementptr inbounds %struct.ocfs2_dx_entry_list, %struct.ocfs2_dx_entry_list* %37, i32 0, i32 0
  %39 = call i32 @le16_add_cpu(i32* %38, i32 1)
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memset(%struct.ocfs2_dx_entry*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
