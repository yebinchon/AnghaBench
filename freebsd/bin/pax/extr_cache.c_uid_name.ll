; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_cache.c_uid_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_cache.c_uid_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, i32 }
%struct.passwd = type { i32 }

@usrtb = common dso_local global %struct.TYPE_3__** null, align 8
@UNM_SZ = common dso_local global i32 0, align 4
@INVALID = common dso_local global i64 0, align 8
@pwopn = common dso_local global i32 0, align 4
@UNMLEN = common dso_local global i32 0, align 4
@VALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uid_name(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.passwd*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @strlen(i8* %9)
  store i32 %10, i32* %8, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %2
  store i32 -1, i32* %3, align 4
  br label %124

19:                                               ; preds = %12
  %20 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @usrtb, align 8
  %21 = icmp eq %struct.TYPE_3__** %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = call i64 (...) @usrtb_start()
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %124

26:                                               ; preds = %22, %19
  %27 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @usrtb, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @UNM_SZ, align 4
  %31 = call i64 @st_hash(i8* %28, i32 %29, i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %27, i64 %31
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %7, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = icmp ne %struct.TYPE_3__* %34, null
  br i1 %35, label %36, label %60

36:                                               ; preds = %26
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %36
  %42 = load i8*, i8** %4, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strcmp(i8* %42, i8* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %41
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @INVALID, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 -1, i32* %3, align 4
  br label %124

55:                                               ; preds = %48
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32*, i32** %5, align 8
  store i32 %58, i32* %59, align 4
  store i32 0, i32* %3, align 4
  br label %124

60:                                               ; preds = %41, %36, %26
  %61 = load i32, i32* @pwopn, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = call i32 @setpassent(i32 1)
  %65 = load i32, i32* @pwopn, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* @pwopn, align 4
  br label %67

67:                                               ; preds = %63, %60
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %69 = icmp eq %struct.TYPE_3__* %68, null
  br i1 %69, label %70, label %79

70:                                               ; preds = %67
  %71 = call i64 @malloc(i32 24)
  %72 = inttoptr i64 %71 to %struct.TYPE_3__*
  %73 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @usrtb, align 8
  %74 = load i8*, i8** %4, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @UNM_SZ, align 4
  %77 = call i64 @st_hash(i8* %74, i32 %75, i32 %76)
  %78 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %73, i64 %77
  store %struct.TYPE_3__* %72, %struct.TYPE_3__** %78, align 8
  store %struct.TYPE_3__* %72, %struct.TYPE_3__** %7, align 8
  br label %79

79:                                               ; preds = %70, %67
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %81 = icmp eq %struct.TYPE_3__* %80, null
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load i8*, i8** %4, align 8
  %84 = call %struct.passwd* @getpwnam(i8* %83)
  store %struct.passwd* %84, %struct.passwd** %6, align 8
  %85 = icmp eq %struct.passwd* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 -1, i32* %3, align 4
  br label %124

87:                                               ; preds = %82
  %88 = load %struct.passwd*, %struct.passwd** %6, align 8
  %89 = getelementptr inbounds %struct.passwd, %struct.passwd* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %5, align 8
  store i32 %90, i32* %91, align 4
  store i32 0, i32* %3, align 4
  br label %124

92:                                               ; preds = %79
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = load i8*, i8** %4, align 8
  %97 = load i32, i32* @UNMLEN, align 4
  %98 = sub nsw i32 %97, 1
  %99 = call i32 @strncpy(i8* %95, i8* %96, i32 %98)
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = load i32, i32* @UNMLEN, align 4
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %102, i64 %105
  store i8 0, i8* %106, align 1
  %107 = load i8*, i8** %4, align 8
  %108 = call %struct.passwd* @getpwnam(i8* %107)
  store %struct.passwd* %108, %struct.passwd** %6, align 8
  %109 = icmp eq %struct.passwd* %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %92
  %111 = load i64, i64* @INVALID, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  store i32 -1, i32* %3, align 4
  br label %124

114:                                              ; preds = %92
  %115 = load i64, i64* @VALID, align 8
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  %118 = load %struct.passwd*, %struct.passwd** %6, align 8
  %119 = getelementptr inbounds %struct.passwd, %struct.passwd* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  %123 = load i32*, i32** %5, align 8
  store i32 %120, i32* %123, align 4
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %114, %110, %87, %86, %55, %54, %25, %18
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @usrtb_start(...) #1

declare dso_local i64 @st_hash(i8*, i32, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @setpassent(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
