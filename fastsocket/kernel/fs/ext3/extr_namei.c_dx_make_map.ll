; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_namei.c_dx_make_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_namei.c_dx_make_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext3_dir_entry_2 = type { i32, i64, i32, i64 }
%struct.dx_hash_info = type { i32 }
%struct.dx_map_entry = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext3_dir_entry_2*, i32, %struct.dx_hash_info*, %struct.dx_map_entry*)* @dx_make_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dx_make_map(%struct.ext3_dir_entry_2* %0, i32 %1, %struct.dx_hash_info* %2, %struct.dx_map_entry* %3) #0 {
  %5 = alloca %struct.ext3_dir_entry_2*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dx_hash_info*, align 8
  %8 = alloca %struct.dx_map_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.dx_hash_info, align 4
  store %struct.ext3_dir_entry_2* %0, %struct.ext3_dir_entry_2** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dx_hash_info* %2, %struct.dx_hash_info** %7, align 8
  store %struct.dx_map_entry* %3, %struct.dx_map_entry** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %5, align 8
  %13 = bitcast %struct.ext3_dir_entry_2* %12 to i8*
  store i8* %13, i8** %10, align 8
  %14 = load %struct.dx_hash_info*, %struct.dx_hash_info** %7, align 8
  %15 = bitcast %struct.dx_hash_info* %11 to i8*
  %16 = bitcast %struct.dx_hash_info* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 4, i1 false)
  br label %17

17:                                               ; preds = %66, %4
  %18 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %5, align 8
  %19 = bitcast %struct.ext3_dir_entry_2* %18 to i8*
  %20 = load i8*, i8** %10, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = icmp ult i8* %19, %23
  br i1 %24, label %25, label %69

25:                                               ; preds = %17
  %26 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %5, align 8
  %27 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %66

30:                                               ; preds = %25
  %31 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %5, align 8
  %32 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %66

35:                                               ; preds = %30
  %36 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %5, align 8
  %37 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %5, align 8
  %40 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @ext3fs_dirhash(i32 %38, i64 %41, %struct.dx_hash_info* %11)
  %43 = load %struct.dx_map_entry*, %struct.dx_map_entry** %8, align 8
  %44 = getelementptr inbounds %struct.dx_map_entry, %struct.dx_map_entry* %43, i32 -1
  store %struct.dx_map_entry* %44, %struct.dx_map_entry** %8, align 8
  %45 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %11, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.dx_map_entry*, %struct.dx_map_entry** %8, align 8
  %48 = getelementptr inbounds %struct.dx_map_entry, %struct.dx_map_entry* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %5, align 8
  %50 = bitcast %struct.ext3_dir_entry_2* %49 to i8*
  %51 = load i8*, i8** %10, align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = load %struct.dx_map_entry*, %struct.dx_map_entry** %8, align 8
  %56 = getelementptr inbounds %struct.dx_map_entry, %struct.dx_map_entry* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  %57 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %5, align 8
  %58 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @le16_to_cpu(i32 %59)
  %61 = load %struct.dx_map_entry*, %struct.dx_map_entry** %8, align 8
  %62 = getelementptr inbounds %struct.dx_map_entry, %struct.dx_map_entry* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  %65 = call i32 (...) @cond_resched()
  br label %66

66:                                               ; preds = %35, %30, %25
  %67 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %5, align 8
  %68 = call %struct.ext3_dir_entry_2* @ext3_next_entry(%struct.ext3_dir_entry_2* %67)
  store %struct.ext3_dir_entry_2* %68, %struct.ext3_dir_entry_2** %5, align 8
  br label %17

69:                                               ; preds = %17
  %70 = load i32, i32* %9, align 4
  ret i32 %70
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ext3fs_dirhash(i32, i64, %struct.dx_hash_info*) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @cond_resched(...) #2

declare dso_local %struct.ext3_dir_entry_2* @ext3_next_entry(%struct.ext3_dir_entry_2*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
