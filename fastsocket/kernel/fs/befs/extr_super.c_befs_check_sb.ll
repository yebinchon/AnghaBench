; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_super.c_befs_check_sb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_super.c_befs_check_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i32, i32, i64, i64 }

@BEFS_SUPER_MAGIC1 = common dso_local global i64 0, align 8
@BEFS_SUPER_MAGIC2 = common dso_local global i64 0, align 8
@BEFS_SUPER_MAGIC3 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"invalid magic header\00", align 1
@BEFS_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid blocksize: %u\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"blocksize(%u) cannot be largerthan system pagesize(%lu)\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"block_shift disagrees with block_size. Corruption likely.\00", align 1
@.str.4 = private unnamed_addr constant [119 x i8] c"Filesystem not clean! There are blocks in the journal. You must boot into BeOS and mount this volume to make it clean.\00", align 1
@BEFS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @befs_check_sb(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %5 = load %struct.super_block*, %struct.super_block** %3, align 8
  %6 = call %struct.TYPE_3__* @BEFS_SB(%struct.super_block* %5)
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BEFS_SUPER_MAGIC1, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %24, label %12

12:                                               ; preds = %1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @BEFS_SUPER_MAGIC2, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BEFS_SUPER_MAGIC3, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18, %12, %1
  %25 = load %struct.super_block*, %struct.super_block** %3, align 8
  %26 = call i32 (%struct.super_block*, i8*, ...) @befs_error(%struct.super_block* %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @BEFS_ERR, align 4
  store i32 %27, i32* %2, align 4
  br label %96

28:                                               ; preds = %18
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 1024
  br i1 %32, label %33, label %55

33:                                               ; preds = %28
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 2048
  br i1 %37, label %38, label %55

38:                                               ; preds = %33
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 4096
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 8192
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.super_block*, %struct.super_block** %3, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (%struct.super_block*, i8*, ...) @befs_error(%struct.super_block* %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @BEFS_ERR, align 4
  store i32 %54, i32* %2, align 4
  br label %96

55:                                               ; preds = %43, %38, %33, %28
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @PAGE_SIZE, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %55
  %62 = load %struct.super_block*, %struct.super_block** %3, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @PAGE_SIZE, align 4
  %67 = call i32 (%struct.super_block*, i8*, ...) @befs_error(%struct.super_block* %62, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 %66)
  %68 = load i32, i32* @BEFS_ERR, align 4
  store i32 %68, i32* %2, align 4
  br label %96

69:                                               ; preds = %55
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 1, %72
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %73, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %69
  %79 = load %struct.super_block*, %struct.super_block** %3, align 8
  %80 = call i32 (%struct.super_block*, i8*, ...) @befs_error(%struct.super_block* %79, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  %81 = load i32, i32* @BEFS_ERR, align 4
  store i32 %81, i32* %2, align 4
  br label %96

82:                                               ; preds = %69
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 6
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %85, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %82
  %91 = load %struct.super_block*, %struct.super_block** %3, align 8
  %92 = call i32 (%struct.super_block*, i8*, ...) @befs_error(%struct.super_block* %91, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.4, i64 0, i64 0))
  %93 = load i32, i32* @BEFS_ERR, align 4
  store i32 %93, i32* %2, align 4
  br label %96

94:                                               ; preds = %82
  %95 = load i32, i32* @BEFS_OK, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %94, %90, %78, %61, %48, %24
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.TYPE_3__* @BEFS_SB(%struct.super_block*) #1

declare dso_local i32 @befs_error(%struct.super_block*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
