; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_tables.c_chk_ftime.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_tables.c_chk_ftime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i64, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64 }

@PAXPATHLEN = common dso_local global i32 0, align 4
@ftab = common dso_local global %struct.TYPE_8__** null, align 8
@F_TAB_SZ = common dso_local global i32 0, align 4
@ffd = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed ftime table seek\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed ftime table read\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed write to file time table\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed seek on file time table\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"File time table ran out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chk_ftime(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %10 = load i32, i32* @PAXPATHLEN, align 4
  %11 = add nsw i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @ftab, align 8
  %16 = icmp eq %struct.TYPE_8__** %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %156

18:                                               ; preds = %1
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %5, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @F_TAB_SZ, align 4
  %27 = call i64 @st_hash(i32 %24, i32 %25, i32 %26)
  store i64 %27, i64* %6, align 8
  %28 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @ftab, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %28, i64 %29
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %4, align 8
  %32 = icmp ne %struct.TYPE_8__* %31, null
  br i1 %32, label %33, label %100

33:                                               ; preds = %18
  br label %34

34:                                               ; preds = %75, %33
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = icmp ne %struct.TYPE_8__* %35, null
  br i1 %36, label %37, label %79

37:                                               ; preds = %34
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %75

43:                                               ; preds = %37
  %44 = load i32, i32* @ffd, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @SEEK_SET, align 4
  %49 = call i64 @lseek(i32 %44, i64 %47, i32 %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %43
  %55 = load i32, i32* @errno, align 4
  %56 = call i32 @syswarn(i32 1, i32 %55, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %156

57:                                               ; preds = %43
  %58 = load i32, i32* @ffd, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @read(i32 %58, i8* %14, i32 %59)
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* @errno, align 4
  %65 = call i32 @syswarn(i32 1, i32 %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %156

66:                                               ; preds = %57
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @strncmp(i8* %14, i32 %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %66
  br label %79

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %37
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  store %struct.TYPE_8__* %78, %struct.TYPE_8__** %4, align 8
  br label %34

79:                                               ; preds = %73, %34
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %81 = icmp ne %struct.TYPE_8__* %80, null
  br i1 %81, label %82, label %99

82:                                               ; preds = %79
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %86, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %82
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %156

98:                                               ; preds = %82
  store i32 1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %156

99:                                               ; preds = %79
  br label %100

100:                                              ; preds = %99, %18
  %101 = call i64 @malloc(i32 32)
  %102 = inttoptr i64 %101 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %102, %struct.TYPE_8__** %4, align 8
  %103 = icmp ne %struct.TYPE_8__* %102, null
  br i1 %103, label %104, label %147

104:                                              ; preds = %100
  %105 = load i32, i32* @ffd, align 4
  %106 = load i32, i32* @SEEK_END, align 4
  %107 = call i64 @lseek(i32 %105, i64 0, i32 %106)
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  store i64 %107, i64* %109, align 8
  %110 = icmp sge i64 %107, 0
  br i1 %110, label %111, label %143

111:                                              ; preds = %104
  %112 = load i32, i32* @ffd, align 4
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @write(i32 %112, i32 %115, i32 %116)
  %118 = load i32, i32* %5, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %140

120:                                              ; preds = %111
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 2
  store i64 %124, i64* %126, align 8
  %127 = load i32, i32* %5, align 4
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @ftab, align 8
  %131 = load i64, i64* %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %130, i64 %131
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 3
  store %struct.TYPE_8__* %133, %struct.TYPE_8__** %135, align 8
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %137 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @ftab, align 8
  %138 = load i64, i64* %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %137, i64 %138
  store %struct.TYPE_8__* %136, %struct.TYPE_8__** %139, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %156

140:                                              ; preds = %111
  %141 = load i32, i32* @errno, align 4
  %142 = call i32 @syswarn(i32 1, i32 %141, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %146

143:                                              ; preds = %104
  %144 = load i32, i32* @errno, align 4
  %145 = call i32 @syswarn(i32 1, i32 %144, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %146

146:                                              ; preds = %143, %140
  br label %149

147:                                              ; preds = %100
  %148 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %146
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %151 = icmp ne %struct.TYPE_8__* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %154 = call i32 @free(%struct.TYPE_8__* %153)
  br label %155

155:                                              ; preds = %152, %149
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %156

156:                                              ; preds = %155, %120, %98, %91, %63, %54, %17
  %157 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %157)
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @st_hash(i32, i32, i32) #2

declare dso_local i64 @lseek(i32, i64, i32) #2

declare dso_local i32 @syswarn(i32, i32, i8*) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @strncmp(i8*, i32, i32) #2

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @write(i32, i32, i32) #2

declare dso_local i32 @paxwarn(i32, i8*) #2

declare dso_local i32 @free(%struct.TYPE_8__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
