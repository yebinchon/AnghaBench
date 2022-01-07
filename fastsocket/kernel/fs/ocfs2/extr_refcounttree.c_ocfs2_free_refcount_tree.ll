; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_free_refcount_tree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_free_refcount_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_refcount_tree = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_refcount_tree*)* @ocfs2_free_refcount_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_free_refcount_tree(%struct.ocfs2_refcount_tree* %0) #0 {
  %2 = alloca %struct.ocfs2_refcount_tree*, align 8
  store %struct.ocfs2_refcount_tree* %0, %struct.ocfs2_refcount_tree** %2, align 8
  %3 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %2, align 8
  %4 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %3, i32 0, i32 2
  %5 = call i32 @ocfs2_metadata_cache_exit(i32* %4)
  %6 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %2, align 8
  %7 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @OCFS2_SB(i32 %8)
  %10 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %2, align 8
  %11 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %10, i32 0, i32 0
  %12 = call i32 @ocfs2_simple_drop_lockres(i32 %9, i32* %11)
  %13 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %2, align 8
  %14 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %13, i32 0, i32 0
  %15 = call i32 @ocfs2_lock_res_free(i32* %14)
  %16 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %2, align 8
  %17 = call i32 @kfree(%struct.ocfs2_refcount_tree* %16)
  ret void
}

declare dso_local i32 @ocfs2_metadata_cache_exit(i32*) #1

declare dso_local i32 @ocfs2_simple_drop_lockres(i32, i32*) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_lock_res_free(i32*) #1

declare dso_local i32 @kfree(%struct.ocfs2_refcount_tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
