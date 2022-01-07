; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_symlink.c_udf_pc_to_char.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_symlink.c_udf_pc_to_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.pathComponent = type { i32, i64, i32 }

@.str = private unnamed_addr constant [4 x i8] c"../\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, i8*, i32, i8*)* @udf_pc_to_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udf_pc_to_char(%struct.super_block* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.pathComponent*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %10, align 4
  %12 = load i8*, i8** %8, align 8
  store i8* %12, i8** %11, align 8
  br label %13

13:                                               ; preds = %61, %4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %70

17:                                               ; preds = %13
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = bitcast i8* %21 to %struct.pathComponent*
  store %struct.pathComponent* %22, %struct.pathComponent** %9, align 8
  %23 = load %struct.pathComponent*, %struct.pathComponent** %9, align 8
  %24 = getelementptr inbounds %struct.pathComponent, %struct.pathComponent* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %61 [
    i32 1, label %26
    i32 3, label %36
    i32 4, label %41
    i32 5, label %46
  ]

26:                                               ; preds = %17
  %27 = load %struct.pathComponent*, %struct.pathComponent** %9, align 8
  %28 = getelementptr inbounds %struct.pathComponent, %struct.pathComponent* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i8*, i8** %8, align 8
  store i8* %32, i8** %11, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %11, align 8
  store i8 47, i8* %33, align 1
  br label %35

35:                                               ; preds = %31, %26
  br label %61

36:                                               ; preds = %17
  %37 = load i8*, i8** %11, align 8
  %38 = call i32 @memcpy(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %39 = load i8*, i8** %11, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 3
  store i8* %40, i8** %11, align 8
  br label %61

41:                                               ; preds = %17
  %42 = load i8*, i8** %11, align 8
  %43 = call i32 @memcpy(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %44 = load i8*, i8** %11, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  store i8* %45, i8** %11, align 8
  br label %61

46:                                               ; preds = %17
  %47 = load %struct.super_block*, %struct.super_block** %5, align 8
  %48 = load %struct.pathComponent*, %struct.pathComponent** %9, align 8
  %49 = getelementptr inbounds %struct.pathComponent, %struct.pathComponent* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load %struct.pathComponent*, %struct.pathComponent** %9, align 8
  %53 = getelementptr inbounds %struct.pathComponent, %struct.pathComponent* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @udf_get_filename(%struct.super_block* %47, i32 %50, i8* %51, i64 %54)
  %56 = load i8*, i8** %11, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8* %58, i8** %11, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %11, align 8
  store i8 47, i8* %59, align 1
  br label %61

61:                                               ; preds = %17, %46, %41, %36, %35
  %62 = load %struct.pathComponent*, %struct.pathComponent** %9, align 8
  %63 = getelementptr inbounds %struct.pathComponent, %struct.pathComponent* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add i64 24, %64
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = add i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %10, align 4
  br label %13

70:                                               ; preds = %13
  %71 = load i8*, i8** %11, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = icmp ugt i8* %71, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i8*, i8** %11, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 -1
  store i8 0, i8* %77, align 1
  br label %81

78:                                               ; preds = %70
  %79 = load i8*, i8** %11, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  store i8 0, i8* %80, align 1
  br label %81

81:                                               ; preds = %78, %75
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @udf_get_filename(%struct.super_block*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
