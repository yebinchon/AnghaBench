; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/samples/install/extr_setup.c_select_partition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/samples/install/extr_setup.c_select_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8*, i32 }

@MAX_PARTS = common dso_local global i32 0, align 4
@num_partition = common dso_local global i32 0, align 4
@partitions = common dso_local global %struct.TYPE_2__* null, align 8
@Linux = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Linux partition with %d blocks\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32)* @select_partition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @select_partition(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* @MAX_PARTS, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca [40 x i8], i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load i32, i32* @MAX_PARTS, align 4
  %21 = mul nsw i32 %20, 2
  %22 = zext i32 %21 to i64
  %23 = alloca i8*, i64 %22, align 16
  store i64 %22, i64* %14, align 8
  %24 = load i32, i32* @MAX_PARTS, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %15, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %78, %4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @num_partition, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %81

31:                                               ; preds = %27
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @partitions, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @Linux, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %77

40:                                               ; preds = %31
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @partitions, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = mul nsw i32 %47, 2
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %23, i64 %49
  store i8* %46, i8** %50, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [40 x i8], [40 x i8]* %19, i64 %52
  %54 = getelementptr inbounds [40 x i8], [40 x i8]* %53, i64 0, i64 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @partitions, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @sprintf(i8* %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [40 x i8], [40 x i8]* %19, i64 %63
  %65 = getelementptr inbounds [40 x i8], [40 x i8]* %64, i64 0, i64 0
  %66 = load i32, i32* %10, align 4
  %67 = mul nsw i32 %66, 2
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %23, i64 %69
  store i8* %65, i8** %70, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %26, i64 %73
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %40, %31
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %27

81:                                               ; preds = %27
  %82 = load i8*, i8** %5, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %84, %85
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @dialog_menu(i8* %82, i8* %83, i32 %86, i32 %87, i32 %88, i32 %89, i8** %23)
  store i32 %90, i32* %11, align 4
  %91 = call i32 (...) @dialog_clear()
  %92 = load i32, i32* %11, align 4
  %93 = icmp sge i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %81
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %26, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %11, align 4
  br label %99

99:                                               ; preds = %94, %81
  %100 = load i32, i32* %11, align 4
  %101 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %101)
  ret i32 %100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @dialog_menu(i8*, i8*, i32, i32, i32, i32, i8**) #2

declare dso_local i32 @dialog_clear(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
