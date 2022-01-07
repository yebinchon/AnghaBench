; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_listing.c_listing_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_listing.c_listing_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, %struct.TYPE_3__* }

@eject = common dso_local global i64 0, align 8
@on_page = common dso_local global i32 0, align 4
@paper_height = common dso_local global i64 0, align 8
@page = common dso_local global i32 0, align 4
@EDICT_SBTTL = common dso_local global i64 0, align 8
@subtitle = common dso_local global i8* null, align 8
@EDICT_TITLE = common dso_local global i64 0, align 8
@title = common dso_local global i8* null, align 8
@list_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0C\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%s %s \09\09\09page %d\0A\00", align 1
@LISTING_HEADER = common dso_local global i8* null, align 8
@fn = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @listing_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @listing_page(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = load i64, i64* @eject, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @on_page, align 4
  %10 = load i64, i64* @paper_height, align 8
  %11 = trunc i64 %10 to i32
  %12 = icmp uge i32 %9, %11
  br i1 %12, label %13, label %77

13:                                               ; preds = %8, %1
  %14 = load i64, i64* @paper_height, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %77

16:                                               ; preds = %13
  store i32 10, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %17 = load i32, i32* @page, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @page, align 4
  br label %19

19:                                               ; preds = %53, %16
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = icmp ne %struct.TYPE_3__* %23, null
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi i1 [ false, %19 ], [ %24, %22 ]
  br i1 %26, label %27, label %59

27:                                               ; preds = %25
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @EDICT_SBTTL, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  store i32 1, i32* %5, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** @subtitle, align 8
  br label %40

40:                                               ; preds = %36, %33, %27
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @EDICT_TITLE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  store i32 1, i32* %4, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** @title, align 8
  br label %53

53:                                               ; preds = %49, %46, %40
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  store %struct.TYPE_3__* %56, %struct.TYPE_3__** %2, align 8
  %57 = load i32, i32* %3, align 4
  %58 = add i32 %57, -1
  store i32 %58, i32* %3, align 4
  br label %19

59:                                               ; preds = %25
  %60 = load i32, i32* @page, align 4
  %61 = icmp sgt i32 %60, 1
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* @list_file, align 4
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i32, i32* @list_file, align 4
  %67 = load i8*, i8** @LISTING_HEADER, align 8
  %68 = load i8*, i8** @fn, align 8
  %69 = load i32, i32* @page, align 4
  %70 = call i32 (i32, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %67, i8* %68, i32 %69)
  %71 = load i32, i32* @list_file, align 4
  %72 = load i8*, i8** @title, align 8
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %72)
  %74 = load i32, i32* @list_file, align 4
  %75 = load i8*, i8** @subtitle, align 8
  %76 = call i32 (i32, i8*, ...) @fprintf(i32 %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %75)
  store i32 3, i32* @on_page, align 4
  store i64 0, i64* @eject, align 8
  br label %77

77:                                               ; preds = %65, %13, %8
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
