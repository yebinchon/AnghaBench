; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_io.c_befs_bread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_io.c_befs_bread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.super_block = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"---> Enter befs_read() %Lu\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to read block %lu\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"<--- befs_read()\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"<--- befs_read() ERROR\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer_head* @befs_bread(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %6, align 8
  %7 = load %struct.super_block*, %struct.super_block** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.buffer_head* @sb_bread(%struct.super_block* %10, i32 %11)
  store %struct.buffer_head* %12, %struct.buffer_head** %6, align 8
  %13 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %14 = icmp eq %struct.buffer_head* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.super_block*, %struct.super_block** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @befs_error(%struct.super_block* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.super_block*, %struct.super_block** %4, align 8
  %21 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %22 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  store %struct.buffer_head* %22, %struct.buffer_head** %3, align 8
  br label %26

23:                                               ; preds = %15
  %24 = load %struct.super_block*, %struct.super_block** %4, align 8
  %25 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store %struct.buffer_head* null, %struct.buffer_head** %3, align 8
  br label %26

26:                                               ; preds = %23, %19
  %27 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  ret %struct.buffer_head* %27
}

declare dso_local i32 @befs_debug(%struct.super_block*, i8*, ...) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i32) #1

declare dso_local i32 @befs_error(%struct.super_block*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
