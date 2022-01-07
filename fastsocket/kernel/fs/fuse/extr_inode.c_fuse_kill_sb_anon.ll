; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_inode.c_fuse_kill_sb_anon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_inode.c_fuse_kill_sb_anon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.fuse_conn = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @fuse_kill_sb_anon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_kill_sb_anon(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.fuse_conn*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = call %struct.fuse_conn* @get_fuse_conn_super(%struct.super_block* %4)
  store %struct.fuse_conn* %5, %struct.fuse_conn** %3, align 8
  %6 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %7 = icmp ne %struct.fuse_conn* %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %10 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %9, i32 0, i32 0
  %11 = call i32 @down_write(i32* %10)
  %12 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %13 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %12, i32 0, i32 1
  store i32* null, i32** %13, align 8
  %14 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %15 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %14, i32 0, i32 0
  %16 = call i32 @up_write(i32* %15)
  br label %17

17:                                               ; preds = %8, %1
  %18 = load %struct.super_block*, %struct.super_block** %2, align 8
  %19 = call i32 @kill_anon_super(%struct.super_block* %18)
  ret void
}

declare dso_local %struct.fuse_conn* @get_fuse_conn_super(%struct.super_block*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @kill_anon_super(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
