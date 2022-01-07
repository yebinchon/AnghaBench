; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_free_ctxt_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_free_ctxt_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { %struct.dlm_ctxt*, i64, i64 }

@DLM_HASH_PAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ctxt*)* @dlm_free_ctxt_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlm_free_ctxt_mem(%struct.dlm_ctxt* %0) #0 {
  %2 = alloca %struct.dlm_ctxt*, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %2, align 8
  %3 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %4 = call i32 @dlm_destroy_debugfs_subroot(%struct.dlm_ctxt* %3)
  %5 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %6 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %11 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8**
  %14 = load i32, i32* @DLM_HASH_PAGES, align 4
  %15 = call i32 @dlm_free_pagevec(i8** %13, i32 %14)
  br label %16

16:                                               ; preds = %9, %1
  %17 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %18 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %23 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8**
  %26 = load i32, i32* @DLM_HASH_PAGES, align 4
  %27 = call i32 @dlm_free_pagevec(i8** %25, i32 %26)
  br label %28

28:                                               ; preds = %21, %16
  %29 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %30 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %29, i32 0, i32 0
  %31 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %30, align 8
  %32 = icmp ne %struct.dlm_ctxt* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %35 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %34, i32 0, i32 0
  %36 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %35, align 8
  %37 = call i32 @kfree(%struct.dlm_ctxt* %36)
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %40 = call i32 @kfree(%struct.dlm_ctxt* %39)
  ret void
}

declare dso_local i32 @dlm_destroy_debugfs_subroot(%struct.dlm_ctxt*) #1

declare dso_local i32 @dlm_free_pagevec(i8**, i32) #1

declare dso_local i32 @kfree(%struct.dlm_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
