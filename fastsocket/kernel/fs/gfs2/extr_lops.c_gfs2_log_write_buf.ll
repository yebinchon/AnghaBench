; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_lops.c_gfs2_log_write_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_lops.c_gfs2_log_write_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.buffer_head = type { i32, i32, %struct.buffer_head*, i32, i32, i32, i32, i32 }

@gfs2_bh_pool = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@BH_Mapped = common dso_local global i32 0, align 4
@BH_Uptodate = common dso_local global i32 0, align 4
@BH_Lock = common dso_local global i32 0, align 4
@gfs2_fake_write_endio = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_sbd*, %struct.buffer_head*)* @gfs2_log_write_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_log_write_buf(%struct.gfs2_sbd* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.gfs2_sbd*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head*, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %7 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %8 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %9 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @gfs2_log_bmap(%struct.gfs2_sbd* %7, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @gfs2_bh_pool, align 4
  %13 = load i32, i32* @GFP_NOFS, align 4
  %14 = call %struct.buffer_head* @mempool_alloc(i32 %12, i32 %13)
  store %struct.buffer_head* %14, %struct.buffer_head** %6, align 8
  %15 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %16 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %15, i32 0, i32 7
  %17 = call i32 @atomic_set(i32* %16, i32 1)
  %18 = load i32, i32* @BH_Mapped, align 4
  %19 = shl i32 1, %18
  %20 = load i32, i32* @BH_Uptodate, align 4
  %21 = shl i32 1, %20
  %22 = or i32 %19, %21
  %23 = load i32, i32* @BH_Lock, align 4
  %24 = shl i32 1, %23
  %25 = or i32 %22, %24
  %26 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %27 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %29 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %30 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %33 = call i32 @bh_offset(%struct.buffer_head* %32)
  %34 = call i32 @set_bh_page(%struct.buffer_head* %28, i32 %31, i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %37 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 8
  %38 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %39 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %43 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  %44 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %45 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %50 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %52 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %53 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %52, i32 0, i32 2
  store %struct.buffer_head* %51, %struct.buffer_head** %53, align 8
  %54 = load i32, i32* @gfs2_fake_write_endio, align 4
  %55 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %56 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %58 = call i32 @gfs2_log_incr_head(%struct.gfs2_sbd* %57)
  %59 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %60 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %59, i32 0, i32 0
  %61 = call i32 @atomic_inc(i32* %60)
  %62 = load i32, i32* @WRITE, align 4
  %63 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %64 = call i32 @submit_bh(i32 %62, %struct.buffer_head* %63)
  ret void
}

declare dso_local i32 @gfs2_log_bmap(%struct.gfs2_sbd*, i32) #1

declare dso_local %struct.buffer_head* @mempool_alloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @set_bh_page(%struct.buffer_head*, i32, i32) #1

declare dso_local i32 @bh_offset(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_log_incr_head(%struct.gfs2_sbd*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @submit_bh(i32, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
