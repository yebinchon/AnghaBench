; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_sel_subs.c_usr_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_sel_subs.c_usr_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, %struct.TYPE_3__* }
%struct.passwd = type { i64 }

@usrtb = common dso_local global %struct.TYPE_3__** null, align 8
@USR_TB_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Unable to allocate memory for user selection table\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Unable to find uid for user: %s\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"User selection table out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usr_add(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.passwd*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %1
  store i32 -1, i32* %2, align 4
  br label %110

16:                                               ; preds = %10
  %17 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @usrtb, align 8
  %18 = icmp eq %struct.TYPE_3__** %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i32, i32* @USR_TB_SZ, align 4
  %21 = call i64 @calloc(i32 %20, i32 8)
  %22 = inttoptr i64 %21 to %struct.TYPE_3__**
  store %struct.TYPE_3__** %22, %struct.TYPE_3__*** @usrtb, align 8
  %23 = icmp eq %struct.TYPE_3__** %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 (i32, i8*, ...) @paxwarn(i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %110

26:                                               ; preds = %19, %16
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 35
  br i1 %31, label %32, label %58

32:                                               ; preds = %26
  %33 = load i8*, i8** %3, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 92
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load i8*, i8** %3, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 35
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i8*, i8** %3, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %3, align 8
  br label %47

47:                                               ; preds = %44, %38, %32
  %48 = load i8*, i8** %3, align 8
  %49 = call %struct.passwd* @getpwnam(i8* %48)
  store %struct.passwd* %49, %struct.passwd** %6, align 8
  %50 = icmp eq %struct.passwd* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 (i32, i8*, ...) @paxwarn(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  store i32 -1, i32* %2, align 4
  br label %110

54:                                               ; preds = %47
  %55 = load %struct.passwd*, %struct.passwd** %6, align 8
  %56 = getelementptr inbounds %struct.passwd, %struct.passwd* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %7, align 8
  br label %62

58:                                               ; preds = %26
  %59 = load i8*, i8** %3, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = call i64 @strtoul(i8* %60, i32* null, i32 10)
  store i64 %61, i64* %7, align 8
  br label %62

62:                                               ; preds = %58, %54
  %63 = call i32 (...) @endpwent()
  %64 = load i64, i64* %7, align 8
  %65 = trunc i64 %64 to i32
  %66 = load i32, i32* @USR_TB_SZ, align 4
  %67 = urem i32 %65, %66
  %68 = zext i32 %67 to i64
  store i64 %68, i64* %4, align 8
  %69 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @usrtb, align 8
  %70 = load i64, i64* %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %69, i64 %70
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  store %struct.TYPE_3__* %72, %struct.TYPE_3__** %5, align 8
  %73 = icmp ne %struct.TYPE_3__* %72, null
  br i1 %73, label %74, label %90

74:                                               ; preds = %62
  br label %75

75:                                               ; preds = %85, %74
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %77 = icmp ne %struct.TYPE_3__* %76, null
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %7, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store i32 0, i32* %2, align 4
  br label %110

85:                                               ; preds = %78
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  store %struct.TYPE_3__* %88, %struct.TYPE_3__** %5, align 8
  br label %75

89:                                               ; preds = %75
  br label %90

90:                                               ; preds = %89, %62
  %91 = call i64 @malloc(i32 16)
  %92 = inttoptr i64 %91 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %92, %struct.TYPE_3__** %5, align 8
  %93 = icmp ne %struct.TYPE_3__* %92, null
  br i1 %93, label %94, label %108

94:                                               ; preds = %90
  %95 = load i64, i64* %7, align 8
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @usrtb, align 8
  %99 = load i64, i64* %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %98, i64 %99
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  store %struct.TYPE_3__* %101, %struct.TYPE_3__** %103, align 8
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %105 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @usrtb, align 8
  %106 = load i64, i64* %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %105, i64 %106
  store %struct.TYPE_3__* %104, %struct.TYPE_3__** %107, align 8
  store i32 0, i32* %2, align 4
  br label %110

108:                                              ; preds = %90
  %109 = call i32 (i32, i8*, ...) @paxwarn(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %110

110:                                              ; preds = %108, %94, %84, %51, %24, %15
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @paxwarn(i32, i8*, ...) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @endpwent(...) #1

declare dso_local i64 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
