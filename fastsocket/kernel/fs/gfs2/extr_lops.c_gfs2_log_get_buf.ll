; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_lops.c_gfs2_log_get_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_lops.c_gfs2_log_get_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32, %struct.gfs2_sbd*, i32, i32 }
%struct.gfs2_sbd = type { i32, i32, i32 }

@gfs2_log_write_endio = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.gfs2_sbd*)* @gfs2_log_get_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @gfs2_log_get_buf(%struct.gfs2_sbd* %0) #0 {
  %2 = alloca %struct.gfs2_sbd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.buffer_head*, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %2, align 8
  %5 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %6 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %7 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @gfs2_log_bmap(%struct.gfs2_sbd* %5, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %11 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.buffer_head* @sb_getblk(i32 %12, i32 %13)
  store %struct.buffer_head* %14, %struct.buffer_head** %4, align 8
  %15 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %16 = call i32 @lock_buffer(%struct.buffer_head* %15)
  %17 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %18 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %21 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @memset(i32 %19, i32 0, i32 %22)
  %24 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %25 = call i32 @set_buffer_uptodate(%struct.buffer_head* %24)
  %26 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %27 = call i32 @clear_buffer_dirty(%struct.buffer_head* %26)
  %28 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %29 = call i32 @gfs2_log_incr_head(%struct.gfs2_sbd* %28)
  %30 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %31 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %30, i32 0, i32 0
  %32 = call i32 @atomic_inc(i32* %31)
  %33 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %34 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %35 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %34, i32 0, i32 1
  store %struct.gfs2_sbd* %33, %struct.gfs2_sbd** %35, align 8
  %36 = load i32, i32* @gfs2_log_write_endio, align 4
  %37 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %38 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  ret %struct.buffer_head* %39
}

declare dso_local i32 @gfs2_log_bmap(%struct.gfs2_sbd*, i32) #1

declare dso_local %struct.buffer_head* @sb_getblk(i32, i32) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_log_incr_head(%struct.gfs2_sbd*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
