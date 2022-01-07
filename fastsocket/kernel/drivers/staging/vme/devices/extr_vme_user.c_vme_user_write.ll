; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/devices/extr_vme_user.c_vme_user_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/devices/extr_vme_user.c_vme_user_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.file = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@image = common dso_local global %struct.TYPE_6__* null, align 8
@type = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i8*, i64, i64*)* @vme_user_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vme_user_write(%struct.file* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load %struct.file*, %struct.file** %6, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @MINOR(i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @image, align 8
  %23 = load i32, i32* %10, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = call i32 @down(i32* %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @image, align 8
  %29 = load i32, i32* %10, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @vme_get_size(i32 %33)
  store i64 %34, i64* %12, align 8
  %35 = load i64*, i64** %9, align 8
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %4
  %39 = load i64*, i64** %9, align 8
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %12, align 8
  %42 = sub i64 %41, 1
  %43 = icmp ugt i64 %40, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %38, %4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @image, align 8
  %46 = load i32, i32* %10, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = call i32 @up(i32* %49)
  store i64 0, i64* %5, align 8
  br label %102

51:                                               ; preds = %38
  %52 = load i64*, i64** %9, align 8
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %8, align 8
  %55 = add i64 %53, %54
  %56 = load i64, i64* %12, align 8
  %57 = icmp ugt i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load i64, i64* %12, align 8
  %60 = load i64*, i64** %9, align 8
  %61 = load i64, i64* %60, align 8
  %62 = sub i64 %59, %61
  store i64 %62, i64* %13, align 8
  br label %65

63:                                               ; preds = %51
  %64 = load i64, i64* %8, align 8
  store i64 %64, i64* %13, align 8
  br label %65

65:                                               ; preds = %63, %58
  %66 = load i32*, i32** @type, align 8
  %67 = load i32, i32* %10, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %83 [
    i32 129, label %71
    i32 128, label %77
  ]

71:                                               ; preds = %65
  %72 = load i32, i32* %10, align 4
  %73 = load i8*, i8** %7, align 8
  %74 = load i64, i64* %13, align 8
  %75 = load i64*, i64** %9, align 8
  %76 = call i64 @resource_from_user(i32 %72, i8* %73, i64 %74, i64* %75)
  store i64 %76, i64* %11, align 8
  br label %86

77:                                               ; preds = %65
  %78 = load i32, i32* %10, align 4
  %79 = load i8*, i8** %7, align 8
  %80 = load i64, i64* %13, align 8
  %81 = load i64*, i64** %9, align 8
  %82 = call i64 @buffer_from_user(i32 %78, i8* %79, i64 %80, i64* %81)
  store i64 %82, i64* %11, align 8
  br label %86

83:                                               ; preds = %65
  %84 = load i64, i64* @EINVAL, align 8
  %85 = sub nsw i64 0, %84
  store i64 %85, i64* %11, align 8
  br label %86

86:                                               ; preds = %83, %77, %71
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** @image, align 8
  %88 = load i32, i32* %10, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = call i32 @up(i32* %91)
  %93 = load i64, i64* %11, align 8
  %94 = icmp sgt i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %86
  %96 = load i64, i64* %11, align 8
  %97 = load i64*, i64** %9, align 8
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %98, %96
  store i64 %99, i64* %97, align 8
  br label %100

100:                                              ; preds = %95, %86
  %101 = load i64, i64* %11, align 8
  store i64 %101, i64* %5, align 8
  br label %102

102:                                              ; preds = %100, %44
  %103 = load i64, i64* %5, align 8
  ret i64 %103
}

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i64 @vme_get_size(i32) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i64 @resource_from_user(i32, i8*, i64, i64*) #1

declare dso_local i64 @buffer_from_user(i32, i8*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
