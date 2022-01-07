; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ulist.c_ulist_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ulist.c_ulist_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ulist_node = type { i32 }
%struct.ulist = type { i64, %struct.ulist_node* }
%struct.ulist_iterator = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ulist_node* @ulist_next(%struct.ulist* %0, %struct.ulist_iterator* %1) #0 {
  %3 = alloca %struct.ulist_node*, align 8
  %4 = alloca %struct.ulist*, align 8
  %5 = alloca %struct.ulist_iterator*, align 8
  store %struct.ulist* %0, %struct.ulist** %4, align 8
  store %struct.ulist_iterator* %1, %struct.ulist_iterator** %5, align 8
  %6 = load %struct.ulist*, %struct.ulist** %4, align 8
  %7 = getelementptr inbounds %struct.ulist, %struct.ulist* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.ulist_node* null, %struct.ulist_node** %3, align 8
  br label %34

11:                                               ; preds = %2
  %12 = load %struct.ulist_iterator*, %struct.ulist_iterator** %5, align 8
  %13 = getelementptr inbounds %struct.ulist_iterator, %struct.ulist_iterator* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %11
  %17 = load %struct.ulist_iterator*, %struct.ulist_iterator** %5, align 8
  %18 = getelementptr inbounds %struct.ulist_iterator, %struct.ulist_iterator* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ulist*, %struct.ulist** %4, align 8
  %21 = getelementptr inbounds %struct.ulist, %struct.ulist* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16, %11
  store %struct.ulist_node* null, %struct.ulist_node** %3, align 8
  br label %34

25:                                               ; preds = %16
  %26 = load %struct.ulist*, %struct.ulist** %4, align 8
  %27 = getelementptr inbounds %struct.ulist, %struct.ulist* %26, i32 0, i32 1
  %28 = load %struct.ulist_node*, %struct.ulist_node** %27, align 8
  %29 = load %struct.ulist_iterator*, %struct.ulist_iterator** %5, align 8
  %30 = getelementptr inbounds %struct.ulist_iterator, %struct.ulist_iterator* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %30, align 8
  %33 = getelementptr inbounds %struct.ulist_node, %struct.ulist_node* %28, i64 %31
  store %struct.ulist_node* %33, %struct.ulist_node** %3, align 8
  br label %34

34:                                               ; preds = %25, %24, %10
  %35 = load %struct.ulist_node*, %struct.ulist_node** %3, align 8
  ret %struct.ulist_node* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
