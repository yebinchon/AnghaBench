; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_ftree.c_next_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_ftree.c_next_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i64, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i8*, i64, i8*, i32, i32, %struct.TYPE_6__, i64, i64 }

@ftree_skip = common dso_local global i64 0, align 8
@ftsp = common dso_local global i32 0, align 4
@ftent = common dso_local global %struct.TYPE_8__* null, align 8
@tflag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"File system cycle found at %s\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Unable to read directory %s\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"File system traversal error\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Unable to access %s\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@PAX_DIR = common dso_local global i32 0, align 4
@PAX_CHR = common dso_local global i32 0, align 4
@PAX_BLK = common dso_local global i32 0, align 4
@PAX_REG = common dso_local global i32 0, align 4
@PAX_SLK = common dso_local global i32 0, align 4
@PAXPATHLEN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Unable to read symlink %s\00", align 1
@PAX_SCK = common dso_local global i32 0, align 4
@PAX_FIF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @next_file(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %7 = load i64, i64* @ftree_skip, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  store i64 0, i64* @ftree_skip, align 8
  %10 = call i64 (...) @ftree_arg()
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 -1, i32* %2, align 4
  br label %210

13:                                               ; preds = %9
  br label %14

14:                                               ; preds = %13, %1
  br label %15

15:                                               ; preds = %163, %71, %66, %58, %53, %46, %45, %23, %14
  %16 = load i32, i32* @ftsp, align 4
  %17 = call %struct.TYPE_8__* @fts_read(i32 %16)
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** @ftent, align 8
  %18 = icmp eq %struct.TYPE_8__* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = call i64 (...) @ftree_arg()
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 -1, i32* %2, align 4
  br label %210

23:                                               ; preds = %19
  br label %15

24:                                               ; preds = %15
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ftent, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %79 [
    i32 145, label %28
    i32 143, label %28
    i32 139, label %28
    i32 136, label %28
    i32 135, label %28
    i32 141, label %29
    i32 144, label %53
    i32 142, label %58
    i32 140, label %66
    i32 138, label %71
    i32 137, label %71
  ]

28:                                               ; preds = %24, %24, %24, %24, %24
  br label %79

29:                                               ; preds = %24
  %30 = load i32, i32* @tflag, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ftent, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ftent, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @get_atdir(i32 %37, i32 %42, i32* %6, i32* %5)
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %32, %29
  br label %15

46:                                               ; preds = %32
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ftent, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @set_ftime(i32 %49, i32 %50, i32 %51, i32 1)
  br label %15

53:                                               ; preds = %24
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ftent, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %15

58:                                               ; preds = %24
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ftent, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ftent, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32, i32, i8*, ...) @syswarn(i32 1, i32 %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %15

66:                                               ; preds = %24
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ftent, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i32, i32, i8*, ...) @syswarn(i32 1, i32 %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %15

71:                                               ; preds = %24, %24
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ftent, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ftent, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32, i32, i8*, ...) @syswarn(i32 1, i32 %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  br label %15

79:                                               ; preds = %24, %28
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 7
  store i64 0, i64* %81, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 8
  store i64 0, i64* %83, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  store i8 0, i8* %89, align 1
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 6
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ftent, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = bitcast %struct.TYPE_6__* %91 to i8*
  %96 = bitcast %struct.TYPE_6__* %94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %95, i8* align 8 %96, i64 32, i1 false)
  %97 = load i32, i32* @S_IFMT, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 6
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %97, %101
  switch i32 %102, label %187 [
    i32 132, label %103
    i32 133, label %131
    i32 134, label %135
    i32 129, label %139
    i32 130, label %149
    i32 128, label %179
    i32 131, label %183
  ]

103:                                              ; preds = %79
  %104 = load i32, i32* @PAX_DIR, align 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 5
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @tflag, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %103
  br label %187

110:                                              ; preds = %103
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ftent, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 6
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 6
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 6
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 6
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @add_atdir(i32 %113, i32 %117, i32 %121, i32 %125, i32 %129)
  br label %187

131:                                              ; preds = %79
  %132 = load i32, i32* @PAX_CHR, align 4
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 5
  store i32 %132, i32* %134, align 4
  br label %187

135:                                              ; preds = %79
  %136 = load i32, i32* @PAX_BLK, align 4
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 5
  store i32 %136, i32* %138, align 4
  br label %187

139:                                              ; preds = %79
  %140 = load i32, i32* @PAX_REG, align 4
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 5
  store i32 %140, i32* %142, align 4
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 6
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 7
  store i64 %146, i64* %148, align 8
  br label %187

149:                                              ; preds = %79
  %150 = load i32, i32* @PAX_SLK, align 4
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 5
  store i32 %150, i32* %152, align 4
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ftent, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  %159 = load i32, i32* @PAXPATHLEN, align 4
  %160 = sub nsw i32 %159, 1
  %161 = call i32 @readlink(i32 %155, i8* %158, i32 %160)
  store i32 %161, i32* %4, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %149
  %164 = load i32, i32* @errno, align 4
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ftent, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 (i32, i32, i8*, ...) @syswarn(i32 1, i32 %164, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %167)
  br label %15

169:                                              ; preds = %149
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 1
  %172 = load i8*, i8** %171, align 8
  %173 = load i32, i32* %4, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  store i8 0, i8* %175, align 1
  %176 = load i32, i32* %4, align 4
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 8
  br label %187

179:                                              ; preds = %79
  %180 = load i32, i32* @PAX_SCK, align 4
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 5
  store i32 %180, i32* %182, align 4
  br label %187

183:                                              ; preds = %79
  %184 = load i32, i32* @PAX_FIF, align 4
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 5
  store i32 %184, i32* %186, align 4
  br label %187

187:                                              ; preds = %79, %183, %179, %169, %139, %135, %131, %110, %109
  br label %188

188:                                              ; preds = %187
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 3
  %191 = load i8*, i8** %190, align 8
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ftent, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i64 @l_strncpy(i8* %191, i32 %194, i32 7)
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 2
  store i64 %195, i64* %197, align 8
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 3
  %200 = load i8*, i8** %199, align 8
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds i8, i8* %200, i64 %203
  store i8 0, i8* %204, align 1
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ftent, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 4
  store i32 %207, i32* %209, align 8
  store i32 0, i32* %2, align 4
  br label %210

210:                                              ; preds = %188, %22, %12
  %211 = load i32, i32* %2, align 4
  ret i32 %211
}

declare dso_local i64 @ftree_arg(...) #1

declare dso_local %struct.TYPE_8__* @fts_read(i32) #1

declare dso_local i32 @get_atdir(i32, i32, i32*, i32*) #1

declare dso_local i32 @set_ftime(i32, i32, i32, i32) #1

declare dso_local i32 @paxwarn(i32, i8*, i32) #1

declare dso_local i32 @syswarn(i32, i32, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @add_atdir(i32, i32, i32, i32, i32) #1

declare dso_local i32 @readlink(i32, i8*, i32) #1

declare dso_local i64 @l_strncpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
