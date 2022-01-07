; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jbd/extr_checkpoint.c___buffer_relink_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jbd/extr_checkpoint.c___buffer_relink_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.journal_head = type { %struct.journal_head*, %struct.journal_head*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.journal_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.journal_head*)* @__buffer_relink_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__buffer_relink_io(%struct.journal_head* %0) #0 {
  %2 = alloca %struct.journal_head*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  store %struct.journal_head* %0, %struct.journal_head** %2, align 8
  %4 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %5 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  store %struct.TYPE_2__* %6, %struct.TYPE_2__** %3, align 8
  %7 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %8 = call i32 @__buffer_unlink_first(%struct.journal_head* %7)
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.journal_head*, %struct.journal_head** %10, align 8
  %12 = icmp ne %struct.journal_head* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %15 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %16 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %15, i32 0, i32 0
  store %struct.journal_head* %14, %struct.journal_head** %16, align 8
  %17 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %18 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %17, i32 0, i32 1
  store %struct.journal_head* %14, %struct.journal_head** %18, align 8
  br label %42

19:                                               ; preds = %1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.journal_head*, %struct.journal_head** %21, align 8
  %23 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %24 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %23, i32 0, i32 1
  store %struct.journal_head* %22, %struct.journal_head** %24, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.journal_head*, %struct.journal_head** %26, align 8
  %28 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %27, i32 0, i32 0
  %29 = load %struct.journal_head*, %struct.journal_head** %28, align 8
  %30 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %31 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %30, i32 0, i32 0
  store %struct.journal_head* %29, %struct.journal_head** %31, align 8
  %32 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %33 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %34 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %33, i32 0, i32 0
  %35 = load %struct.journal_head*, %struct.journal_head** %34, align 8
  %36 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %35, i32 0, i32 1
  store %struct.journal_head* %32, %struct.journal_head** %36, align 8
  %37 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %38 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %39 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %38, i32 0, i32 1
  %40 = load %struct.journal_head*, %struct.journal_head** %39, align 8
  %41 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %40, i32 0, i32 0
  store %struct.journal_head* %37, %struct.journal_head** %41, align 8
  br label %42

42:                                               ; preds = %19, %13
  %43 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store %struct.journal_head* %43, %struct.journal_head** %45, align 8
  ret void
}

declare dso_local i32 @__buffer_unlink_first(%struct.journal_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
