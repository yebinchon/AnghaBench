; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fbcmap.c_fb_cmap_to_user.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fbcmap.c_fb_cmap_to_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_cmap = type { i64, i32, i64, i64, i64, i64 }
%struct.fb_cmap_user = type { i64, i32, i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fb_cmap_to_user(%struct.fb_cmap* %0, %struct.fb_cmap_user* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_cmap*, align 8
  %5 = alloca %struct.fb_cmap_user*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fb_cmap* %0, %struct.fb_cmap** %4, align 8
  store %struct.fb_cmap_user* %1, %struct.fb_cmap_user** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %5, align 8
  %10 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %13 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %11, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %5, align 8
  %18 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %17, i32 0, i32 0
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
  %29 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %5, align 8
  %30 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %28, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %25, %16
  %35 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %5, align 8
  %36 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %35, i32 0, i32 1
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
  br label %151

59:                                               ; preds = %53
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 4
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %8, align 4
  %64 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %5, align 8
  %65 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %64, i32 0, i32 5
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
  %77 = call i64 @copy_to_user(i64 %69, i64 %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %59
  %80 = load i32, i32* @EFAULT, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %151

82:                                               ; preds = %59
  %83 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %5, align 8
  %84 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %85, %87
  %89 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %90 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %91, %93
  %95 = load i32, i32* %8, align 4
  %96 = call i64 @copy_to_user(i64 %88, i64 %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %82
  %99 = load i32, i32* @EFAULT, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %151

101:                                              ; preds = %82
  %102 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %5, align 8
  %103 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %104, %106
  %108 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %109 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %110, %112
  %114 = load i32, i32* %8, align 4
  %115 = call i64 @copy_to_user(i64 %107, i64 %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %101
  %118 = load i32, i32* @EFAULT, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %151

120:                                              ; preds = %101
  %121 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %122 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %150

125:                                              ; preds = %120
  %126 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %5, align 8
  %127 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %150

130:                                              ; preds = %125
  %131 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %5, align 8
  %132 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %133, %135
  %137 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %138 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %139, %141
  %143 = load i32, i32* %8, align 4
  %144 = call i64 @copy_to_user(i64 %136, i64 %142, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %130
  %147 = load i32, i32* @EFAULT, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %3, align 4
  br label %151

149:                                              ; preds = %130
  br label %150

150:                                              ; preds = %149, %125, %120
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %150, %146, %117, %98, %79, %56
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i64 @copy_to_user(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
