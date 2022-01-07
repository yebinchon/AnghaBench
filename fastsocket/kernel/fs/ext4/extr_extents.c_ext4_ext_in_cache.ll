; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_in_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_in_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_extent = type { i32, i32 }
%struct.ext4_ext_cache = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.ext4_extent*)* @ext4_ext_in_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_in_cache(%struct.inode* %0, i32 %1, %struct.ext4_extent* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ext4_extent*, align 8
  %7 = alloca %struct.ext4_ext_cache, align 4
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ext4_extent* %2, %struct.ext4_extent** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @ext4_ext_check_cache(%struct.inode* %9, i32 %10, %struct.ext4_ext_cache* %7)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.ext4_ext_cache, %struct.ext4_ext_cache* %7, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @cpu_to_le32(i32 %16)
  %18 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %19 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %21 = getelementptr inbounds %struct.ext4_ext_cache, %struct.ext4_ext_cache* %7, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %20, i32 %22)
  %24 = getelementptr inbounds %struct.ext4_ext_cache, %struct.ext4_ext_cache* %7, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @cpu_to_le16(i32 %25)
  %27 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %28 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %14, %3
  %30 = load i32, i32* %8, align 4
  ret i32 %30
}

declare dso_local i32 @ext4_ext_check_cache(%struct.inode*, i32, %struct.ext4_ext_cache*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ext4_ext_store_pblock(%struct.ext4_extent*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
