; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usbtest.c_alloc_sglist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usbtest.c_alloc_sglist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@pattern = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scatterlist* (i32, i32, i32)* @alloc_sglist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scatterlist* @alloc_sglist(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.scatterlist*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.scatterlist* @kmalloc(i32 %17, i32 %18)
  store %struct.scatterlist* %19, %struct.scatterlist** %8, align 8
  %20 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %21 = icmp ne %struct.scatterlist* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store %struct.scatterlist* null, %struct.scatterlist** %4, align 8
  br label %95

23:                                               ; preds = %3
  %24 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @sg_init_table(%struct.scatterlist* %24, i32 %25)
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %90, %23
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %93

31:                                               ; preds = %27
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @kzalloc(i32 %32, i32 %33)
  store i8* %34, i8** %11, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @free_sglist(%struct.scatterlist* %38, i32 %39)
  store %struct.scatterlist* null, %struct.scatterlist** %4, align 8
  br label %95

41:                                               ; preds = %31
  %42 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %42, i64 %44
  %46 = load i8*, i8** %11, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @sg_set_buf(%struct.scatterlist* %45, i8* %46, i32 %47)
  %49 = load i32, i32* @pattern, align 4
  switch i32 %49, label %66 [
    i32 0, label %50
    i32 1, label %51
  ]

50:                                               ; preds = %41
  br label %66

51:                                               ; preds = %41
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %62, %51
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load i32, i32* %12, align 4
  %58 = urem i32 %57, 63
  %59 = trunc i32 %58 to i8
  %60 = load i8*, i8** %11, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %11, align 8
  store i8 %59, i8* %60, align 1
  br label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %12, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %12, align 4
  br label %52

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %41, %65, %50
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %89

69:                                               ; preds = %66
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %10, align 4
  %72 = add i32 %71, %70
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %10, align 4
  %75 = urem i32 %74, %73
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %69
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i32, i32* %7, align 4
  br label %86

84:                                               ; preds = %78
  %85 = load i32, i32* %6, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %86, %69
  br label %89

89:                                               ; preds = %88, %66
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %9, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %27

93:                                               ; preds = %27
  %94 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  store %struct.scatterlist* %94, %struct.scatterlist** %4, align 8
  br label %95

95:                                               ; preds = %93, %37, %22
  %96 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  ret %struct.scatterlist* %96
}

declare dso_local %struct.scatterlist* @kmalloc(i32, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @free_sglist(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
