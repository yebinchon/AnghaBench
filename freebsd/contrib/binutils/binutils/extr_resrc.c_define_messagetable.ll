; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_define_messagetable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_define_messagetable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.stat = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32*, i32 }

@FOPEN_RB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"messagetable file\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"stat failed on bitmap file `%s': %s\00", align 1
@errno = common dso_local global i32 0, align 4
@resources = common dso_local global i32 0, align 4
@RT_MESSAGETABLE = common dso_local global i32 0, align 4
@RES_TYPE_MESSAGETABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @define_messagetable(i32 %0, %struct.TYPE_10__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stat, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* @FOPEN_RB, align 4
  %14 = call i32* @open_file_search(i8* %12, i32 %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %8)
  store i32* %14, i32** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @stat(i8* %15, %struct.stat* %9)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* @errno, align 4
  %22 = call i32 @strerror(i32 %21)
  %23 = call i32 @fatal(i32 %19, i8* %20, i32 %22)
  br label %24

24:                                               ; preds = %18, %3
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @res_alloc(i32 %26)
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %10, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @get_data(i32* %29, i32* %30, i32 %32, i8* %33)
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @fclose(i32* %35)
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @free(i8* %37)
  %39 = load i32, i32* @RT_MESSAGETABLE, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.TYPE_9__* @define_standard_resource(i32* @resources, i32 %39, i32 %40, i32 %43, i32 0)
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %11, align 8
  %45 = load i32, i32* @RES_TYPE_MESSAGETABLE, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  store i32 %49, i32* %53, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i32* %54, i32** %58, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = bitcast %struct.TYPE_10__* %60 to i8*
  %63 = bitcast %struct.TYPE_10__* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 4 %63, i64 4, i1 false)
  ret void
}

declare dso_local i32* @open_file_search(i8*, i32, i8*, i8**) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @fatal(i32, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @res_alloc(i32) #1

declare dso_local i32 @get_data(i32*, i32*, i32, i8*) #1

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
