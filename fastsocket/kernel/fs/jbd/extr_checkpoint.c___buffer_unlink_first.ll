; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jbd/extr_checkpoint.c___buffer_unlink_first.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jbd/extr_checkpoint.c___buffer_unlink_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.journal_head = type { %struct.journal_head*, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { %struct.journal_head* }
%struct.TYPE_4__ = type { %struct.journal_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.journal_head*)* @__buffer_unlink_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__buffer_unlink_first(%struct.journal_head* %0) #0 {
  %2 = alloca %struct.journal_head*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.journal_head* %0, %struct.journal_head** %2, align 8
  %4 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %5 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %4, i32 0, i32 2
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %3, align 8
  %7 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %8 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %11 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %10, i32 0, i32 0
  %12 = load %struct.journal_head*, %struct.journal_head** %11, align 8
  %13 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %12, i32 0, i32 1
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %13, align 8
  %14 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %15 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %14, i32 0, i32 0
  %16 = load %struct.journal_head*, %struct.journal_head** %15, align 8
  %17 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %18 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store %struct.journal_head* %16, %struct.journal_head** %20, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.journal_head*, %struct.journal_head** %22, align 8
  %24 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %25 = icmp eq %struct.journal_head* %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %1
  %27 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %28 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %27, i32 0, i32 0
  %29 = load %struct.journal_head*, %struct.journal_head** %28, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store %struct.journal_head* %29, %struct.journal_head** %31, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.journal_head*, %struct.journal_head** %33, align 8
  %35 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %36 = icmp eq %struct.journal_head* %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store %struct.journal_head* null, %struct.journal_head** %39, align 8
  br label %40

40:                                               ; preds = %37, %26
  br label %41

41:                                               ; preds = %40, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
