; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_define_bitmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_define_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.stat = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_10__, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32*, i64 }

@FOPEN_RB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"bitmap file\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"stat failed on bitmap file `%s': %s\00", align 1
@errno = common dso_local global i32 0, align 4
@BITMAP_SKIP = common dso_local global i64 0, align 8
@resources = common dso_local global i32 0, align 4
@RT_BITMAP = common dso_local global i32 0, align 4
@RES_TYPE_BITMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @define_bitmap(i32 %0, %struct.TYPE_10__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stat, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* @FOPEN_RB, align 4
  %15 = call i32* @open_file_search(i8* %13, i32 %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %8)
  store i32* %15, i32** %7, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i64 @stat(i8* %16, %struct.stat* %9)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* @errno, align 4
  %23 = call i32 @strerror(i32 %22)
  %24 = call i32 @fatal(i32 %20, i8* %21, i32 %23)
  br label %25

25:                                               ; preds = %19, %3
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @BITMAP_SKIP, align 8
  %29 = sub nsw i64 %27, %28
  %30 = call i64 @res_alloc(i64 %29)
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %10, align 8
  store i64 0, i64* %11, align 8
  br label %32

32:                                               ; preds = %39, %25
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* @BITMAP_SKIP, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @getc(i32* %37)
  br label %39

39:                                               ; preds = %36
  %40 = load i64, i64* %11, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %11, align 8
  br label %32

42:                                               ; preds = %32
  %43 = load i32*, i32** %7, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @BITMAP_SKIP, align 8
  %48 = sub nsw i64 %46, %47
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @get_data(i32* %43, i32* %44, i64 %48, i8* %49)
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @fclose(i32* %51)
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @free(i8* %53)
  %55 = load i32, i32* @RT_BITMAP, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.TYPE_9__* @define_standard_resource(i32* @resources, i32 %55, i32 %56, i32 %59, i32 0)
  store %struct.TYPE_9__* %60, %struct.TYPE_9__** %12, align 8
  %61 = load i32, i32* @RES_TYPE_BITMAP, align 4
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @BITMAP_SKIP, align 8
  %67 = sub nsw i64 %65, %66
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  store i64 %67, i64* %71, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  store i32* %72, i32** %76, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %80 = bitcast %struct.TYPE_10__* %78 to i8*
  %81 = bitcast %struct.TYPE_10__* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %80, i8* align 4 %81, i64 4, i1 false)
  ret void
}

declare dso_local i32* @open_file_search(i8*, i32, i8*, i8**) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @fatal(i32, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @res_alloc(i64) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @get_data(i32*, i32*, i64, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.TYPE_9__* @define_standard_resource(i32*, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
