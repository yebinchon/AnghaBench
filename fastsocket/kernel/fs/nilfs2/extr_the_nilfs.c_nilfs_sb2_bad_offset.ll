; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_the_nilfs.c_nilfs_sb2_bad_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_the_nilfs.c_nilfs_sb2_bad_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_super_block = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_super_block*, i32)* @nilfs_sb2_bad_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_sb2_bad_offset(%struct.nilfs_super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.nilfs_super_block*, align 8
  %4 = alloca i32, align 4
  store %struct.nilfs_super_block* %0, %struct.nilfs_super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %3, align 8
  %7 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @le64_to_cpu(i32 %8)
  %10 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %3, align 8
  %11 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @le32_to_cpu(i32 %12)
  %14 = mul nsw i32 %9, %13
  %15 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %3, align 8
  %16 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32_to_cpu(i32 %17)
  %19 = add nsw i32 %18, 10
  %20 = shl i32 %14, %19
  %21 = icmp slt i32 %5, %20
  %22 = zext i1 %21 to i32
  ret i32 %22
}

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
