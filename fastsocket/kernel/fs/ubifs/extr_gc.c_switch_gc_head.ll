; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_gc.c_switch_gc_head.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_gc.c_switch_gc_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_wbuf }
%struct.ubifs_wbuf = type { i64, i64, i32 }

@GCHD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"switch GC head from LEB %d:%d to LEB %d (waste %d bytes)\00", align 1
@UBI_LONGTERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*)* @switch_gc_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switch_gc_head(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_wbuf*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %7 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %8 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %11 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i64, i64* @GCHD, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.ubifs_wbuf* %15, %struct.ubifs_wbuf** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, -1
  %18 = zext i1 %17 to i32
  %19 = call i32 @ubifs_assert(i32 %18)
  %20 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %6, align 8
  %21 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %6, align 8
  %24 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %6, align 8
  %27 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %32 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %6, align 8
  %35 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  %38 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %6, align 8
  %39 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %37, %40
  %42 = call i32 @dbg_gc(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %22, i64 %29, i32 %30, i64 %41)
  %43 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %6, align 8
  %44 = call i32 @ubifs_wbuf_sync_nolock(%struct.ubifs_wbuf* %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %1
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %74

49:                                               ; preds = %1
  %50 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @ubifs_leb_unmap(%struct.ubifs_info* %50, i32 %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %74

57:                                               ; preds = %49
  %58 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %59 = load i64, i64* @GCHD, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @ubifs_add_bud_to_log(%struct.ubifs_info* %58, i64 %59, i32 %60, i32 0)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %74

66:                                               ; preds = %57
  %67 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %68 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %67, i32 0, i32 0
  store i32 -1, i32* %68, align 8
  %69 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %6, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @UBI_LONGTERM, align 4
  %72 = call i32 @ubifs_wbuf_seek_nolock(%struct.ubifs_wbuf* %69, i32 %70, i32 0, i32 %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %66, %64, %55, %47
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @dbg_gc(i8*, i32, i64, i32, i64) #1

declare dso_local i32 @ubifs_wbuf_sync_nolock(%struct.ubifs_wbuf*) #1

declare dso_local i32 @ubifs_leb_unmap(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_add_bud_to_log(%struct.ubifs_info*, i64, i32, i32) #1

declare dso_local i32 @ubifs_wbuf_seek_nolock(%struct.ubifs_wbuf*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
