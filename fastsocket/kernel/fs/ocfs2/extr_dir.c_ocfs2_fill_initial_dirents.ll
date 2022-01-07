; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_fill_initial_dirents.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_fill_initial_dirents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_dir_entry = type { i32, i32, i8*, i8* }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ocfs2_dir_entry* (%struct.inode*, %struct.inode*, i8*, i32)* @ocfs2_fill_initial_dirents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ocfs2_dir_entry* @ocfs2_fill_initial_dirents(%struct.inode* %0, %struct.inode* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocfs2_dir_entry*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.ocfs2_dir_entry*
  store %struct.ocfs2_dir_entry* %11, %struct.ocfs2_dir_entry** %9, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @cpu_to_le64(i32 %15)
  %17 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %9, align 8
  %18 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %9, align 8
  %20 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %9, align 8
  %22 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @OCFS2_DIR_REC_LEN(i32 %23)
  %25 = call i8* @cpu_to_le16(i32 %24)
  %26 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %9, align 8
  %27 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %9, align 8
  %29 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @strcpy(i32 %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %9, align 8
  %33 = load i32, i32* @S_IFDIR, align 4
  %34 = call i32 @ocfs2_set_de_type(%struct.ocfs2_dir_entry* %32, i32 %33)
  %35 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %9, align 8
  %36 = bitcast %struct.ocfs2_dir_entry* %35 to i8*
  %37 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %9, align 8
  %38 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @le16_to_cpu(i8* %39)
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %36, i64 %41
  %43 = bitcast i8* %42 to %struct.ocfs2_dir_entry*
  store %struct.ocfs2_dir_entry* %43, %struct.ocfs2_dir_entry** %9, align 8
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @cpu_to_le64(i32 %47)
  %49 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %9, align 8
  %50 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @OCFS2_DIR_REC_LEN(i32 1)
  %53 = sub i32 %51, %52
  %54 = call i8* @cpu_to_le16(i32 %53)
  %55 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %9, align 8
  %56 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %9, align 8
  %58 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %57, i32 0, i32 0
  store i32 2, i32* %58, align 8
  %59 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %9, align 8
  %60 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @strcpy(i32 %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %9, align 8
  %64 = load i32, i32* @S_IFDIR, align 4
  %65 = call i32 @ocfs2_set_de_type(%struct.ocfs2_dir_entry* %63, i32 %64)
  %66 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %9, align 8
  ret %struct.ocfs2_dir_entry* %66
}

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @OCFS2_DIR_REC_LEN(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @ocfs2_set_de_type(%struct.ocfs2_dir_entry*, i32) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
