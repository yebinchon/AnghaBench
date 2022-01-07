; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_waitq.c_autofs4_catatonic_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_waitq.c_autofs4_catatonic_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autofs_sb_info = type { i32, i32, i32, i32*, %struct.autofs_wait_queue* }
%struct.autofs_wait_queue = type { i32, i32, %struct.TYPE_2__, i32, %struct.autofs_wait_queue* }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [24 x i8] c"entering catatonic mode\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @autofs4_catatonic_mode(%struct.autofs_sb_info* %0) #0 {
  %2 = alloca %struct.autofs_sb_info*, align 8
  %3 = alloca %struct.autofs_wait_queue*, align 8
  %4 = alloca %struct.autofs_wait_queue*, align 8
  store %struct.autofs_sb_info* %0, %struct.autofs_sb_info** %2, align 8
  %5 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %2, align 8
  %6 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %5, i32 0, i32 2
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %2, align 8
  %9 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %2, align 8
  %14 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %13, i32 0, i32 2
  %15 = call i32 @mutex_unlock(i32* %14)
  br label %71

16:                                               ; preds = %1
  %17 = call i32 @DPRINTK(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %2, align 8
  %19 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %2, align 8
  %21 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %20, i32 0, i32 4
  %22 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %21, align 8
  store %struct.autofs_wait_queue* %22, %struct.autofs_wait_queue** %3, align 8
  %23 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %2, align 8
  %24 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %23, i32 0, i32 4
  store %struct.autofs_wait_queue* null, %struct.autofs_wait_queue** %24, align 8
  br label %25

25:                                               ; preds = %50, %16
  %26 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %3, align 8
  %27 = icmp ne %struct.autofs_wait_queue* %26, null
  br i1 %27, label %28, label %59

28:                                               ; preds = %25
  %29 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %3, align 8
  %30 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %29, i32 0, i32 4
  %31 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %30, align 8
  store %struct.autofs_wait_queue* %31, %struct.autofs_wait_queue** %4, align 8
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  %34 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %3, align 8
  %35 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %3, align 8
  %37 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %28
  %42 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %3, align 8
  %43 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @kfree(i32* %45)
  %47 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %3, align 8
  %48 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %41, %28
  %51 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %3, align 8
  %52 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %52, align 4
  %55 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %3, align 8
  %56 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %55, i32 0, i32 0
  %57 = call i32 @wake_up_interruptible(i32* %56)
  %58 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %4, align 8
  store %struct.autofs_wait_queue* %58, %struct.autofs_wait_queue** %3, align 8
  br label %25

59:                                               ; preds = %25
  %60 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %2, align 8
  %61 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @fput(i32* %62)
  %64 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %2, align 8
  %65 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %64, i32 0, i32 3
  store i32* null, i32** %65, align 8
  %66 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %2, align 8
  %67 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %66, i32 0, i32 1
  store i32 -1, i32* %67, align 4
  %68 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %2, align 8
  %69 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %68, i32 0, i32 2
  %70 = call i32 @mutex_unlock(i32* %69)
  br label %71

71:                                               ; preds = %59, %12
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @fput(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
