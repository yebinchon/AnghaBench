; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_namei.c_dx_pack_dirents.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_namei.c_dx_pack_dirents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext3_dir_entry_2 = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ext3_dir_entry_2* (i8*, i32)* @dx_pack_dirents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ext3_dir_entry_2* @dx_pack_dirents(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ext3_dir_entry_2*, align 8
  %6 = alloca %struct.ext3_dir_entry_2*, align 8
  %7 = alloca %struct.ext3_dir_entry_2*, align 8
  %8 = alloca %struct.ext3_dir_entry_2*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.ext3_dir_entry_2*
  store %struct.ext3_dir_entry_2* %11, %struct.ext3_dir_entry_2** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %8, align 8
  store %struct.ext3_dir_entry_2* %12, %struct.ext3_dir_entry_2** %6, align 8
  store %struct.ext3_dir_entry_2* %12, %struct.ext3_dir_entry_2** %7, align 8
  br label %13

13:                                               ; preds = %58, %2
  %14 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %8, align 8
  %15 = bitcast %struct.ext3_dir_entry_2* %14 to i8*
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = icmp ult i8* %15, %19
  br i1 %20, label %21, label %60

21:                                               ; preds = %13
  %22 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %8, align 8
  %23 = call %struct.ext3_dir_entry_2* @ext3_next_entry(%struct.ext3_dir_entry_2* %22)
  store %struct.ext3_dir_entry_2* %23, %struct.ext3_dir_entry_2** %5, align 8
  %24 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %8, align 8
  %25 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %58

28:                                               ; preds = %21
  %29 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %8, align 8
  %30 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %28
  %34 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %8, align 8
  %35 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @EXT3_DIR_REC_LEN(i64 %36)
  store i32 %37, i32* %9, align 4
  %38 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %8, align 8
  %39 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %6, align 8
  %40 = icmp ugt %struct.ext3_dir_entry_2* %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %6, align 8
  %43 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @memmove(%struct.ext3_dir_entry_2* %42, %struct.ext3_dir_entry_2* %43, i32 %44)
  br label %46

46:                                               ; preds = %41, %33
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @ext3_rec_len_to_disk(i32 %47)
  %49 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %6, align 8
  %50 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %6, align 8
  store %struct.ext3_dir_entry_2* %51, %struct.ext3_dir_entry_2** %7, align 8
  %52 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %6, align 8
  %53 = bitcast %struct.ext3_dir_entry_2* %52 to i8*
  %54 = load i32, i32* %9, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = bitcast i8* %56 to %struct.ext3_dir_entry_2*
  store %struct.ext3_dir_entry_2* %57, %struct.ext3_dir_entry_2** %6, align 8
  br label %58

58:                                               ; preds = %46, %28, %21
  %59 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %5, align 8
  store %struct.ext3_dir_entry_2* %59, %struct.ext3_dir_entry_2** %8, align 8
  br label %13

60:                                               ; preds = %13
  %61 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %7, align 8
  ret %struct.ext3_dir_entry_2* %61
}

declare dso_local %struct.ext3_dir_entry_2* @ext3_next_entry(%struct.ext3_dir_entry_2*) #1

declare dso_local i32 @EXT3_DIR_REC_LEN(i64) #1

declare dso_local i32 @memmove(%struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2*, i32) #1

declare dso_local i32 @ext3_rec_len_to_disk(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
