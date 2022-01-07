; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_var.c_VarFind.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_var.c_VarFind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c".ALLSRC\00", align 1
@ALLSRC = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c".ARCHIVE\00", align 1
@ARCHIVE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c".IMPSRC\00", align 1
@IMPSRC = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c".MEMBER\00", align 1
@MEMBER = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c".OODATE\00", align 1
@OODATE = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c".PREFIX\00", align 1
@PREFIX = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c".TARGET\00", align 1
@TARGET = common dso_local global i8* null, align 8
@FIND_CMD = common dso_local global i32 0, align 4
@VAR_CMD = common dso_local global %struct.TYPE_10__* null, align 8
@checkEnvFirst = common dso_local global i64 0, align 8
@FIND_GLOBAL = common dso_local global i32 0, align 4
@VAR_GLOBAL = common dso_local global %struct.TYPE_10__* null, align 8
@VAR_INTERNAL = common dso_local global %struct.TYPE_10__* null, align 8
@FIND_ENV = common dso_local global i32 0, align 4
@VAR_FROM_ENV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (i8*, %struct.TYPE_10__*, i32)* @VarFind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @VarFind(i8* %0, %struct.TYPE_10__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 46
  br i1 %15, label %16, label %76

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = call i64 @isupper(i8 zeroext %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %76

22:                                               ; preds = %16
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  switch i32 %26, label %75 [
    i32 65, label %27
    i32 73, label %40
    i32 77, label %47
    i32 79, label %54
    i32 80, label %61
    i32 84, label %68
  ]

27:                                               ; preds = %22
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i8*, i8** @ALLSRC, align 8
  store i8* %32, i8** %5, align 8
  br label %33

33:                                               ; preds = %31, %27
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load i8*, i8** @ARCHIVE, align 8
  store i8* %38, i8** %5, align 8
  br label %39

39:                                               ; preds = %37, %33
  br label %75

40:                                               ; preds = %22
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = load i8*, i8** @IMPSRC, align 8
  store i8* %45, i8** %5, align 8
  br label %46

46:                                               ; preds = %44, %40
  br label %75

47:                                               ; preds = %22
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = load i8*, i8** @MEMBER, align 8
  store i8* %52, i8** %5, align 8
  br label %53

53:                                               ; preds = %51, %47
  br label %75

54:                                               ; preds = %22
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @strcmp(i8* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = load i8*, i8** @OODATE, align 8
  store i8* %59, i8** %5, align 8
  br label %60

60:                                               ; preds = %58, %54
  br label %75

61:                                               ; preds = %22
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = load i8*, i8** @PREFIX, align 8
  store i8* %66, i8** %5, align 8
  br label %67

67:                                               ; preds = %65, %61
  br label %75

68:                                               ; preds = %22
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 @strcmp(i8* %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = load i8*, i8** @TARGET, align 8
  store i8* %73, i8** %5, align 8
  br label %74

74:                                               ; preds = %72, %68
  br label %75

75:                                               ; preds = %22, %74, %67, %60, %53, %46, %39
  br label %76

76:                                               ; preds = %75, %16, %3
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i8*, i8** %5, align 8
  %80 = call i32* @Hash_FindEntry(i32* %78, i8* %79)
  store i32* %80, i32** %8, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %97

83:                                               ; preds = %76
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @FIND_CMD, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %83
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** @VAR_CMD, align 8
  %91 = icmp ne %struct.TYPE_10__* %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** @VAR_CMD, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i8*, i8** %5, align 8
  %96 = call i32* @Hash_FindEntry(i32* %94, i8* %95)
  store i32* %96, i32** %8, align 8
  br label %97

97:                                               ; preds = %92, %88, %83, %76
  %98 = load i64, i64* @checkEnvFirst, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %129, label %100

100:                                              ; preds = %97
  %101 = load i32*, i32** %8, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %129

103:                                              ; preds = %100
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @FIND_GLOBAL, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %129

108:                                              ; preds = %103
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** @VAR_GLOBAL, align 8
  %111 = icmp ne %struct.TYPE_10__* %109, %110
  br i1 %111, label %112, label %129

112:                                              ; preds = %108
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** @VAR_GLOBAL, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i8*, i8** %5, align 8
  %116 = call i32* @Hash_FindEntry(i32* %114, i8* %115)
  store i32* %116, i32** %8, align 8
  %117 = load i32*, i32** %8, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %128

119:                                              ; preds = %112
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** @VAR_INTERNAL, align 8
  %122 = icmp ne %struct.TYPE_10__* %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** @VAR_INTERNAL, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load i8*, i8** %5, align 8
  %127 = call i32* @Hash_FindEntry(i32* %125, i8* %126)
  store i32* %127, i32** %8, align 8
  br label %128

128:                                              ; preds = %123, %119, %112
  br label %129

129:                                              ; preds = %128, %108, %103, %100, %97
  %130 = load i32*, i32** %8, align 8
  %131 = icmp eq i32* %130, null
  br i1 %131, label %132, label %200

132:                                              ; preds = %129
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* @FIND_ENV, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %200

137:                                              ; preds = %132
  %138 = load i8*, i8** %5, align 8
  %139 = call i8* @getenv(i8* %138)
  store i8* %139, i8** %10, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %163

141:                                              ; preds = %137
  %142 = call %struct.TYPE_9__* @bmake_malloc(i32 12)
  store %struct.TYPE_9__* %142, %struct.TYPE_9__** %9, align 8
  %143 = load i8*, i8** %5, align 8
  %144 = call i32 @bmake_strdup(i8* %143)
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 4
  %147 = load i8*, i8** %10, align 8
  %148 = call i32 @strlen(i8* %147)
  store i32 %148, i32* %11, align 4
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 1
  %151 = load i32, i32* %11, align 4
  %152 = add nsw i32 %151, 1
  %153 = call i32 @Buf_Init(i32* %150, i32 %152)
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 1
  %156 = load i32, i32* %11, align 4
  %157 = load i8*, i8** %10, align 8
  %158 = call i32 @Buf_AddBytes(i32* %155, i32 %156, i8* %157)
  %159 = load i32, i32* @VAR_FROM_ENV, align 4
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 4
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %162, %struct.TYPE_9__** %4, align 8
  br label %208

163:                                              ; preds = %137
  %164 = load i64, i64* @checkEnvFirst, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %199

166:                                              ; preds = %163
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* @FIND_GLOBAL, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %199

171:                                              ; preds = %166
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** @VAR_GLOBAL, align 8
  %174 = icmp ne %struct.TYPE_10__* %172, %173
  br i1 %174, label %175, label %199

175:                                              ; preds = %171
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** @VAR_GLOBAL, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = load i8*, i8** %5, align 8
  %179 = call i32* @Hash_FindEntry(i32* %177, i8* %178)
  store i32* %179, i32** %8, align 8
  %180 = load i32*, i32** %8, align 8
  %181 = icmp eq i32* %180, null
  br i1 %181, label %182, label %191

182:                                              ; preds = %175
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** @VAR_INTERNAL, align 8
  %185 = icmp ne %struct.TYPE_10__* %183, %184
  br i1 %185, label %186, label %191

186:                                              ; preds = %182
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** @VAR_INTERNAL, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = load i8*, i8** %5, align 8
  %190 = call i32* @Hash_FindEntry(i32* %188, i8* %189)
  store i32* %190, i32** %8, align 8
  br label %191

191:                                              ; preds = %186, %182, %175
  %192 = load i32*, i32** %8, align 8
  %193 = icmp eq i32* %192, null
  br i1 %193, label %194, label %195

194:                                              ; preds = %191
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %208

195:                                              ; preds = %191
  %196 = load i32*, i32** %8, align 8
  %197 = call i64 @Hash_GetValue(i32* %196)
  %198 = inttoptr i64 %197 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %198, %struct.TYPE_9__** %4, align 8
  br label %208

199:                                              ; preds = %171, %166, %163
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %208

200:                                              ; preds = %132, %129
  %201 = load i32*, i32** %8, align 8
  %202 = icmp eq i32* %201, null
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %208

204:                                              ; preds = %200
  %205 = load i32*, i32** %8, align 8
  %206 = call i64 @Hash_GetValue(i32* %205)
  %207 = inttoptr i64 %206 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %207, %struct.TYPE_9__** %4, align 8
  br label %208

208:                                              ; preds = %204, %203, %199, %195, %194, %141
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  ret %struct.TYPE_9__* %209
}

declare dso_local i64 @isupper(i8 zeroext) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32* @Hash_FindEntry(i32*, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local %struct.TYPE_9__* @bmake_malloc(i32) #1

declare dso_local i32 @bmake_strdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @Buf_Init(i32*, i32) #1

declare dso_local i32 @Buf_AddBytes(i32*, i32, i8*) #1

declare dso_local i64 @Hash_GetValue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
