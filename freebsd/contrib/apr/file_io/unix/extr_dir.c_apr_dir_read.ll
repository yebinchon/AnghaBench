; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr/file_io/unix/extr_dir.c_apr_dir_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr/file_io/unix/extr_dir.c_apr_dir_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i64, i32, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_11__*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }

@errno = common dso_local global i64 0, align 8
@APR_SUCCESS = common dso_local global i64 0, align 8
@APR_ENOENT = common dso_local global i64 0, align 8
@APR_FINFO_NAME = common dso_local global i32 0, align 4
@APR_PATH_MAX = common dso_local global i32 0, align 4
@APR_FINFO_LINK = common dso_local global i32 0, align 4
@APR_INCOMPLETE = common dso_local global i64 0, align 8
@APR_FINFO_INODE = common dso_local global i32 0, align 4
@APR_FINFO_TYPE = common dso_local global i32 0, align 4
@APR_UNKFILE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @apr_dir_read(%struct.TYPE_9__* %0, i32 %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* @errno, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.TYPE_11__* @readdir(i32 %14)
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %17, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = icmp eq %struct.TYPE_11__* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %3
  %23 = load i64, i64* @errno, align 8
  %24 = load i64, i64* @APR_SUCCESS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i64, i64* @APR_ENOENT, align 8
  store i64 %27, i64* %8, align 8
  br label %30

28:                                               ; preds = %22
  %29 = load i64, i64* @errno, align 8
  store i64 %29, i64* %8, align 8
  br label %30

30:                                               ; preds = %28, %26
  br label %31

31:                                               ; preds = %30, %3
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 5
  store i32* null, i32** %33, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load i64, i64* %8, align 8
  store i64 %39, i64* %4, align 8
  br label %148

40:                                               ; preds = %31
  %41 = load i32, i32* @APR_FINFO_NAME, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %99

47:                                               ; preds = %40
  %48 = load i32, i32* @APR_PATH_MAX, align 4
  %49 = zext i32 %48 to i64
  %50 = call i8* @llvm.stacksave()
  store i8* %50, i8** %9, align 8
  %51 = alloca i8, i64 %49, align 16
  store i64 %49, i64* %10, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = trunc i64 %49 to i32
  %56 = call i8* @apr_cpystrn(i8* %51, i32 %54, i32 %55)
  store i8* %56, i8** %11, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = icmp ugt i8* %57, %51
  br i1 %58, label %59, label %74

59:                                               ; preds = %47
  %60 = load i8*, i8** %11, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 -1
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 47
  br i1 %64, label %65, label %74

65:                                               ; preds = %59
  %66 = load i8*, i8** %11, align 8
  %67 = load i32, i32* @APR_PATH_MAX, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %51, i64 %68
  %70 = icmp ult i8* %66, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i8*, i8** %11, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %11, align 8
  store i8 47, i8* %72, align 1
  br label %74

74:                                               ; preds = %71, %65, %59, %47
  %75 = load i8*, i8** %11, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %11, align 8
  %82 = ptrtoint i8* %81 to i64
  %83 = ptrtoint i8* %51 to i64
  %84 = sub i64 %82, %83
  %85 = sub i64 %49, %84
  %86 = trunc i64 %85 to i32
  %87 = call i8* @apr_cpystrn(i8* %75, i32 %80, i32 %86)
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %89 = load i32, i32* @APR_FINFO_LINK, align 4
  %90 = load i32, i32* %6, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @apr_stat(%struct.TYPE_9__* %88, i8* %51, i32 %91, i32 %94)
  store i64 %95, i64* %8, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 5
  store i32* null, i32** %97, align 8
  %98 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %98)
  br label %99

99:                                               ; preds = %74, %40
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %99
  %103 = load i64, i64* %8, align 8
  %104 = load i64, i64* @APR_SUCCESS, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = load i64, i64* %8, align 8
  %108 = load i64, i64* @APR_INCOMPLETE, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %106, %102
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = xor i32 %113, -1
  %115 = load i32, i32* %6, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* %6, align 4
  br label %125

117:                                              ; preds = %106, %99
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  store i32 0, i32* %124, align 8
  br label %125

125:                                              ; preds = %117, %110
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @apr_pstrdup(i32 %128, i32 %133)
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* @APR_FINFO_NAME, align 4
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %125
  %145 = load i64, i64* @APR_INCOMPLETE, align 8
  store i64 %145, i64* %4, align 8
  br label %148

146:                                              ; preds = %125
  %147 = load i64, i64* @APR_SUCCESS, align 8
  store i64 %147, i64* %4, align 8
  br label %148

148:                                              ; preds = %146, %144, %36
  %149 = load i64, i64* %4, align 8
  ret i64 %149
}

declare dso_local %struct.TYPE_11__* @readdir(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @apr_cpystrn(i8*, i32, i32) #1

declare dso_local i64 @apr_stat(%struct.TYPE_9__*, i8*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @apr_pstrdup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
