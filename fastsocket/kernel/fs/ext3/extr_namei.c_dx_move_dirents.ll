; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_namei.c_dx_move_dirents.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_namei.c_dx_move_dirents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext3_dir_entry_2 = type { i64, i32, i32 }
%struct.dx_map_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ext3_dir_entry_2* (i8*, i8*, %struct.dx_map_entry*, i32)* @dx_move_dirents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ext3_dir_entry_2* @dx_move_dirents(i8* %0, i8* %1, %struct.dx_map_entry* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dx_map_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ext3_dir_entry_2*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.dx_map_entry* %2, %struct.dx_map_entry** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %15, %4
  %12 = load i32, i32* %8, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %8, align 4
  %14 = icmp ne i32 %12, 0
  br i1 %14, label %15, label %44

15:                                               ; preds = %11
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.dx_map_entry*, %struct.dx_map_entry** %7, align 8
  %18 = getelementptr inbounds %struct.dx_map_entry, %struct.dx_map_entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %16, i64 %20
  %22 = bitcast i8* %21 to %struct.ext3_dir_entry_2*
  store %struct.ext3_dir_entry_2* %22, %struct.ext3_dir_entry_2** %10, align 8
  %23 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %24 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @EXT3_DIR_REC_LEN(i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @memcpy(i8* %27, %struct.ext3_dir_entry_2* %28, i32 %29)
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @ext3_rec_len_to_disk(i32 %31)
  %33 = load i8*, i8** %6, align 8
  %34 = bitcast i8* %33 to %struct.ext3_dir_entry_2*
  %35 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 8
  %36 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %37 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.dx_map_entry*, %struct.dx_map_entry** %7, align 8
  %39 = getelementptr inbounds %struct.dx_map_entry, %struct.dx_map_entry* %38, i32 1
  store %struct.dx_map_entry* %39, %struct.dx_map_entry** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = zext i32 %40 to i64
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** %6, align 8
  br label %11

44:                                               ; preds = %11
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = zext i32 %46 to i64
  %48 = sub i64 0, %47
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  %50 = bitcast i8* %49 to %struct.ext3_dir_entry_2*
  ret %struct.ext3_dir_entry_2* %50
}

declare dso_local i32 @EXT3_DIR_REC_LEN(i32) #1

declare dso_local i32 @memcpy(i8*, %struct.ext3_dir_entry_2*, i32) #1

declare dso_local i32 @ext3_rec_len_to_disk(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
