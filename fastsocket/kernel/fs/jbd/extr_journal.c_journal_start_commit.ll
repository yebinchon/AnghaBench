; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jbd/extr_journal.c_journal_start_commit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jbd/extr_journal.c_journal_start_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @journal_start_commit(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = icmp ne %struct.TYPE_7__* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @__log_start_commit(%struct.TYPE_8__* %20, i32 %21)
  %23 = load i32*, i32** %4, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %14
  %26 = load i32, i32* %6, align 4
  %27 = load i32*, i32** %4, align 8
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %14
  store i32 1, i32* %5, align 4
  br label %46

29:                                               ; preds = %2
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = icmp ne %struct.TYPE_6__* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load i32*, i32** %4, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %4, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %37, %34
  store i32 1, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %29
  br label %46

46:                                               ; preds = %45, %28
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock(i32* %48)
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__log_start_commit(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
