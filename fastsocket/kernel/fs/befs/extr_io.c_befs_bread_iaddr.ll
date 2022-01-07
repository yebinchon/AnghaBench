; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_io.c_befs_bread_iaddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_io.c_befs_bread_iaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.super_block = type { i32 }
%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [44 x i8] c"---> Enter befs_read_iaddr() [%u, %hu, %hu]\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"BEFS: Invalid allocation group %u, max is %u\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"befs_read_iaddr: offset = %lu\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed to read block %lu\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"<--- befs_read_iaddr()\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"<--- befs_read_iaddr() ERROR\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer_head* @befs_bread_iaddr(%struct.super_block* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = bitcast %struct.TYPE_7__* %5 to { i64, i64 }*
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 0
  store i64 %1, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 1
  store i64 %2, i64* %12, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.super_block*, %struct.super_block** %6, align 8
  %14 = call %struct.TYPE_6__* @BEFS_SB(%struct.super_block* %13)
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %9, align 8
  %15 = load %struct.super_block*, %struct.super_block** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %15, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %17, i32 %19, i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %3
  %30 = load %struct.super_block*, %struct.super_block** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 (%struct.super_block*, i8*, i64, ...) @befs_error(%struct.super_block* %30, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %32, i64 %35)
  br label %57

37:                                               ; preds = %3
  %38 = load %struct.super_block*, %struct.super_block** %6, align 8
  %39 = call i32 @iaddr2blockno(%struct.super_block* %38, %struct.TYPE_7__* %5)
  store i32 %39, i32* %8, align 4
  %40 = load %struct.super_block*, %struct.super_block** %6, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load %struct.super_block*, %struct.super_block** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call %struct.buffer_head* @sb_bread(%struct.super_block* %43, i32 %44)
  store %struct.buffer_head* %45, %struct.buffer_head** %7, align 8
  %46 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %47 = icmp eq %struct.buffer_head* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %37
  %49 = load %struct.super_block*, %struct.super_block** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = call i32 (%struct.super_block*, i8*, i64, ...) @befs_error(%struct.super_block* %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %51)
  br label %57

53:                                               ; preds = %37
  %54 = load %struct.super_block*, %struct.super_block** %6, align 8
  %55 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %56 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* %56, %struct.buffer_head** %4, align 8
  br label %60

57:                                               ; preds = %48, %29
  %58 = load %struct.super_block*, %struct.super_block** %6, align 8
  %59 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store %struct.buffer_head* null, %struct.buffer_head** %4, align 8
  br label %60

60:                                               ; preds = %57, %53
  %61 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  ret %struct.buffer_head* %61
}

declare dso_local %struct.TYPE_6__* @BEFS_SB(%struct.super_block*) #1

declare dso_local i32 @befs_debug(%struct.super_block*, i8*, ...) #1

declare dso_local i32 @befs_error(%struct.super_block*, i8*, i64, ...) #1

declare dso_local i32 @iaddr2blockno(%struct.super_block*, %struct.TYPE_7__*) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
