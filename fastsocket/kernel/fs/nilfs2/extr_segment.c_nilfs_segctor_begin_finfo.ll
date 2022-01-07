; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_begin_finfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_begin_finfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sc_info = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.inode = type { i64 }

@NILFS_SC_HAVE_DELTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_sc_info*, %struct.inode*)* @nilfs_segctor_begin_finfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_segctor_begin_finfo(%struct.nilfs_sc_info* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.nilfs_sc_info*, align 8
  %4 = alloca %struct.inode*, align 8
  store %struct.nilfs_sc_info* %0, %struct.nilfs_sc_info** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %5 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %6 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %5, i32 0, i32 3
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 4
  %12 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %13 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %16 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %18 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %19 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %18, i32 0, i32 1
  %20 = call i32 @nilfs_segctor_map_segsum_entry(%struct.nilfs_sc_info* %17, i32* %19, i32 4)
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %2
  %26 = load i32, i32* @NILFS_SC_HAVE_DELTA, align 4
  %27 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %28 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %27, i32 0, i32 0
  %29 = call i32 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @NILFS_SC_HAVE_DELTA, align 4
  %33 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %34 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %33, i32 0, i32 0
  %35 = call i32 @set_bit(i32 %32, i32* %34)
  br label %36

36:                                               ; preds = %31, %25, %2
  ret void
}

declare dso_local i32 @nilfs_segctor_map_segsum_entry(%struct.nilfs_sc_info*, i32*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
