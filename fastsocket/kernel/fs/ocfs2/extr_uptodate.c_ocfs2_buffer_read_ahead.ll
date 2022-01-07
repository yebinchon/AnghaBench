; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_uptodate.c_ocfs2_buffer_read_ahead.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_uptodate.c_ocfs2_buffer_read_ahead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_buffer_read_ahead(%struct.ocfs2_caching_info* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.ocfs2_caching_info*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  store %struct.ocfs2_caching_info* %0, %struct.ocfs2_caching_info** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %5 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %6 = call i64 @buffer_locked(%struct.buffer_head* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %10 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %11 = call i64 @ocfs2_buffer_cached(%struct.ocfs2_caching_info* %9, %struct.buffer_head* %10)
  %12 = icmp ne i64 %11, 0
  br label %13

13:                                               ; preds = %8, %2
  %14 = phi i1 [ false, %2 ], [ %12, %8 ]
  %15 = zext i1 %14 to i32
  ret i32 %15
}

declare dso_local i64 @buffer_locked(%struct.buffer_head*) #1

declare dso_local i64 @ocfs2_buffer_cached(%struct.ocfs2_caching_info*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
