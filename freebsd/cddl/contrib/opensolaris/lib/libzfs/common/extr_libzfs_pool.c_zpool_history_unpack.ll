; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_history_unpack.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_history_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_history_unpack(i8* %0, i32 %1, i32* %2, i32*** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32***, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32*** %3, i32**** %10, align 8
  store i32* %4, i32** %11, align 8
  br label %15

15:                                               ; preds = %88, %5
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ugt i64 %17, 4
  br i1 %18, label %19, label %97

19:                                               ; preds = %15
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %37, %19
  %21 = load i32, i32* %14, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 4
  br i1 %23, label %24, label %40

24:                                               ; preds = %20
  %25 = load i8*, i8** %7, align 8
  %26 = bitcast i8* %25 to i64*
  %27 = load i32, i32* %14, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* %14, align 4
  %33 = mul nsw i32 8, %32
  %34 = shl i32 %31, %33
  %35 = load i32, i32* %12, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %12, align 4
  br label %37

37:                                               ; preds = %24
  %38 = load i32, i32* %14, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %14, align 4
  br label %20

40:                                               ; preds = %20
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 4, %44
  %46 = icmp ult i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %97

48:                                               ; preds = %40
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 4
  %51 = load i32, i32* %12, align 4
  %52 = call i64 @nvlist_unpack(i8* %50, i32 %51, i32** %13, i32 0)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @ENOMEM, align 4
  store i32 %55, i32* %6, align 4
  br label %100

56:                                               ; preds = %48
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = add i64 4, %58
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = sub i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = add i64 4, %65
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 %66
  store i8* %68, i8** %7, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  %75 = call i64 @ISP2(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %56
  %78 = load i32***, i32**** %10, align 8
  %79 = load i32**, i32*** %78, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 %81, 2
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 8
  %85 = trunc i64 %84 to i32
  %86 = call i32** @realloc(i32** %79, i32 %85)
  %87 = load i32***, i32**** %10, align 8
  store i32** %86, i32*** %87, align 8
  br label %88

88:                                               ; preds = %77, %56
  %89 = load i32*, i32** %13, align 8
  %90 = load i32***, i32**** %10, align 8
  %91 = load i32**, i32*** %90, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32*, i32** %91, i64 %95
  store i32* %89, i32** %96, align 8
  br label %15

97:                                               ; preds = %47, %15
  %98 = load i32, i32* %8, align 4
  %99 = load i32*, i32** %9, align 8
  store i32 %98, i32* %99, align 4
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %97, %54
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i64 @nvlist_unpack(i8*, i32, i32**, i32) #1

declare dso_local i64 @ISP2(i32) #1

declare dso_local i32** @realloc(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
