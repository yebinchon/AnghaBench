; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_copy_dmabuf_user.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_copy_dmabuf_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmabuf = type { i8*, i8*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmabuf*, i8*, i32, i32)* @copy_dmabuf_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_dmabuf_user(%struct.dmabuf* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dmabuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dmabuf* %0, %struct.dmabuf** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %19 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  br label %25

21:                                               ; preds = %4
  %22 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %23 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i8* [ %20, %17 ], [ %24, %21 ]
  store i8* %26, i8** %10, align 8
  %27 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %28 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %31 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %29, i64 %33
  store i8* %34, i8** %11, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8*, i8** %11, align 8
  %40 = icmp ugt i8* %38, %39
  br i1 %40, label %41, label %111

41:                                               ; preds = %25
  %42 = load i8*, i8** %11, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %80

50:                                               ; preds = %41
  %51 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @translate_to_user(%struct.dmabuf* %51, i8* %52, i8* %53, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %5, align 4
  br label %129

59:                                               ; preds = %50
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %13, align 4
  %61 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %67 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %14, align 4
  %71 = sub nsw i32 %69, %70
  %72 = call i32 @translate_to_user(%struct.dmabuf* %61, i8* %65, i8* %68, i32 %71)
  store i32 %72, i32* %12, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %59
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %5, align 4
  br label %129

76:                                               ; preds = %59
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %13, align 4
  br label %110

80:                                               ; preds = %41
  %81 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @translate_from_user(%struct.dmabuf* %81, i8* %82, i8* %83, i32 %84)
  store i32 %85, i32* %12, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %5, align 4
  br label %129

89:                                               ; preds = %80
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %13, align 4
  %91 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %92 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %93 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %92, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = load i32, i32* %14, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %14, align 4
  %101 = sub nsw i32 %99, %100
  %102 = call i32 @translate_from_user(%struct.dmabuf* %91, i8* %94, i8* %98, i32 %101)
  store i32 %102, i32* %12, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %89
  %105 = load i32, i32* %12, align 4
  store i32 %105, i32* %5, align 4
  br label %129

106:                                              ; preds = %89
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %13, align 4
  br label %110

110:                                              ; preds = %106, %76
  br label %127

111:                                              ; preds = %25
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %116 = load i8*, i8** %7, align 8
  %117 = load i8*, i8** %10, align 8
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @translate_to_user(%struct.dmabuf* %115, i8* %116, i8* %117, i32 %118)
  store i32 %119, i32* %13, align 4
  br label %126

120:                                              ; preds = %111
  %121 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %122 = load i8*, i8** %10, align 8
  %123 = load i8*, i8** %7, align 8
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @translate_from_user(%struct.dmabuf* %121, i8* %122, i8* %123, i32 %124)
  store i32 %125, i32* %13, align 4
  br label %126

126:                                              ; preds = %120, %114
  br label %127

127:                                              ; preds = %126, %110
  %128 = load i32, i32* %13, align 4
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %127, %104, %87, %74, %57
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i32 @translate_to_user(%struct.dmabuf*, i8*, i8*, i32) #1

declare dso_local i32 @translate_from_user(%struct.dmabuf*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
