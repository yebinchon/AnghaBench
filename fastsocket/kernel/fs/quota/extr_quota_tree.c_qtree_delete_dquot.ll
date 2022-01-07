; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_quota_tree.c_qtree_delete_dquot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_quota_tree.c_qtree_delete_dquot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtree_mem_dqinfo = type { i32 }
%struct.dquot = type { i32 }

@QT_TREEOFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qtree_delete_dquot(%struct.qtree_mem_dqinfo* %0, %struct.dquot* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qtree_mem_dqinfo*, align 8
  %5 = alloca %struct.dquot*, align 8
  %6 = alloca i32, align 4
  store %struct.qtree_mem_dqinfo* %0, %struct.qtree_mem_dqinfo** %4, align 8
  store %struct.dquot* %1, %struct.dquot** %5, align 8
  %7 = load i32, i32* @QT_TREEOFF, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.dquot*, %struct.dquot** %5, align 8
  %9 = getelementptr inbounds %struct.dquot, %struct.dquot* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %17

13:                                               ; preds = %2
  %14 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %4, align 8
  %15 = load %struct.dquot*, %struct.dquot** %5, align 8
  %16 = call i32 @remove_tree(%struct.qtree_mem_dqinfo* %14, %struct.dquot* %15, i32* %6, i32 0)
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %13, %12
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @remove_tree(%struct.qtree_mem_dqinfo*, %struct.dquot*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
