; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fbcmap.c_fb_set_user_cmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fbcmap.c_fb_set_user_cmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_cmap_user = type { i32, i64, i32*, i32*, i32*, i32* }
%struct.fb_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.fb_cmap = type { i64, i32, i32, i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fb_set_user_cmap(%struct.fb_cmap_user* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_cmap_user*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fb_cmap, align 8
  store %struct.fb_cmap_user* %0, %struct.fb_cmap_user** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %9 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %4, align 8
  %10 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = call i32 @memset(%struct.fb_cmap* %8, i32 0, i32 24)
  %16 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %4, align 8
  %17 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %4, align 8
  %20 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @fb_alloc_cmap(%struct.fb_cmap* %8, i32 %18, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %115

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %8, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %4, align 8
  %33 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %32, i32 0, i32 5
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @copy_from_user(i32 %31, i32* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %70, label %38

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %8, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %4, align 8
  %42 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @copy_from_user(i32 %40, i32* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %70, label %47

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %8, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %4, align 8
  %51 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i64 @copy_from_user(i32 %49, i32* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %70, label %56

56:                                               ; preds = %47
  %57 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %4, align 8
  %58 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %73

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %8, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %4, align 8
  %65 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i64 @copy_from_user(i32 %63, i32* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %61, %47, %38, %29
  %71 = load i32, i32* @EFAULT, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %6, align 4
  br label %112

73:                                               ; preds = %61, %56
  %74 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %4, align 8
  %75 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %8, i32 0, i32 0
  store i64 %76, i64* %77, align 8
  %78 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %79 = call i32 @lock_fb_info(%struct.fb_info* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %73
  %82 = load i32, i32* @ENODEV, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %6, align 4
  br label %112

84:                                               ; preds = %73
  %85 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %4, align 8
  %86 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %103, label %89

89:                                               ; preds = %84
  %90 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %91 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %106, label %96

96:                                               ; preds = %89
  %97 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %98 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %96, %84
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %6, align 4
  br label %109

106:                                              ; preds = %96, %89
  %107 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %108 = call i32 @fb_set_cmap(%struct.fb_cmap* %8, %struct.fb_info* %107)
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %106, %103
  %110 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %111 = call i32 @unlock_fb_info(%struct.fb_info* %110)
  br label %112

112:                                              ; preds = %109, %81, %70
  %113 = call i32 @fb_dealloc_cmap(%struct.fb_cmap* %8)
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %112, %27
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @memset(%struct.fb_cmap*, i32, i32) #1

declare dso_local i32 @fb_alloc_cmap(%struct.fb_cmap*, i32, i32) #1

declare dso_local i64 @copy_from_user(i32, i32*, i32) #1

declare dso_local i32 @lock_fb_info(%struct.fb_info*) #1

declare dso_local i32 @fb_set_cmap(%struct.fb_cmap*, %struct.fb_info*) #1

declare dso_local i32 @unlock_fb_info(%struct.fb_info*) #1

declare dso_local i32 @fb_dealloc_cmap(%struct.fb_cmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
