; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_trans.c_gfs2_trans_add_meta.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_trans.c_gfs2_trans_add_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_glock = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32 }
%struct.buffer_head = type { i32, %struct.gfs2_bufdata* }
%struct.gfs2_bufdata = type { %struct.gfs2_glock* }

@gfs2_buf_lops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_trans_add_meta(%struct.gfs2_glock* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.gfs2_glock*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca %struct.gfs2_bufdata*, align 8
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %7 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %8 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %7, i32 0, i32 0
  %9 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  store %struct.gfs2_sbd* %9, %struct.gfs2_sbd** %5, align 8
  %10 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %11 = call i32 @lock_buffer(%struct.buffer_head* %10)
  %12 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %13 = call i32 @gfs2_log_lock(%struct.gfs2_sbd* %12)
  %14 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %15 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %14, i32 0, i32 1
  %16 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %15, align 8
  store %struct.gfs2_bufdata* %16, %struct.gfs2_bufdata** %6, align 8
  %17 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %6, align 8
  %18 = icmp eq %struct.gfs2_bufdata* %17, null
  br i1 %18, label %19, label %45

19:                                               ; preds = %2
  %20 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %21 = call i32 @gfs2_log_unlock(%struct.gfs2_sbd* %20)
  %22 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %23 = call i32 @unlock_buffer(%struct.buffer_head* %22)
  %24 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %25 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @lock_page(i32 %26)
  %28 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %29 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %28, i32 0, i32 1
  %30 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %29, align 8
  %31 = icmp eq %struct.gfs2_bufdata* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %19
  %33 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %34 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %35 = call %struct.gfs2_bufdata* @gfs2_alloc_bufdata(%struct.gfs2_glock* %33, %struct.buffer_head* %34, i32* @gfs2_buf_lops)
  store %struct.gfs2_bufdata* %35, %struct.gfs2_bufdata** %6, align 8
  br label %36

36:                                               ; preds = %32, %19
  %37 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %38 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @unlock_page(i32 %39)
  %41 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %42 = call i32 @lock_buffer(%struct.buffer_head* %41)
  %43 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %44 = call i32 @gfs2_log_lock(%struct.gfs2_sbd* %43)
  br label %45

45:                                               ; preds = %36, %2
  %46 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %47 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %6, align 8
  %48 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %47, i32 0, i32 0
  %49 = load %struct.gfs2_glock*, %struct.gfs2_glock** %48, align 8
  %50 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %51 = icmp eq %struct.gfs2_glock* %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @gfs2_assert(%struct.gfs2_sbd* %46, i32 %52)
  %54 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %55 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %6, align 8
  %56 = call i32 @meta_lo_add(%struct.gfs2_sbd* %54, %struct.gfs2_bufdata* %55)
  %57 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %58 = call i32 @gfs2_log_unlock(%struct.gfs2_sbd* %57)
  %59 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %60 = call i32 @unlock_buffer(%struct.buffer_head* %59)
  ret void
}

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_log_lock(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_log_unlock(%struct.gfs2_sbd*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @lock_page(i32) #1

declare dso_local %struct.gfs2_bufdata* @gfs2_alloc_bufdata(%struct.gfs2_glock*, %struct.buffer_head*, i32*) #1

declare dso_local i32 @unlock_page(i32) #1

declare dso_local i32 @gfs2_assert(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @meta_lo_add(%struct.gfs2_sbd*, %struct.gfs2_bufdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
