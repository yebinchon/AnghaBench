; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_fstype.c_gfs2_kill_sb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_fstype.c_gfs2_kill_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @gfs2_kill_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_kill_sb(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.gfs2_sbd*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = getelementptr inbounds %struct.super_block, %struct.super_block* %4, i32 0, i32 0
  %6 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  store %struct.gfs2_sbd* %6, %struct.gfs2_sbd** %3, align 8
  %7 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %8 = icmp eq %struct.gfs2_sbd* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.super_block*, %struct.super_block** %2, align 8
  %11 = call i32 @kill_block_super(%struct.super_block* %10)
  br label %33

12:                                               ; preds = %1
  %13 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %14 = call i32 @gfs2_meta_syncfs(%struct.gfs2_sbd* %13)
  %15 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %16 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @dput(i32* %17)
  %19 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %20 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @dput(i32* %21)
  %23 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %24 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %26 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  %27 = load %struct.super_block*, %struct.super_block** %2, align 8
  %28 = call i32 @shrink_dcache_sb(%struct.super_block* %27)
  %29 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %30 = call i32 @gfs2_delete_debugfs_file(%struct.gfs2_sbd* %29)
  %31 = load %struct.super_block*, %struct.super_block** %2, align 8
  %32 = call i32 @kill_block_super(%struct.super_block* %31)
  br label %33

33:                                               ; preds = %12, %9
  ret void
}

declare dso_local i32 @kill_block_super(%struct.super_block*) #1

declare dso_local i32 @gfs2_meta_syncfs(%struct.gfs2_sbd*) #1

declare dso_local i32 @dput(i32*) #1

declare dso_local i32 @shrink_dcache_sb(%struct.super_block*) #1

declare dso_local i32 @gfs2_delete_debugfs_file(%struct.gfs2_sbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
