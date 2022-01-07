; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_wbuf.c_jffs2_wbuf_pending_for_ino.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_wbuf.c_jffs2_wbuf_pending_for_ino.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_inodirty = type { i64, %struct.jffs2_inodirty* }
%struct.jffs2_sb_info = type { %struct.jffs2_inodirty* }

@inodirty_nomem = common dso_local global %struct.jffs2_inodirty zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jffs2_sb_info*, i64)* @jffs2_wbuf_pending_for_ino to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jffs2_wbuf_pending_for_ino(%struct.jffs2_sb_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.jffs2_sb_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.jffs2_inodirty*, align 8
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %8 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %7, i32 0, i32 0
  %9 = load %struct.jffs2_inodirty*, %struct.jffs2_inodirty** %8, align 8
  store %struct.jffs2_inodirty* %9, %struct.jffs2_inodirty** %6, align 8
  %10 = load %struct.jffs2_inodirty*, %struct.jffs2_inodirty** %6, align 8
  %11 = icmp eq %struct.jffs2_inodirty* %10, @inodirty_nomem
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %36

13:                                               ; preds = %2
  %14 = load %struct.jffs2_inodirty*, %struct.jffs2_inodirty** %6, align 8
  %15 = icmp ne %struct.jffs2_inodirty* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %36

20:                                               ; preds = %16, %13
  br label %21

21:                                               ; preds = %31, %20
  %22 = load %struct.jffs2_inodirty*, %struct.jffs2_inodirty** %6, align 8
  %23 = icmp ne %struct.jffs2_inodirty* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load %struct.jffs2_inodirty*, %struct.jffs2_inodirty** %6, align 8
  %26 = getelementptr inbounds %struct.jffs2_inodirty, %struct.jffs2_inodirty* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %36

31:                                               ; preds = %24
  %32 = load %struct.jffs2_inodirty*, %struct.jffs2_inodirty** %6, align 8
  %33 = getelementptr inbounds %struct.jffs2_inodirty, %struct.jffs2_inodirty* %32, i32 0, i32 1
  %34 = load %struct.jffs2_inodirty*, %struct.jffs2_inodirty** %33, align 8
  store %struct.jffs2_inodirty* %34, %struct.jffs2_inodirty** %6, align 8
  br label %21

35:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %30, %19, %12
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
