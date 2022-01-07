; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/isofs/extr_util.c_iso_date.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/isofs/extr_util.c_iso_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.iso_date.monlen = private unnamed_addr constant [12 x i32] [i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iso_date(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [12 x i32], align 16
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = sub nsw i32 %19, 70
  store i32 %20, i32* %5, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  store i32 %24, i32* %6, align 4
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 2
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  store i32 %28, i32* %7, align 4
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 3
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  store i32 %32, i32* %8, align 4
  %33 = load i8*, i8** %3, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 4
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  store i32 %36, i32* %9, align 4
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 5
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %2
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 6
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  store i32 %47, i32* %11, align 4
  br label %49

48:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  br label %49

49:                                               ; preds = %48, %43
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 0, i32* %12, align 4
  br label %126

53:                                               ; preds = %49
  %54 = bitcast [12 x i32]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %54, i8* align 16 bitcast ([12 x i32]* @__const.iso_date.monlen to i8*), i64 48, i1 false)
  %55 = load i32, i32* %5, align 4
  %56 = mul nsw i32 %55, 365
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp sgt i32 %57, 2
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  %62 = sdiv i32 %61, 4
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %13, align 4
  br label %65

65:                                               ; preds = %59, %53
  store i32 1, i32* %14, align 4
  br label %66

66:                                               ; preds = %78, %65
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %66
  %71 = load i32, i32* %14, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [12 x i32], [12 x i32]* %15, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %13, align 4
  br label %78

78:                                               ; preds = %70
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %14, align 4
  br label %66

81:                                               ; preds = %66
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 2
  %84 = srem i32 %83, 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load i32, i32* %6, align 4
  %88 = icmp sgt i32 %87, 2
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %13, align 4
  br label %92

92:                                               ; preds = %89, %86, %81
  %93 = load i32, i32* %7, align 4
  %94 = sub nsw i32 %93, 1
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = mul nsw i32 %97, 24
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %98, %99
  %101 = mul nsw i32 %100, 60
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %101, %102
  %104 = mul nsw i32 %103, 60
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %104, %105
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %11, align 4
  %108 = and i32 %107, 128
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %92
  %111 = load i32, i32* %11, align 4
  %112 = or i32 %111, -256
  store i32 %112, i32* %11, align 4
  br label %113

113:                                              ; preds = %110, %92
  %114 = load i32, i32* %11, align 4
  %115 = icmp sle i32 -52, %114
  br i1 %115, label %116, label %125

116:                                              ; preds = %113
  %117 = load i32, i32* %11, align 4
  %118 = icmp sle i32 %117, 52
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = load i32, i32* %11, align 4
  %121 = mul nsw i32 %120, 15
  %122 = mul nsw i32 %121, 60
  %123 = load i32, i32* %12, align 4
  %124 = sub nsw i32 %123, %122
  store i32 %124, i32* %12, align 4
  br label %125

125:                                              ; preds = %119, %116, %113
  br label %126

126:                                              ; preds = %125, %52
  %127 = load i32, i32* %12, align 4
  ret i32 %127
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
