; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_translate_to_user.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_translate_to_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmabuf = type { i32, i32, i32, i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmabuf*, i8*, i8*, i32)* @translate_to_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @translate_to_user(%struct.dmabuf* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dmabuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [12 x i8], align 1
  store %struct.dmabuf* %0, %struct.dmabuf** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %17 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 1
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %14, align 4
  %21 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %22 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 16
  br i1 %24, label %25, label %44

25:                                               ; preds = %4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %25
  %29 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %30 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load i8*, i8** %7, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i64 @copy_to_user(i8* %34, i8* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @EFAULT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %129

42:                                               ; preds = %33
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %5, align 4
  br label %129

44:                                               ; preds = %28, %25, %4
  %45 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %46 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %49 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %47, %50
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %12, align 4
  %54 = sdiv i32 %52, %53
  store i32 %54, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %122, %44
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %125

59:                                               ; preds = %55
  store i32 0, i32* %11, align 4
  br label %60

60:                                               ; preds = %97, %59
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %63 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %100

66:                                               ; preds = %60
  %67 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %68 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 8
  br i1 %70, label %71, label %83

71:                                               ; preds = %66
  %72 = load i8*, i8** %8, align 8
  %73 = load i32, i32* %11, align 4
  %74 = mul nsw i32 %73, 2
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  %77 = bitcast i8* %76 to i32*
  %78 = load i32, i32* %77, align 4
  %79 = call signext i8 @S16_TO_U8(i32 %78)
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [12 x i8], [12 x i8]* %15, i64 0, i64 %81
  store i8 %79, i8* %82, align 1
  br label %96

83:                                               ; preds = %66
  %84 = load i8*, i8** %8, align 8
  %85 = load i32, i32* %11, align 4
  %86 = mul nsw i32 %85, 2
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  %89 = bitcast i8* %88 to i32*
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %11, align 4
  %92 = mul nsw i32 %91, 2
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [12 x i8], [12 x i8]* %15, i64 0, i64 %93
  %95 = bitcast i8* %94 to i32*
  store i32 %90, i32* %95, align 1
  br label %96

96:                                               ; preds = %83, %71
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %60

100:                                              ; preds = %60
  %101 = load i8*, i8** %7, align 8
  %102 = getelementptr inbounds [12 x i8], [12 x i8]* %15, i64 0, i64 0
  %103 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %104 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @copy_to_user(i8* %101, i8* %102, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load i32, i32* @EFAULT, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %5, align 4
  br label %129

111:                                              ; preds = %100
  %112 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %113 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = load i8*, i8** %7, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  store i8* %117, i8** %7, align 8
  %118 = load i32, i32* %12, align 4
  %119 = load i8*, i8** %8, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i8, i8* %119, i64 %120
  store i8* %121, i8** %8, align 8
  br label %122

122:                                              ; preds = %111
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %10, align 4
  br label %55

125:                                              ; preds = %55
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %12, align 4
  %128 = mul nsw i32 %126, %127
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %125, %108, %42, %39
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i64 @copy_to_user(i8*, i8*, i32) #1

declare dso_local signext i8 @S16_TO_U8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
