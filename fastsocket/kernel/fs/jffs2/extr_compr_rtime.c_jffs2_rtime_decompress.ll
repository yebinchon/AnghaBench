; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_compr_rtime.c_jffs2_rtime_decompress.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_compr_rtime.c_jffs2_rtime_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i8*)* @jffs2_rtime_decompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jffs2_rtime_decompress(i8* %0, i8* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca [256 x i16], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = getelementptr inbounds [256 x i16], [256 x i16]* %11, i64 0, i64 0
  %18 = call i32 @memset(i16* %17, i32 0, i32 512)
  br label %19

19:                                               ; preds = %95, %5
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %96

23:                                               ; preds = %19
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %13, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %13, align 4
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %14, align 1
  %30 = load i8, i8* %14, align 1
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %12, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %12, align 4
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  store i8 %30, i8* %35, align 1
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %13, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %13, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  store i32 %42, i32* %16, align 4
  %43 = load i8, i8* %14, align 1
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds [256 x i16], [256 x i16]* %11, i64 0, i64 %44
  %46 = load i16, i16* %45, align 2
  %47 = sext i16 %46 to i32
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %12, align 4
  %49 = trunc i32 %48 to i16
  %50 = load i8, i8* %14, align 1
  %51 = zext i8 %50 to i64
  %52 = getelementptr inbounds [256 x i16], [256 x i16]* %11, i64 0, i64 %51
  store i16 %49, i16* %52, align 2
  %53 = load i32, i32* %16, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %95

55:                                               ; preds = %23
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %16, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32, i32* %12, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %80

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %65, %61
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %62
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* %15, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %15, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = load i8*, i8** %7, align 8
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %12, align 4
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  store i8 %71, i8* %76, align 1
  %77 = load i32, i32* %16, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %16, align 4
  br label %62

79:                                               ; preds = %62
  br label %94

80:                                               ; preds = %55
  %81 = load i8*, i8** %7, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i8*, i8** %7, align 8
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = load i32, i32* %16, align 4
  %90 = call i32 @memcpy(i8* %84, i8* %88, i32 %89)
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %12, align 4
  br label %94

94:                                               ; preds = %80, %79
  br label %95

95:                                               ; preds = %94, %23
  br label %19

96:                                               ; preds = %19
  ret i32 0
}

declare dso_local i32 @memset(i16*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
