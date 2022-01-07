; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_datastream.c_befs_read_datastream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_datastream.c_befs_read_datastream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.super_block = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"---> befs_read_datastream() %Lu\00", align 1
@BEFS_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"BeFS: Error finding disk addr of block %lu\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"<--- befs_read_datastream() ERROR\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"BeFS: Error reading block %lu from datastream\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"<--- befs_read_datastream() read data, starting at %Lu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer_head* @befs_read_datastream(%struct.super_block* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %10, align 8
  %13 = load %struct.super_block*, %struct.super_block** %6, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.super_block*, %struct.super_block** %6, align 8
  %18 = call %struct.TYPE_2__* @BEFS_SB(%struct.super_block* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %16, %20
  store i32 %21, i32* %12, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.super_block*, %struct.super_block** %6, align 8
  %28 = call %struct.TYPE_2__* @BEFS_SB(%struct.super_block* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %26, %30
  %32 = sub nsw i32 %25, %31
  %33 = load i32*, i32** %9, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %24, %4
  %35 = load %struct.super_block*, %struct.super_block** %6, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call i64 @befs_fblock2brun(%struct.super_block* %35, i32* %36, i32 %37, i32* %11)
  %39 = load i64, i64* @BEFS_OK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load %struct.super_block*, %struct.super_block** %6, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @befs_error(%struct.super_block* %42, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.super_block*, %struct.super_block** %6, align 8
  %46 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store %struct.buffer_head* null, %struct.buffer_head** %5, align 8
  br label %62

47:                                               ; preds = %34
  %48 = load %struct.super_block*, %struct.super_block** %6, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call %struct.buffer_head* @befs_bread_iaddr(%struct.super_block* %48, i32 %49)
  store %struct.buffer_head* %50, %struct.buffer_head** %10, align 8
  %51 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %52 = icmp ne %struct.buffer_head* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %47
  %54 = load %struct.super_block*, %struct.super_block** %6, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @befs_error(%struct.super_block* %54, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  store %struct.buffer_head* null, %struct.buffer_head** %5, align 8
  br label %62

57:                                               ; preds = %47
  %58 = load %struct.super_block*, %struct.super_block** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %58, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  %61 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  store %struct.buffer_head* %61, %struct.buffer_head** %5, align 8
  br label %62

62:                                               ; preds = %57, %53, %41
  %63 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  ret %struct.buffer_head* %63
}

declare dso_local i32 @befs_debug(%struct.super_block*, i8*, ...) #1

declare dso_local %struct.TYPE_2__* @BEFS_SB(%struct.super_block*) #1

declare dso_local i64 @befs_fblock2brun(%struct.super_block*, i32*, i32, i32*) #1

declare dso_local i32 @befs_error(%struct.super_block*, i8*, i32) #1

declare dso_local %struct.buffer_head* @befs_bread_iaddr(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
