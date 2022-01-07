; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzpool/common/extr_kernel.c_vn_rdwr.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzpool/common/extr_kernel.c_vn_rdwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@UIO_READ = common dso_local global i32 0, align 4
@SPA_MINBLOCKSHIFT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_rdwr(i32 %0, %struct.TYPE_3__* %1, i8* %2, i32 %3, i64 %4, i32 %5, i32 %6, i32 %7, i8* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %12, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %13, align 8
  store i8* %2, i8** %14, align 8
  store i32 %3, i32* %15, align 4
  store i64 %4, i64* %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i8* %8, i8** %20, align 8
  store i32* %9, i32** %21, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @UIO_READ, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %10
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %14, align 8
  %34 = load i32, i32* %15, align 4
  %35 = load i64, i64* %16, align 8
  %36 = call i32 @pread64(i32 %32, i8* %33, i32 %34, i64 %35)
  store i32 %36, i32* %22, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, -1
  br i1 %40, label %41, label %53

41:                                               ; preds = %29
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %14, align 8
  %46 = load i32, i32* %22, align 4
  %47 = load i64, i64* %16, align 8
  %48 = call i32 @pwrite64(i32 %44, i8* %45, i32 %46, i64 %47)
  store i32 %48, i32* %24, align 4
  %49 = load i32, i32* %24, align 4
  %50 = icmp ne i32 %49, -1
  %51 = zext i1 %50 to i32
  %52 = call i32 @ASSERT(i32 %51)
  br label %53

53:                                               ; preds = %41, %29
  br label %93

54:                                               ; preds = %10
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* @SPA_MINBLOCKSHIFT, align 4
  %57 = ashr i32 %55, %56
  store i32 %57, i32* %25, align 4
  %58 = load i32, i32* %25, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = call i32 (...) @rand()
  %62 = load i32, i32* %25, align 4
  %63 = srem i32 %61, %62
  br label %65

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %60
  %66 = phi i32 [ %63, %60 ], [ 0, %64 ]
  %67 = load i32, i32* @SPA_MINBLOCKSHIFT, align 4
  %68 = shl i32 %66, %67
  store i32 %68, i32* %23, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** %14, align 8
  %73 = load i32, i32* %23, align 4
  %74 = load i64, i64* %16, align 8
  %75 = call i32 @pwrite64(i32 %71, i8* %72, i32 %73, i64 %74)
  store i32 %75, i32* %22, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i8*, i8** %14, align 8
  %80 = load i32, i32* %23, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %23, align 4
  %85 = sub nsw i32 %83, %84
  %86 = load i64, i64* %16, align 8
  %87 = load i32, i32* %23, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %86, %88
  %90 = call i32 @pwrite64(i32 %78, i8* %82, i32 %85, i64 %89)
  %91 = load i32, i32* %22, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %22, align 4
  br label %93

93:                                               ; preds = %65, %53
  %94 = load i32, i32* %22, align 4
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = load i32, i32* @errno, align 4
  store i32 %97, i32* %11, align 4
  br label %114

98:                                               ; preds = %93
  %99 = load i32*, i32** %21, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %22, align 4
  %104 = sub nsw i32 %102, %103
  %105 = load i32*, i32** %21, align 8
  store i32 %104, i32* %105, align 4
  br label %113

106:                                              ; preds = %98
  %107 = load i32, i32* %22, align 4
  %108 = load i32, i32* %15, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i32, i32* @EIO, align 4
  store i32 %111, i32* %11, align 4
  br label %114

112:                                              ; preds = %106
  br label %113

113:                                              ; preds = %112, %101
  store i32 0, i32* %11, align 4
  br label %114

114:                                              ; preds = %113, %110, %96
  %115 = load i32, i32* %11, align 4
  ret i32 %115
}

declare dso_local i32 @pread64(i32, i8*, i32, i64) #1

declare dso_local i32 @pwrite64(i32, i8*, i32, i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
