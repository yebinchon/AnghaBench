; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_aops.c_gfs2_discard.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_aops.c_gfs2_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.gfs2_sbd = type { i32 }
%struct.buffer_head = type { i32*, %struct.gfs2_bufdata* }
%struct.gfs2_bufdata = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_sbd*, %struct.buffer_head*)* @gfs2_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_discard(%struct.gfs2_sbd* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.gfs2_sbd*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.gfs2_bufdata*, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %6 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %7 = call i32 @lock_buffer(%struct.buffer_head* %6)
  %8 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %9 = call i32 @gfs2_log_lock(%struct.gfs2_sbd* %8)
  %10 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %11 = call i32 @clear_buffer_dirty(%struct.buffer_head* %10)
  %12 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %13 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %12, i32 0, i32 1
  %14 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %13, align 8
  store %struct.gfs2_bufdata* %14, %struct.gfs2_bufdata** %5, align 8
  %15 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %5, align 8
  %16 = icmp ne %struct.gfs2_bufdata* %15, null
  br i1 %16, label %17, label %37

17:                                               ; preds = %2
  %18 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %5, align 8
  %19 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %18, i32 0, i32 0
  %20 = call i32 @list_empty(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %17
  %23 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %24 = call i32 @buffer_pinned(%struct.buffer_head* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %5, align 8
  %28 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %27, i32 0, i32 0
  %29 = call i32 @list_del_init(i32* %28)
  br label %36

30:                                               ; preds = %22, %17
  %31 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @gfs2_remove_from_journal(%struct.buffer_head* %31, i32 %34, i32 0)
  br label %36

36:                                               ; preds = %30, %26
  br label %37

37:                                               ; preds = %36, %2
  %38 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %39 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  %40 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %41 = call i32 @clear_buffer_mapped(%struct.buffer_head* %40)
  %42 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %43 = call i32 @clear_buffer_req(%struct.buffer_head* %42)
  %44 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %45 = call i32 @clear_buffer_new(%struct.buffer_head* %44)
  %46 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %47 = call i32 @gfs2_log_unlock(%struct.gfs2_sbd* %46)
  %48 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %49 = call i32 @unlock_buffer(%struct.buffer_head* %48)
  ret void
}

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_log_lock(%struct.gfs2_sbd*) #1

declare dso_local i32 @clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @buffer_pinned(%struct.buffer_head*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @gfs2_remove_from_journal(%struct.buffer_head*, i32, i32) #1

declare dso_local i32 @clear_buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_req(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_log_unlock(%struct.gfs2_sbd*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
