; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_res_to_bin_toolbar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_res_to_bin_toolbar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.bin_toolbar = type { %struct.bin_toolbar*, %struct.bin_toolbar*, %struct.bin_toolbar* }

@BIN_TOOLBAR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_9__*)* @res_to_bin_toolbar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @res_to_bin_toolbar(i32* %0, i32 %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.bin_toolbar, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.bin_toolbar*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %82

13:                                               ; preds = %3
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds %struct.bin_toolbar, %struct.bin_toolbar* %7, i32 0, i32 2
  %16 = load %struct.bin_toolbar*, %struct.bin_toolbar** %15, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @windres_put_32(i32* %14, %struct.bin_toolbar* %16, i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds %struct.bin_toolbar, %struct.bin_toolbar* %7, i32 0, i32 1
  %23 = load %struct.bin_toolbar*, %struct.bin_toolbar** %22, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @windres_put_32(i32* %21, %struct.bin_toolbar* %23, i32 %26)
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds %struct.bin_toolbar, %struct.bin_toolbar* %7, i32 0, i32 0
  %30 = load %struct.bin_toolbar*, %struct.bin_toolbar** %29, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @windres_put_32(i32* %28, %struct.bin_toolbar* %30, i32 %33)
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @BIN_TOOLBAR_SIZE, align 4
  %38 = call i32 @set_windres_bfd_content(i32* %35, %struct.bin_toolbar* %7, i32 %36, i32 %37)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %81

43:                                               ; preds = %13
  store i32 0, i32* %10, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = mul nsw i32 %46, 4
  %48 = call i64 @reswr_alloc(i32 %47)
  %49 = inttoptr i64 %48 to %struct.bin_toolbar*
  store %struct.bin_toolbar* %49, %struct.bin_toolbar** %9, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  store %struct.TYPE_8__* %52, %struct.TYPE_8__** %8, align 8
  br label %53

53:                                               ; preds = %56, %43
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %55 = icmp ne %struct.TYPE_8__* %54, null
  br i1 %55, label %56, label %73

56:                                               ; preds = %53
  %57 = load i32*, i32** %4, align 8
  %58 = load %struct.bin_toolbar*, %struct.bin_toolbar** %9, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.bin_toolbar, %struct.bin_toolbar* %58, i64 %60
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @windres_put_32(i32* %57, %struct.bin_toolbar* %61, i32 %66)
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 4
  store i32 %69, i32* %10, align 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  store %struct.TYPE_8__* %72, %struct.TYPE_8__** %8, align 8
  br label %53

73:                                               ; preds = %53
  %74 = load i32*, i32** %4, align 8
  %75 = load %struct.bin_toolbar*, %struct.bin_toolbar** %9, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @BIN_TOOLBAR_SIZE, align 4
  %78 = add nsw i32 %76, %77
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @set_windres_bfd_content(i32* %74, %struct.bin_toolbar* %75, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %73, %13
  br label %82

82:                                               ; preds = %81, %3
  %83 = load i32, i32* @BIN_TOOLBAR_SIZE, align 4
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = mul nsw i32 %86, 4
  %88 = add nsw i32 %83, %87
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @windres_put_32(i32*, %struct.bin_toolbar*, i32) #1

declare dso_local i32 @set_windres_bfd_content(i32*, %struct.bin_toolbar*, i32, i32) #1

declare dso_local i64 @reswr_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
