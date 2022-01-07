; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fbcmap.c_fb_copy_cmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fbcmap.c_fb_copy_cmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_cmap = type { i64, i32, i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fb_copy_cmap(%struct.fb_cmap* %0, %struct.fb_cmap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_cmap*, align 8
  %5 = alloca %struct.fb_cmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fb_cmap* %0, %struct.fb_cmap** %4, align 8
  store %struct.fb_cmap* %1, %struct.fb_cmap** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.fb_cmap*, %struct.fb_cmap** %5, align 8
  %10 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %13 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %11, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.fb_cmap*, %struct.fb_cmap** %5, align 8
  %18 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %21 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %19, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %7, align 4
  br label %34

25:                                               ; preds = %2
  %26 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %27 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.fb_cmap*, %struct.fb_cmap** %5, align 8
  %30 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %28, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %25, %16
  %35 = load %struct.fb_cmap*, %struct.fb_cmap** %5, align 8
  %36 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sub nsw i32 %37, %38
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %42 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sub nsw i32 %43, %44
  %46 = icmp sgt i32 %40, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %34
  %48 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %49 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 %50, %51
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %47, %34
  %54 = load i32, i32* %8, align 4
  %55 = icmp sle i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %131

59:                                               ; preds = %53
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 4
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %8, align 4
  %64 = load %struct.fb_cmap*, %struct.fb_cmap** %5, align 8
  %65 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %66, %68
  %70 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %71 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %70, i32 0, i32 5
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %72, %74
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @memcpy(i64 %69, i64 %75, i32 %76)
  %78 = load %struct.fb_cmap*, %struct.fb_cmap** %5, align 8
  %79 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %80, %82
  %84 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %85 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %86, %88
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @memcpy(i64 %83, i64 %89, i32 %90)
  %92 = load %struct.fb_cmap*, %struct.fb_cmap** %5, align 8
  %93 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %94, %96
  %98 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %99 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %100, %102
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @memcpy(i64 %97, i64 %103, i32 %104)
  %106 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %107 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %130

110:                                              ; preds = %59
  %111 = load %struct.fb_cmap*, %struct.fb_cmap** %5, align 8
  %112 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %130

115:                                              ; preds = %110
  %116 = load %struct.fb_cmap*, %struct.fb_cmap** %5, align 8
  %117 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %118, %120
  %122 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %123 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %124, %126
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @memcpy(i64 %121, i64 %127, i32 %128)
  br label %130

130:                                              ; preds = %115, %110, %59
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %130, %56
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @memcpy(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
