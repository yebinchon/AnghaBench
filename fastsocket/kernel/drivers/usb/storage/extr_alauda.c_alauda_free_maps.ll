; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_alauda.c_alauda_free_maps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_alauda.c_alauda_free_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alauda_media_info = type { i32, i32, i32, i32, i32**, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alauda_media_info*)* @alauda_free_maps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alauda_free_maps(%struct.alauda_media_info* %0) #0 {
  %2 = alloca %struct.alauda_media_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.alauda_media_info* %0, %struct.alauda_media_info** %2, align 8
  %6 = load %struct.alauda_media_info*, %struct.alauda_media_info** %2, align 8
  %7 = getelementptr inbounds %struct.alauda_media_info, %struct.alauda_media_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.alauda_media_info*, %struct.alauda_media_info** %2, align 8
  %10 = getelementptr inbounds %struct.alauda_media_info, %struct.alauda_media_info* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %8, %11
  %13 = load %struct.alauda_media_info*, %struct.alauda_media_info** %2, align 8
  %14 = getelementptr inbounds %struct.alauda_media_info, %struct.alauda_media_info* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = add i32 %12, %15
  store i32 %16, i32* %3, align 4
  %17 = load %struct.alauda_media_info*, %struct.alauda_media_info** %2, align 8
  %18 = getelementptr inbounds %struct.alauda_media_info, %struct.alauda_media_info* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %3, align 4
  %21 = lshr i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load %struct.alauda_media_info*, %struct.alauda_media_info** %2, align 8
  %23 = getelementptr inbounds %struct.alauda_media_info, %struct.alauda_media_info* %22, i32 0, i32 5
  %24 = load i32**, i32*** %23, align 8
  %25 = icmp ne i32** %24, null
  br i1 %25, label %26, label %50

26:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %46, %26
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %27
  %32 = load %struct.alauda_media_info*, %struct.alauda_media_info** %2, align 8
  %33 = getelementptr inbounds %struct.alauda_media_info, %struct.alauda_media_info* %32, i32 0, i32 5
  %34 = load i32**, i32*** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @kfree(i32* %38)
  %40 = load %struct.alauda_media_info*, %struct.alauda_media_info** %2, align 8
  %41 = getelementptr inbounds %struct.alauda_media_info, %struct.alauda_media_info* %40, i32 0, i32 5
  %42 = load i32**, i32*** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %31
  %47 = load i32, i32* %5, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %27

49:                                               ; preds = %27
  br label %50

50:                                               ; preds = %49, %1
  %51 = load %struct.alauda_media_info*, %struct.alauda_media_info** %2, align 8
  %52 = getelementptr inbounds %struct.alauda_media_info, %struct.alauda_media_info* %51, i32 0, i32 4
  %53 = load i32**, i32*** %52, align 8
  %54 = icmp ne i32** %53, null
  br i1 %54, label %55, label %79

55:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %75, %55
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %78

60:                                               ; preds = %56
  %61 = load %struct.alauda_media_info*, %struct.alauda_media_info** %2, align 8
  %62 = getelementptr inbounds %struct.alauda_media_info, %struct.alauda_media_info* %61, i32 0, i32 4
  %63 = load i32**, i32*** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @kfree(i32* %67)
  %69 = load %struct.alauda_media_info*, %struct.alauda_media_info** %2, align 8
  %70 = getelementptr inbounds %struct.alauda_media_info, %struct.alauda_media_info* %69, i32 0, i32 4
  %71 = load i32**, i32*** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %60
  %76 = load i32, i32* %5, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %56

78:                                               ; preds = %56
  br label %79

79:                                               ; preds = %78, %50
  ret void
}

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
