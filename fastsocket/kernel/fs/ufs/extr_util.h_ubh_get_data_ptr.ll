; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_util.h_ubh_get_data_ptr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_util.h_ubh_get_data_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_sb_private_info = type { i64 }
%struct.ufs_buffer_head = type { i32 }

@UFS2_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ufs_sb_private_info*, %struct.ufs_buffer_head*, i32)* @ubh_get_data_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ubh_get_data_ptr(%struct.ufs_sb_private_info* %0, %struct.ufs_buffer_head* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ufs_sb_private_info*, align 8
  %6 = alloca %struct.ufs_buffer_head*, align 8
  %7 = alloca i32, align 4
  store %struct.ufs_sb_private_info* %0, %struct.ufs_sb_private_info** %5, align 8
  store %struct.ufs_buffer_head* %1, %struct.ufs_buffer_head** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %9 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @UFS2_MAGIC, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i8* @ubh_get_addr64(%struct.ufs_buffer_head* %14, i32 %15)
  store i8* %16, i8** %4, align 8
  br label %21

17:                                               ; preds = %3
  %18 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i8* @ubh_get_addr32(%struct.ufs_buffer_head* %18, i32 %19)
  store i8* %20, i8** %4, align 8
  br label %21

21:                                               ; preds = %17, %13
  %22 = load i8*, i8** %4, align 8
  ret i8* %22
}

declare dso_local i8* @ubh_get_addr64(%struct.ufs_buffer_head*, i32) #1

declare dso_local i8* @ubh_get_addr32(%struct.ufs_buffer_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
