; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_init_xattr_value_extent_tree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_init_xattr_value_extent_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_caching_info = type { i32 }
%struct.ocfs2_xattr_value_buf = type { i32, i32 }

@ocfs2_xattr_value_et_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_init_xattr_value_extent_tree(%struct.ocfs2_extent_tree* %0, %struct.ocfs2_caching_info* %1, %struct.ocfs2_xattr_value_buf* %2) #0 {
  %4 = alloca %struct.ocfs2_extent_tree*, align 8
  %5 = alloca %struct.ocfs2_caching_info*, align 8
  %6 = alloca %struct.ocfs2_xattr_value_buf*, align 8
  store %struct.ocfs2_extent_tree* %0, %struct.ocfs2_extent_tree** %4, align 8
  store %struct.ocfs2_caching_info* %1, %struct.ocfs2_caching_info** %5, align 8
  store %struct.ocfs2_xattr_value_buf* %2, %struct.ocfs2_xattr_value_buf** %6, align 8
  %7 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %4, align 8
  %8 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %5, align 8
  %9 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %6, align 8
  %10 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %6, align 8
  %13 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %6, align 8
  %16 = call i32 @__ocfs2_init_extent_tree(%struct.ocfs2_extent_tree* %7, %struct.ocfs2_caching_info* %8, i32 %11, i32 %14, %struct.ocfs2_xattr_value_buf* %15, i32* @ocfs2_xattr_value_et_ops)
  ret void
}

declare dso_local i32 @__ocfs2_init_extent_tree(%struct.ocfs2_extent_tree*, %struct.ocfs2_caching_info*, i32, i32, %struct.ocfs2_xattr_value_buf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
