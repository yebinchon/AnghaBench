; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_super.c_generic_shutdown_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_super.c_generic_shutdown_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32, i32, i32, i32, i64, %struct.super_operations* }
%struct.super_operations = type { i32 (%struct.super_block.0*)* }
%struct.super_block.0 = type opaque

@MS_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"VFS: Busy inodes after unmount of %s. Self-destruct in 5 seconds.  Have a nice day...\0A\00", align 1
@sb_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generic_shutdown_super(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.super_operations*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = getelementptr inbounds %struct.super_block, %struct.super_block* %4, i32 0, i32 6
  %6 = load %struct.super_operations*, %struct.super_operations** %5, align 8
  store %struct.super_operations* %6, %struct.super_operations** %3, align 8
  %7 = load %struct.super_block*, %struct.super_block** %2, align 8
  %8 = getelementptr inbounds %struct.super_block, %struct.super_block* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %47

11:                                               ; preds = %1
  %12 = load %struct.super_block*, %struct.super_block** %2, align 8
  %13 = call i32 @shrink_dcache_for_umount(%struct.super_block* %12)
  %14 = load %struct.super_block*, %struct.super_block** %2, align 8
  %15 = call i32 @sync_filesystem(%struct.super_block* %14)
  %16 = call i32 (...) @get_fs_excl()
  %17 = load i32, i32* @MS_ACTIVE, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.super_block*, %struct.super_block** %2, align 8
  %20 = getelementptr inbounds %struct.super_block, %struct.super_block* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load %struct.super_block*, %struct.super_block** %2, align 8
  %24 = call i64 @invalidate_inodes(%struct.super_block* %23, i32 1)
  %25 = load %struct.super_operations*, %struct.super_operations** %3, align 8
  %26 = getelementptr inbounds %struct.super_operations, %struct.super_operations* %25, i32 0, i32 0
  %27 = load i32 (%struct.super_block.0*)*, i32 (%struct.super_block.0*)** %26, align 8
  %28 = icmp ne i32 (%struct.super_block.0*)* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %11
  %30 = load %struct.super_operations*, %struct.super_operations** %3, align 8
  %31 = getelementptr inbounds %struct.super_operations, %struct.super_operations* %30, i32 0, i32 0
  %32 = load i32 (%struct.super_block.0*)*, i32 (%struct.super_block.0*)** %31, align 8
  %33 = load %struct.super_block*, %struct.super_block** %2, align 8
  %34 = bitcast %struct.super_block* %33 to %struct.super_block.0*
  %35 = call i32 %32(%struct.super_block.0* %34)
  br label %36

36:                                               ; preds = %29, %11
  %37 = load %struct.super_block*, %struct.super_block** %2, align 8
  %38 = call i64 @invalidate_inodes(%struct.super_block* %37, i32 1)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load %struct.super_block*, %struct.super_block** %2, align 8
  %42 = getelementptr inbounds %struct.super_block, %struct.super_block* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @printk(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %40, %36
  %46 = call i32 (...) @put_fs_excl()
  br label %47

47:                                               ; preds = %45, %1
  %48 = call i32 @spin_lock(i32* @sb_lock)
  %49 = load %struct.super_block*, %struct.super_block** %2, align 8
  %50 = getelementptr inbounds %struct.super_block, %struct.super_block* %49, i32 0, i32 2
  %51 = call i32 @list_del_init(i32* %50)
  %52 = load %struct.super_block*, %struct.super_block** %2, align 8
  %53 = getelementptr inbounds %struct.super_block, %struct.super_block* %52, i32 0, i32 1
  %54 = call i32 @list_del(i32* %53)
  %55 = call i32 @spin_unlock(i32* @sb_lock)
  %56 = load %struct.super_block*, %struct.super_block** %2, align 8
  %57 = getelementptr inbounds %struct.super_block, %struct.super_block* %56, i32 0, i32 0
  %58 = call i32 @up_write(i32* %57)
  ret void
}

declare dso_local i32 @shrink_dcache_for_umount(%struct.super_block*) #1

declare dso_local i32 @sync_filesystem(%struct.super_block*) #1

declare dso_local i32 @get_fs_excl(...) #1

declare dso_local i64 @invalidate_inodes(%struct.super_block*, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @put_fs_excl(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
