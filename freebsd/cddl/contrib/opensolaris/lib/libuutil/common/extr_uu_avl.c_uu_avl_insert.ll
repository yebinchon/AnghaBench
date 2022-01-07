; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libuutil/common/extr_uu_avl.c_uu_avl_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libuutil/common/extr_uu_avl.c_uu_avl_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, i64 }

@.str = private unnamed_addr constant [61 x i8] c"uu_avl_insert(%p, %p, %p): node already in tree, or corrupt\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"uu_avl_insert(%p, %p, %p): node not initialized\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"uu_avl_insert(%p, %p, %p): node from other pool, or corrupt\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"uu_avl_insert(%p, %p, %p): %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"outdated index\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"invalid index\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uu_avl_insert(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %81

13:                                               ; preds = %3
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i64* @NODE_ARRAY(i32* %17, i8* %18)
  store i64* %19, i64** %8, align 8
  %20 = load i64*, i64** %8, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %13
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = bitcast %struct.TYPE_4__* %25 to i8*
  %27 = load i8*, i8** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 (i8*, i8*, i8*, i8*, ...) @uu_panic(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %27, i8* %29)
  br label %31

31:                                               ; preds = %24, %13
  %32 = load i64*, i64** %8, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = bitcast %struct.TYPE_4__* %37 to i8*
  %39 = load i8*, i8** %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 (i8*, i8*, i8*, i8*, ...) @uu_panic(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %38, i8* %39, i8* %41)
  br label %43

43:                                               ; preds = %36, %31
  %44 = load i64*, i64** %8, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = call i64 @POOL_TO_MARKER(i32* %47)
  %49 = icmp ne i64 %46, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = bitcast %struct.TYPE_4__* %51 to i8*
  %53 = load i8*, i8** %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = inttoptr i64 %54 to i8*
  %56 = call i32 (i8*, i8*, i8*, i8*, ...) @uu_panic(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i8* %52, i8* %53, i8* %55)
  br label %57

57:                                               ; preds = %50, %43
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @INDEX_VALID(%struct.TYPE_4__* %58, i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %57
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = bitcast %struct.TYPE_4__* %63 to i8*
  %65 = load i8*, i8** %5, align 8
  %66 = load i64, i64* %6, align 8
  %67 = inttoptr i64 %66 to i8*
  %68 = load i64, i64* %6, align 8
  %69 = call i64 @INDEX_CHECK(i64 %68)
  %70 = icmp ne i64 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0)
  %73 = call i32 (i8*, i8*, i8*, i8*, ...) @uu_panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %64, i8* %65, i8* %67, i8* %72)
  br label %74

74:                                               ; preds = %62, %57
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @INDEX_NEXT(i32 %77)
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %74, %3
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i8*, i8** %5, align 8
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @INDEX_DECODE(i64 %85)
  %87 = call i32 @avl_insert(i32* %83, i8* %84, i32 %86)
  ret void
}

declare dso_local i64* @NODE_ARRAY(i32*, i8*) #1

declare dso_local i32 @uu_panic(i8*, i8*, i8*, i8*, ...) #1

declare dso_local i64 @POOL_TO_MARKER(i32*) #1

declare dso_local i32 @INDEX_VALID(%struct.TYPE_4__*, i64) #1

declare dso_local i64 @INDEX_CHECK(i64) #1

declare dso_local i32 @INDEX_NEXT(i32) #1

declare dso_local i32 @avl_insert(i32*, i8*, i32) #1

declare dso_local i32 @INDEX_DECODE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
