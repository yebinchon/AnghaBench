; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_super.c_deactivate_locked_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_super.c_deactivate_locked_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32, %struct.file_system_type* }
%struct.file_system_type = type { i32 (%struct.super_block*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deactivate_locked_super(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.file_system_type*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = getelementptr inbounds %struct.super_block, %struct.super_block* %4, i32 0, i32 2
  %6 = load %struct.file_system_type*, %struct.file_system_type** %5, align 8
  store %struct.file_system_type* %6, %struct.file_system_type** %3, align 8
  %7 = load %struct.super_block*, %struct.super_block** %2, align 8
  %8 = getelementptr inbounds %struct.super_block, %struct.super_block* %7, i32 0, i32 1
  %9 = call i64 @atomic_dec_and_test(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.super_block*, %struct.super_block** %2, align 8
  %13 = call i32 @vfs_dq_off(%struct.super_block* %12, i32 0)
  %14 = load %struct.file_system_type*, %struct.file_system_type** %3, align 8
  %15 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %14, i32 0, i32 0
  %16 = load i32 (%struct.super_block*)*, i32 (%struct.super_block*)** %15, align 8
  %17 = load %struct.super_block*, %struct.super_block** %2, align 8
  %18 = call i32 %16(%struct.super_block* %17)
  %19 = load %struct.file_system_type*, %struct.file_system_type** %3, align 8
  %20 = call i32 @put_filesystem(%struct.file_system_type* %19)
  %21 = load %struct.super_block*, %struct.super_block** %2, align 8
  %22 = call i32 @put_super(%struct.super_block* %21)
  br label %27

23:                                               ; preds = %1
  %24 = load %struct.super_block*, %struct.super_block** %2, align 8
  %25 = getelementptr inbounds %struct.super_block, %struct.super_block* %24, i32 0, i32 0
  %26 = call i32 @up_write(i32* %25)
  br label %27

27:                                               ; preds = %23, %11
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @vfs_dq_off(%struct.super_block*, i32) #1

declare dso_local i32 @put_filesystem(%struct.file_system_type*) #1

declare dso_local i32 @put_super(%struct.super_block*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
