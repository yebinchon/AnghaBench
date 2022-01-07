; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_inode.c_fat_put_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_inode.c_fat_put_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32*, i64 }
%struct.msdos_sb_info = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@fat_default_iocharset = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @fat_put_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fat_put_super(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.msdos_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = call %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block* %4)
  store %struct.msdos_sb_info* %5, %struct.msdos_sb_info** %3, align 8
  %6 = call i32 (...) @lock_kernel()
  %7 = load %struct.super_block*, %struct.super_block** %2, align 8
  %8 = getelementptr inbounds %struct.super_block, %struct.super_block* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.super_block*, %struct.super_block** %2, align 8
  %13 = call i32 @fat_write_super(%struct.super_block* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %3, align 8
  %16 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @iput(i32 %17)
  %19 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %3, align 8
  %20 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @unload_nls(i32 %21)
  %23 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %3, align 8
  %24 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @unload_nls(i32 %25)
  %27 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %3, align 8
  %28 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @fat_default_iocharset, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %14
  %34 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %3, align 8
  %35 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.msdos_sb_info*
  %39 = call i32 @kfree(%struct.msdos_sb_info* %38)
  br label %40

40:                                               ; preds = %33, %14
  %41 = load %struct.super_block*, %struct.super_block** %2, align 8
  %42 = getelementptr inbounds %struct.super_block, %struct.super_block* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  %43 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %3, align 8
  %44 = call i32 @kfree(%struct.msdos_sb_info* %43)
  %45 = call i32 (...) @unlock_kernel()
  ret void
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @fat_write_super(%struct.super_block*) #1

declare dso_local i32 @iput(i32) #1

declare dso_local i32 @unload_nls(i32) #1

declare dso_local i32 @kfree(%struct.msdos_sb_info*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
