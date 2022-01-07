; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_namei.c_dx_move_dirents.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_namei.c_dx_move_dirents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_dir_entry_2 = type { i64, i32, i32 }
%struct.dx_map_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ext4_dir_entry_2* (i8*, i8*, %struct.dx_map_entry*, i32, i32)* @dx_move_dirents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ext4_dir_entry_2* @dx_move_dirents(i8* %0, i8* %1, %struct.dx_map_entry* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dx_map_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ext4_dir_entry_2*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.dx_map_entry* %2, %struct.dx_map_entry** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %17, %5
  %14 = load i32, i32* %9, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %9, align 4
  %16 = icmp ne i32 %14, 0
  br i1 %16, label %17, label %48

17:                                               ; preds = %13
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.dx_map_entry*, %struct.dx_map_entry** %8, align 8
  %20 = getelementptr inbounds %struct.dx_map_entry, %struct.dx_map_entry* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 2
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %18, i64 %23
  %25 = bitcast i8* %24 to %struct.ext4_dir_entry_2*
  store %struct.ext4_dir_entry_2* %25, %struct.ext4_dir_entry_2** %12, align 8
  %26 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %12, align 8
  %27 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @EXT4_DIR_REC_LEN(i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %12, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @memcpy(i8* %30, %struct.ext4_dir_entry_2* %31, i32 %32)
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @ext4_rec_len_to_disk(i32 %34, i32 %35)
  %37 = load i8*, i8** %7, align 8
  %38 = bitcast i8* %37 to %struct.ext4_dir_entry_2*
  %39 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 8
  %40 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %12, align 8
  %41 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.dx_map_entry*, %struct.dx_map_entry** %8, align 8
  %43 = getelementptr inbounds %struct.dx_map_entry, %struct.dx_map_entry* %42, i32 1
  store %struct.dx_map_entry* %43, %struct.dx_map_entry** %8, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %47, i8** %7, align 8
  br label %13

48:                                               ; preds = %13
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* %11, align 4
  %51 = zext i32 %50 to i64
  %52 = sub i64 0, %51
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  %54 = bitcast i8* %53 to %struct.ext4_dir_entry_2*
  ret %struct.ext4_dir_entry_2* %54
}

declare dso_local i32 @EXT4_DIR_REC_LEN(i32) #1

declare dso_local i32 @memcpy(i8*, %struct.ext4_dir_entry_2*, i32) #1

declare dso_local i32 @ext4_rec_len_to_disk(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
