; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_aops.c_gfs2_invalidatepage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_aops.c_gfs2_invalidatepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.gfs2_sbd = type { i32 }
%struct.buffer_head = type { %struct.buffer_head*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i64)* @gfs2_invalidatepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_invalidatepage(%struct.page* %0, i64 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.page*, %struct.page** %3, align 8
  %10 = getelementptr inbounds %struct.page, %struct.page* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.gfs2_sbd* @GFS2_SB(i32 %13)
  store %struct.gfs2_sbd* %14, %struct.gfs2_sbd** %5, align 8
  store i64 0, i64* %8, align 8
  %15 = load %struct.page*, %struct.page** %3, align 8
  %16 = call i32 @PageLocked(%struct.page* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load i64, i64* %4, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.page*, %struct.page** %3, align 8
  %25 = call i32 @ClearPageChecked(%struct.page* %24)
  br label %26

26:                                               ; preds = %23, %2
  %27 = load %struct.page*, %struct.page** %3, align 8
  %28 = call i32 @page_has_buffers(%struct.page* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  br label %56

31:                                               ; preds = %26
  %32 = load %struct.page*, %struct.page** %3, align 8
  %33 = call %struct.buffer_head* @page_buffers(%struct.page* %32)
  store %struct.buffer_head* %33, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* %33, %struct.buffer_head** %6, align 8
  br label %34

34:                                               ; preds = %51, %31
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp ule i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %40 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %41 = call i32 @gfs2_discard(%struct.gfs2_sbd* %39, %struct.buffer_head* %40)
  br label %42

42:                                               ; preds = %38, %34
  %43 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %44 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %8, align 8
  %48 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %49 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %48, i32 0, i32 0
  %50 = load %struct.buffer_head*, %struct.buffer_head** %49, align 8
  store %struct.buffer_head* %50, %struct.buffer_head** %6, align 8
  br label %51

51:                                               ; preds = %42
  %52 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %53 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %54 = icmp ne %struct.buffer_head* %52, %53
  br i1 %54, label %34, label %55

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %55, %30
  %57 = load i64, i64* %4, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.page*, %struct.page** %3, align 8
  %61 = call i32 @try_to_release_page(%struct.page* %60, i32 0)
  br label %62

62:                                               ; preds = %59, %56
  ret void
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @ClearPageChecked(%struct.page*) #1

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @gfs2_discard(%struct.gfs2_sbd*, %struct.buffer_head*) #1

declare dso_local i32 @try_to_release_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
