; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_inode.c_autofs4_free_ino.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_inode.c_autofs4_free_ino.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autofs_info = type { i32 (%struct.autofs_info*)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @autofs4_free_ino(%struct.autofs_info* %0) #0 {
  %2 = alloca %struct.autofs_info*, align 8
  store %struct.autofs_info* %0, %struct.autofs_info** %2, align 8
  %3 = load %struct.autofs_info*, %struct.autofs_info** %2, align 8
  %4 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.autofs_info*, %struct.autofs_info** %2, align 8
  %9 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32* null, i32** %11, align 8
  %12 = load %struct.autofs_info*, %struct.autofs_info** %2, align 8
  %13 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %12, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %13, align 8
  br label %14

14:                                               ; preds = %7, %1
  %15 = load %struct.autofs_info*, %struct.autofs_info** %2, align 8
  %16 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %15, i32 0, i32 0
  %17 = load i32 (%struct.autofs_info*)*, i32 (%struct.autofs_info*)** %16, align 8
  %18 = icmp ne i32 (%struct.autofs_info*)* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.autofs_info*, %struct.autofs_info** %2, align 8
  %21 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %20, i32 0, i32 0
  %22 = load i32 (%struct.autofs_info*)*, i32 (%struct.autofs_info*)** %21, align 8
  %23 = load %struct.autofs_info*, %struct.autofs_info** %2, align 8
  %24 = call i32 %22(%struct.autofs_info* %23)
  br label %25

25:                                               ; preds = %19, %14
  %26 = load %struct.autofs_info*, %struct.autofs_info** %2, align 8
  %27 = call i32 @kfree(%struct.autofs_info* %26)
  ret void
}

declare dso_local i32 @kfree(%struct.autofs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
