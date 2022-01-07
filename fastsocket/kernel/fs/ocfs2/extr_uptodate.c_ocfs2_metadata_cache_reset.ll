; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_uptodate.c_ocfs2_metadata_cache_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_uptodate.c_ocfs2_metadata_cache_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_caching_info = type { i64, i64, i64, i32 }

@OCFS2_CACHE_FL_INLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_caching_info*, i32)* @ocfs2_metadata_cache_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_metadata_cache_reset(%struct.ocfs2_caching_info* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_caching_info*, align 8
  %4 = alloca i32, align 4
  store %struct.ocfs2_caching_info* %0, %struct.ocfs2_caching_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @OCFS2_CACHE_FL_INLINE, align 4
  %6 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %7 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = or i32 %8, %5
  store i32 %9, i32* %7, align 8
  %10 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %11 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %16 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %18 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  br label %19

19:                                               ; preds = %14, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
