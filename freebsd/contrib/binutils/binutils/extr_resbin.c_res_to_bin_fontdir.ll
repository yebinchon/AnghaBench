; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_res_to_bin_fontdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_res_to_bin_fontdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, %struct.TYPE_3__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, %struct.TYPE_3__*)* @res_to_bin_fontdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @res_to_bin_fontdir(i32* %0, i64 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca [2 x i32], align 4
  %11 = alloca [2 x i32], align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %12 = load i64, i64* %5, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = add nsw i64 %13, 2
  store i64 %14, i64* %5, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %9, align 8
  br label %16

16:                                               ; preds = %57, %3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %63

19:                                               ; preds = %16
  %20 = load i32*, i32** %4, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %49

22:                                               ; preds = %19
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @windres_put_16(i32* %23, i32* %24, i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @set_windres_bfd_content(i32* %29, i32* %30, i64 %31, i32 2)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %22
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = add nsw i64 %42, 2
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @set_windres_bfd_content(i32* %38, i32* %41, i64 %43, i32 %46)
  br label %48

48:                                               ; preds = %37, %22
  br label %49

49:                                               ; preds = %48, %19
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, 2
  %55 = load i64, i64* %5, align 8
  %56 = add nsw i64 %55, %54
  store i64 %56, i64* %5, align 8
  br label %57

57:                                               ; preds = %49
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  store %struct.TYPE_3__* %60, %struct.TYPE_3__** %9, align 8
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %16

63:                                               ; preds = %16
  %64 = load i32*, i32** %4, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load i32*, i32** %4, align 8
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @windres_put_16(i32* %67, i32* %68, i32 %69)
  %71 = load i32*, i32** %4, align 8
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @set_windres_bfd_content(i32* %71, i32* %72, i64 %73, i32 2)
  br label %75

75:                                               ; preds = %66, %63
  %76 = load i64, i64* %5, align 8
  ret i64 %76
}

declare dso_local i32 @windres_put_16(i32*, i32*, i32) #1

declare dso_local i32 @set_windres_bfd_content(i32*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
