; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_translate_from_user.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_translate_from_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmabuf = type { i32, i32, i32, i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmabuf*, i8*, i8*, i32)* @translate_from_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @translate_from_user(%struct.dmabuf* %0, i8* %1, i8* %2, i32 %3) #0 {
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
  %16 = alloca i32, align 4
  %17 = alloca [6 x i32], align 16
  store %struct.dmabuf* %0, %struct.dmabuf** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %19 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 1
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %14, align 4
  %23 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %24 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 16
  br i1 %26, label %27, label %46

27:                                               ; preds = %4
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %27
  %31 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %32 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i64 @copy_from_user(i8* %36, i8* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @EFAULT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %149

44:                                               ; preds = %35
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %5, align 4
  br label %149

46:                                               ; preds = %30, %27, %4
  %47 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %48 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %51 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %49, %52
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %12, align 4
  %56 = sdiv i32 %54, %55
  store i32 %56, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %142, %46
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %145

61:                                               ; preds = %57
  %62 = getelementptr inbounds [12 x i8], [12 x i8]* %15, i64 0, i64 0
  %63 = load i8*, i8** %8, align 8
  %64 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %65 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @copy_from_user(i8* %62, i8* %63, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load i32, i32* @EFAULT, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %149

72:                                               ; preds = %61
  store i32 0, i32* %11, align 4
  br label %73

73:                                               ; preds = %111, %72
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %76 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %114

79:                                               ; preds = %73
  %80 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %81 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 8
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [12 x i8], [12 x i8]* %15, i64 0, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = call i32 @U8_TO_S16(i8 signext %88)
  store i32 %89, i32* %16, align 4
  br label %97

90:                                               ; preds = %79
  %91 = load i32, i32* %11, align 4
  %92 = mul nsw i32 %91, 2
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [12 x i8], [12 x i8]* %15, i64 0, i64 %93
  %95 = bitcast i8* %94 to i32*
  %96 = load i32, i32* %95, align 1
  store i32 %96, i32* %16, align 4
  br label %97

97:                                               ; preds = %90, %84
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 %100
  store i32 %98, i32* %101, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %97
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 %108
  store i32 %105, i32* %109, align 4
  br label %110

110:                                              ; preds = %104, %97
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %11, align 4
  br label %73

114:                                              ; preds = %73
  store i32 0, i32* %11, align 4
  br label %115

115:                                              ; preds = %128, %114
  %116 = load i32, i32* %11, align 4
  %117 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %118 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %131

121:                                              ; preds = %115
  %122 = load i8*, i8** %7, align 8
  %123 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 0
  %124 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %125 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @memcpy(i8* %122, i32* %123, i32 %126)
  br label %128

128:                                              ; preds = %121
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %11, align 4
  br label %115

131:                                              ; preds = %115
  %132 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %133 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = load i8*, i8** %8, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  store i8* %137, i8** %8, align 8
  %138 = load i32, i32* %12, align 4
  %139 = load i8*, i8** %7, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  store i8* %141, i8** %7, align 8
  br label %142

142:                                              ; preds = %131
  %143 = load i32, i32* %10, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %10, align 4
  br label %57

145:                                              ; preds = %57
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* %12, align 4
  %148 = mul nsw i32 %146, %147
  store i32 %148, i32* %5, align 4
  br label %149

149:                                              ; preds = %145, %69, %44, %41
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

declare dso_local i64 @copy_from_user(i8*, i8*, i32) #1

declare dso_local i32 @U8_TO_S16(i8 signext) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
