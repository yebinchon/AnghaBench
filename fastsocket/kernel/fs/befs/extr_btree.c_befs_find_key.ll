; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_btree.c_befs_find_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_btree.c_befs_find_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"---> befs_find_key() %s\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"<--- befs_find_key() %s not found\00", align 1
@BEFS_BT_NOT_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"first: %d, last: %d, mid: %d\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"<--- befs_find_key() found %s at %d\00", align 1
@BEFS_BT_MATCH = common dso_local global i32 0, align 4
@BEFS_BT_PARMATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.TYPE_7__*, i8*, i32*)* @befs_find_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @befs_find_key(%struct.super_block* %0, %struct.TYPE_7__* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.super_block*, %struct.super_block** %6, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load i32*, i32** %9, align 8
  store i32 0, i32* %21, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @strlen(i8* %22)
  store i32 %23, i32* %15, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %11, align 4
  %29 = load %struct.super_block*, %struct.super_block** %6, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i8* @befs_bt_get_key(%struct.super_block* %29, %struct.TYPE_7__* %30, i32 %31, i32* %14)
  store i8* %32, i8** %16, align 8
  %33 = load i8*, i8** %16, align 8
  %34 = load i32, i32* %14, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* %15, align 4
  %37 = call i32 @befs_compare_strings(i8* %33, i32 %34, i8* %35, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %4
  %41 = load %struct.super_block*, %struct.super_block** %6, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  %44 = load i32, i32* @BEFS_BT_NOT_FOUND, align 4
  store i32 %44, i32* %5, align 4
  br label %125

45:                                               ; preds = %4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %47 = call i32* @befs_bt_valarray(%struct.TYPE_7__* %46)
  store i32* %47, i32** %17, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %96, %45
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %97

52:                                               ; preds = %48
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %53, %54
  %56 = sdiv i32 %55, 2
  store i32 %56, i32* %12, align 4
  %57 = load %struct.super_block*, %struct.super_block** %6, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %59, i32 %60)
  %62 = load %struct.super_block*, %struct.super_block** %6, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i8* @befs_bt_get_key(%struct.super_block* %62, %struct.TYPE_7__* %63, i32 %64, i32* %14)
  store i8* %65, i8** %16, align 8
  %66 = load i8*, i8** %16, align 8
  %67 = load i32, i32* %14, align 4
  %68 = load i8*, i8** %8, align 8
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @befs_compare_strings(i8* %66, i32 %67, i8* %68, i32 %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %52
  %74 = load %struct.super_block*, %struct.super_block** %6, align 8
  %75 = load i8*, i8** %16, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %74, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %75, i32 %76)
  %78 = load %struct.super_block*, %struct.super_block** %6, align 8
  %79 = load i32*, i32** %17, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @fs64_to_cpu(%struct.super_block* %78, i32 %83)
  %85 = load i32*, i32** %9, align 8
  store i32 %84, i32* %85, align 4
  %86 = load i32, i32* @BEFS_BT_MATCH, align 4
  store i32 %86, i32* %5, align 4
  br label %125

87:                                               ; preds = %52
  %88 = load i32, i32* %13, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* %12, align 4
  %92 = sub nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %96

93:                                               ; preds = %87
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %93, %90
  br label %48

97:                                               ; preds = %48
  %98 = load i32, i32* %13, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %97
  %101 = load %struct.super_block*, %struct.super_block** %6, align 8
  %102 = load i32*, i32** %17, align 8
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @fs64_to_cpu(%struct.super_block* %101, i32 %107)
  %109 = load i32*, i32** %9, align 8
  store i32 %108, i32* %109, align 4
  br label %119

110:                                              ; preds = %97
  %111 = load %struct.super_block*, %struct.super_block** %6, align 8
  %112 = load i32*, i32** %17, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @fs64_to_cpu(%struct.super_block* %111, i32 %116)
  %118 = load i32*, i32** %9, align 8
  store i32 %117, i32* %118, align 4
  br label %119

119:                                              ; preds = %110, %100
  %120 = load %struct.super_block*, %struct.super_block** %6, align 8
  %121 = load i8*, i8** %16, align 8
  %122 = load i32, i32* %12, align 4
  %123 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %120, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %121, i32 %122)
  %124 = load i32, i32* @BEFS_BT_PARMATCH, align 4
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %119, %73, %40
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i32 @befs_debug(%struct.super_block*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @befs_bt_get_key(%struct.super_block*, %struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @befs_compare_strings(i8*, i32, i8*, i32) #1

declare dso_local i32* @befs_bt_valarray(%struct.TYPE_7__*) #1

declare dso_local i32 @fs64_to_cpu(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
