; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_super.c_nilfs_read_super_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_super.c_nilfs_read_super_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_super_block = type { i32 }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nilfs_super_block* @nilfs_read_super_block(%struct.super_block* %0, i64 %1, i32 %2, %struct.buffer_head** %3) #0 {
  %5 = alloca %struct.nilfs_super_block*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.buffer_head** %3, %struct.buffer_head*** %9, align 8
  %12 = load i64, i64* %7, align 8
  store i64 %12, i64* %10, align 8
  %13 = load i64, i64* %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i64 @do_div(i64 %13, i32 %14)
  store i64 %15, i64* %11, align 8
  %16 = load %struct.super_block*, %struct.super_block** %6, align 8
  %17 = load i64, i64* %10, align 8
  %18 = call %struct.buffer_head* @sb_bread(%struct.super_block* %16, i64 %17)
  %19 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  store %struct.buffer_head* %18, %struct.buffer_head** %19, align 8
  %20 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %21 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %22 = icmp ne %struct.buffer_head* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store %struct.nilfs_super_block* null, %struct.nilfs_super_block** %5, align 8
  br label %33

24:                                               ; preds = %4
  %25 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %26 = load %struct.buffer_head*, %struct.buffer_head** %25, align 8
  %27 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = load i64, i64* %11, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = bitcast i8* %31 to %struct.nilfs_super_block*
  store %struct.nilfs_super_block* %32, %struct.nilfs_super_block** %5, align 8
  br label %33

33:                                               ; preds = %24, %23
  %34 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %5, align 8
  ret %struct.nilfs_super_block* %34
}

declare dso_local i64 @do_div(i64, i32) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
