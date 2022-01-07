; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_file.c_is_size_safe_to_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_file.c_is_size_safe_to_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifsInodeInfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cifs_sb_info = type { i32 }

@CIFS_MOUNT_DIRECT_IO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_size_safe_to_change(%struct.cifsInodeInfo* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cifsInodeInfo*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cifs_sb_info*, align 8
  store %struct.cifsInodeInfo* %0, %struct.cifsInodeInfo** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %4, align 8
  %8 = icmp ne %struct.cifsInodeInfo* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %36

10:                                               ; preds = %2
  %11 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %4, align 8
  %12 = call i64 @is_inode_writable(%struct.cifsInodeInfo* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %10
  %15 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %4, align 8
  %16 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.cifs_sb_info* @CIFS_SB(i32 %18)
  store %struct.cifs_sb_info* %19, %struct.cifs_sb_info** %6, align 8
  %20 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %6, align 8
  %21 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CIFS_MOUNT_DIRECT_IO, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %36

27:                                               ; preds = %14
  %28 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %4, align 8
  %29 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %28, i32 0, i32 0
  %30 = call i64 @i_size_read(%struct.TYPE_2__* %29)
  %31 = load i64, i64* %5, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %36

34:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %36

35:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %34, %33, %26, %9
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @is_inode_writable(%struct.cifsInodeInfo*) #1

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local i64 @i_size_read(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
