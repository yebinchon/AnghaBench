; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_lops.c_gfs2_fake_write_endio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_lops.c_gfs2_fake_write_endio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { %struct.TYPE_2__*, %struct.buffer_head* }
%struct.TYPE_2__ = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32, i32 }
%struct.gfs2_bufdata = type { %struct.TYPE_2__*, %struct.gfs2_bufdata* }

@gfs2_bh_pool = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer_head*, i32)* @gfs2_fake_write_endio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_fake_write_endio(%struct.buffer_head* %0, i32 %1) #0 {
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.gfs2_bufdata*, align 8
  %7 = alloca %struct.gfs2_sbd*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %9 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %8, i32 0, i32 1
  %10 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  store %struct.buffer_head* %10, %struct.buffer_head** %5, align 8
  %11 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %12 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %11, i32 0, i32 1
  %13 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %14 = bitcast %struct.buffer_head* %13 to %struct.gfs2_bufdata*
  store %struct.gfs2_bufdata* %14, %struct.gfs2_bufdata** %6, align 8
  %15 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %6, align 8
  %16 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %18, align 8
  store %struct.gfs2_sbd* %19, %struct.gfs2_sbd** %7, align 8
  %20 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %21 = bitcast %struct.buffer_head* %20 to %struct.gfs2_bufdata*
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @end_buffer_write_sync(%struct.gfs2_bufdata* %21, i32 %22)
  %24 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %25 = bitcast %struct.buffer_head* %24 to %struct.gfs2_bufdata*
  %26 = load i32, i32* @gfs2_bh_pool, align 4
  %27 = call i32 @mempool_free(%struct.gfs2_bufdata* %25, i32 %26)
  %28 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %29 = bitcast %struct.buffer_head* %28 to %struct.gfs2_bufdata*
  %30 = call i32 @unlock_buffer(%struct.gfs2_bufdata* %29)
  %31 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %32 = bitcast %struct.buffer_head* %31 to %struct.gfs2_bufdata*
  %33 = call i32 @brelse(%struct.gfs2_bufdata* %32)
  %34 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %35 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %34, i32 0, i32 1
  %36 = call i64 @atomic_dec_and_test(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %2
  %39 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %40 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %39, i32 0, i32 0
  %41 = call i32 @wake_up(i32* %40)
  br label %42

42:                                               ; preds = %38, %2
  ret void
}

declare dso_local i32 @end_buffer_write_sync(%struct.gfs2_bufdata*, i32) #1

declare dso_local i32 @mempool_free(%struct.gfs2_bufdata*, i32) #1

declare dso_local i32 @unlock_buffer(%struct.gfs2_bufdata*) #1

declare dso_local i32 @brelse(%struct.gfs2_bufdata*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
