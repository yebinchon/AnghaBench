; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_datastream.c_befs_read_lsymlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_datastream.c_befs_read_lsymlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"---> befs_read_lsymlink() length: %Lu\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"BeFS: Error reading datastream block starting from %Lu\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"<--- befs_read_lsymlink() ERROR\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"<--- befs_read_lsymlink() read %u bytes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @befs_read_lsymlink(%struct.super_block* %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.buffer_head*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  %13 = load %struct.super_block*, %struct.super_block** %6, align 8
  %14 = load i64, i64* %9, align 8
  %15 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %13, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %14)
  br label %16

16:                                               ; preds = %52, %4
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %67

20:                                               ; preds = %16
  %21 = load %struct.super_block*, %struct.super_block** %6, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i64, i64* %10, align 8
  %24 = call %struct.buffer_head* @befs_read_datastream(%struct.super_block* %21, i32* %22, i64 %23, i32* null)
  store %struct.buffer_head* %24, %struct.buffer_head** %12, align 8
  %25 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %26 = icmp ne %struct.buffer_head* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = load %struct.super_block*, %struct.super_block** %6, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @befs_error(%struct.super_block* %28, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = load %struct.super_block*, %struct.super_block** %6, align 8
  %32 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i64, i64* %10, align 8
  store i64 %33, i64* %5, align 8
  br label %72

34:                                               ; preds = %20
  %35 = load i64, i64* %10, align 8
  %36 = load %struct.super_block*, %struct.super_block** %6, align 8
  %37 = call %struct.TYPE_2__* @BEFS_SB(%struct.super_block* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %35, %39
  %41 = load i64, i64* %9, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load %struct.super_block*, %struct.super_block** %6, align 8
  %45 = call %struct.TYPE_2__* @BEFS_SB(%struct.super_block* %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  br label %52

48:                                               ; preds = %34
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = sub nsw i64 %49, %50
  br label %52

52:                                               ; preds = %48, %43
  %53 = phi i64 [ %47, %43 ], [ %51, %48 ]
  store i64 %53, i64* %11, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load i64, i64* %10, align 8
  %56 = getelementptr i8, i8* %54, i64 %55
  %57 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %58 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* %11, align 8
  %61 = call i32 @memcpy(i8* %56, i32 %59, i64 %60)
  %62 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %63 = call i32 @brelse(%struct.buffer_head* %62)
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* %10, align 8
  %66 = add nsw i64 %65, %64
  store i64 %66, i64* %10, align 8
  br label %16

67:                                               ; preds = %16
  %68 = load %struct.super_block*, %struct.super_block** %6, align 8
  %69 = load i64, i64* %10, align 8
  %70 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %68, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i64 %69)
  %71 = load i64, i64* %10, align 8
  store i64 %71, i64* %5, align 8
  br label %72

72:                                               ; preds = %67, %27
  %73 = load i64, i64* %5, align 8
  ret i64 %73
}

declare dso_local i32 @befs_debug(%struct.super_block*, i8*, ...) #1

declare dso_local %struct.buffer_head* @befs_read_datastream(%struct.super_block*, i32*, i64, i32*) #1

declare dso_local i32 @befs_error(%struct.super_block*, i8*, i64) #1

declare dso_local %struct.TYPE_2__* @BEFS_SB(%struct.super_block*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
