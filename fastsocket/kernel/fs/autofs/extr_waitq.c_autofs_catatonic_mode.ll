; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_waitq.c_autofs_catatonic_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_waitq.c_autofs_catatonic_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autofs_sb_info = type { i32, i32, i32*, %struct.autofs_wait_queue* }
%struct.autofs_wait_queue = type { i32, i32*, i32, %struct.autofs_wait_queue* }

@.str = private unnamed_addr constant [33 x i8] c"autofs: entering catatonic mode\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @autofs_catatonic_mode(%struct.autofs_sb_info* %0) #0 {
  %2 = alloca %struct.autofs_sb_info*, align 8
  %3 = alloca %struct.autofs_wait_queue*, align 8
  %4 = alloca %struct.autofs_wait_queue*, align 8
  store %struct.autofs_sb_info* %0, %struct.autofs_sb_info** %2, align 8
  %5 = call i32 @DPRINTK(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %2, align 8
  %7 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %2, align 8
  %9 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %8, i32 0, i32 3
  %10 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %9, align 8
  store %struct.autofs_wait_queue* %10, %struct.autofs_wait_queue** %3, align 8
  %11 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %2, align 8
  %12 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %11, i32 0, i32 3
  store %struct.autofs_wait_queue* null, %struct.autofs_wait_queue** %12, align 8
  br label %13

13:                                               ; preds = %16, %1
  %14 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %3, align 8
  %15 = icmp ne %struct.autofs_wait_queue* %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %13
  %17 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %3, align 8
  %18 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %17, i32 0, i32 3
  %19 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %18, align 8
  store %struct.autofs_wait_queue* %19, %struct.autofs_wait_queue** %4, align 8
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  %22 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %3, align 8
  %23 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %3, align 8
  %25 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @kfree(i32* %26)
  %28 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %3, align 8
  %29 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  %30 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %3, align 8
  %31 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %30, i32 0, i32 0
  %32 = call i32 @wake_up(i32* %31)
  %33 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %4, align 8
  store %struct.autofs_wait_queue* %33, %struct.autofs_wait_queue** %3, align 8
  br label %13

34:                                               ; preds = %13
  %35 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %2, align 8
  %36 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @fput(i32* %37)
  %39 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %2, align 8
  %40 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %39, i32 0, i32 2
  store i32* null, i32** %40, align 8
  %41 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %2, align 8
  %42 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %41, i32 0, i32 1
  %43 = call i32 @autofs_hash_dputall(i32* %42)
  ret void
}

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @fput(i32*) #1

declare dso_local i32 @autofs_hash_dputall(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
