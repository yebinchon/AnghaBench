; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fbcmap.c_fb_alloc_cmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fbcmap.c_fb_alloc_cmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_cmap = type { i32, i64, i32*, i8*, i8*, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fb_alloc_cmap(%struct.fb_cmap* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_cmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fb_cmap* %0, %struct.fb_cmap** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 4
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %8, align 4
  %13 = load %struct.fb_cmap*, %struct.fb_cmap** %5, align 8
  %14 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %65

18:                                               ; preds = %3
  %19 = load %struct.fb_cmap*, %struct.fb_cmap** %5, align 8
  %20 = call i32 @fb_dealloc_cmap(%struct.fb_cmap* %19)
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %80

24:                                               ; preds = %18
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call i8* @kmalloc(i32 %25, i32 %26)
  %28 = load %struct.fb_cmap*, %struct.fb_cmap** %5, align 8
  %29 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %28, i32 0, i32 5
  store i8* %27, i8** %29, align 8
  %30 = icmp ne i8* %27, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %75

32:                                               ; preds = %24
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @GFP_ATOMIC, align 4
  %35 = call i8* @kmalloc(i32 %33, i32 %34)
  %36 = load %struct.fb_cmap*, %struct.fb_cmap** %5, align 8
  %37 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = icmp ne i8* %35, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  br label %75

40:                                               ; preds = %32
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @GFP_ATOMIC, align 4
  %43 = call i8* @kmalloc(i32 %41, i32 %42)
  %44 = load %struct.fb_cmap*, %struct.fb_cmap** %5, align 8
  %45 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = icmp ne i8* %43, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  br label %75

48:                                               ; preds = %40
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @GFP_ATOMIC, align 4
  %54 = call i8* @kmalloc(i32 %52, i32 %53)
  %55 = bitcast i8* %54 to i32*
  %56 = load %struct.fb_cmap*, %struct.fb_cmap** %5, align 8
  %57 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %56, i32 0, i32 2
  store i32* %55, i32** %57, align 8
  %58 = icmp ne i32* %55, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %51
  br label %75

60:                                               ; preds = %51
  br label %64

61:                                               ; preds = %48
  %62 = load %struct.fb_cmap*, %struct.fb_cmap** %5, align 8
  %63 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %62, i32 0, i32 2
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %61, %60
  br label %65

65:                                               ; preds = %64, %3
  %66 = load %struct.fb_cmap*, %struct.fb_cmap** %5, align 8
  %67 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.fb_cmap*, %struct.fb_cmap** %5, align 8
  %70 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @fb_default_cmap(i32 %71)
  %73 = load %struct.fb_cmap*, %struct.fb_cmap** %5, align 8
  %74 = call i32 @fb_copy_cmap(i32 %72, %struct.fb_cmap* %73)
  store i32 0, i32* %4, align 4
  br label %80

75:                                               ; preds = %59, %47, %39, %31
  %76 = load %struct.fb_cmap*, %struct.fb_cmap** %5, align 8
  %77 = call i32 @fb_dealloc_cmap(%struct.fb_cmap* %76)
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %75, %65, %23
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @fb_dealloc_cmap(%struct.fb_cmap*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @fb_copy_cmap(i32, %struct.fb_cmap*) #1

declare dso_local i32 @fb_default_cmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
