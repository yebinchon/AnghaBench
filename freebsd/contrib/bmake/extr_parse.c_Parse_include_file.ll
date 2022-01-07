; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_parse.c_Parse_include_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_parse.c_Parse_include_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, %struct.loadedfile* }
%struct.loadedfile = type { i32 }

@curFile = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"../\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"/..\00", align 1
@STR_ADDSLASH = common dso_local global i32 0, align 4
@parseIncPath = common dso_local global i32* null, align 8
@dirSearchPath = common dso_local global i32* null, align 8
@sysIncPath = common dso_local global i32* null, align 8
@defIncPath = common dso_local global i32* null, align 8
@PARSE_FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Could not find %s\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"Cannot open %s\00", align 1
@loadedfile_nextbuf = common dso_local global i32 0, align 4
@doing_depend = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64, i32)* @Parse_include_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Parse_include_file(i8* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.loadedfile*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 47
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i8*, i8** %5, align 8
  %25 = call i8* @bmake_strdup(i8* %24)
  br label %27

26:                                               ; preds = %4
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi i8* [ %25, %23 ], [ null, %26 ]
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %123

31:                                               ; preds = %27
  %32 = load i64, i64* %6, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %123, label %34

34:                                               ; preds = %31
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curFile, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i8* @bmake_strdup(i8* %37)
  store i8* %38, i8** %13, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = call i8* @strrchr(i8* %39, i8 signext 47)
  store i8* %40, i8** %12, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %88

43:                                               ; preds = %34
  %44 = load i8*, i8** %12, align 8
  store i8 0, i8* %44, align 1
  store i32 0, i32* %15, align 4
  br label %45

45:                                               ; preds = %65, %43
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = call i64 @strncmp(i8* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %45
  %53 = load i8*, i8** %13, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = call i8* @strrchr(i8* %54, i8 signext 47)
  store i8* %55, i8** %12, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %52
  %59 = load i8*, i8** %12, align 8
  %60 = call i64 @strcmp(i8* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58, %52
  br label %68

63:                                               ; preds = %58
  %64 = load i8*, i8** %12, align 8
  store i8 0, i8* %64, align 1
  br label %65

65:                                               ; preds = %63
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %66, 3
  store i32 %67, i32* %15, align 4
  br label %45

68:                                               ; preds = %62, %45
  %69 = load i8*, i8** %13, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = load i32, i32* %15, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i32, i32* @STR_ADDSLASH, align 4
  %75 = call i8* @str_concat(i8* %69, i8* %73, i32 %74)
  store i8* %75, i8** %11, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = load i32*, i32** @parseIncPath, align 8
  %78 = call i8* @Dir_FindFile(i8* %76, i32* %77)
  store i8* %78, i8** %10, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %68
  %82 = load i8*, i8** %11, align 8
  %83 = load i32*, i32** @dirSearchPath, align 8
  %84 = call i8* @Dir_FindFile(i8* %82, i32* %83)
  store i8* %84, i8** %10, align 8
  br label %85

85:                                               ; preds = %81, %68
  %86 = load i8*, i8** %11, align 8
  %87 = call i32 @free(i8* %86)
  br label %88

88:                                               ; preds = %85, %34
  %89 = load i8*, i8** %13, align 8
  %90 = call i32 @free(i8* %89)
  %91 = load i8*, i8** %10, align 8
  %92 = icmp eq i8* %91, null
  br i1 %92, label %93, label %122

93:                                               ; preds = %88
  store i32* null, i32** %17, align 8
  %94 = load i8*, i8** %5, align 8
  %95 = call i8* @strrchr(i8* %94, i8 signext 46)
  store i8* %95, i8** %16, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %107

97:                                               ; preds = %93
  %98 = load i8*, i8** %16, align 8
  %99 = call i32* @Suff_GetPath(i8* %98)
  store i32* %99, i32** %17, align 8
  %100 = load i32*, i32** %17, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i8*, i8** %5, align 8
  %104 = load i32*, i32** %17, align 8
  %105 = call i8* @Dir_FindFile(i8* %103, i32* %104)
  store i8* %105, i8** %10, align 8
  br label %106

106:                                              ; preds = %102, %97
  br label %107

107:                                              ; preds = %106, %93
  %108 = load i8*, i8** %10, align 8
  %109 = icmp eq i8* %108, null
  br i1 %109, label %110, label %121

110:                                              ; preds = %107
  %111 = load i8*, i8** %5, align 8
  %112 = load i32*, i32** @parseIncPath, align 8
  %113 = call i8* @Dir_FindFile(i8* %111, i32* %112)
  store i8* %113, i8** %10, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = icmp eq i8* %114, null
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load i8*, i8** %5, align 8
  %118 = load i32*, i32** @dirSearchPath, align 8
  %119 = call i8* @Dir_FindFile(i8* %117, i32* %118)
  store i8* %119, i8** %10, align 8
  br label %120

120:                                              ; preds = %116, %110
  br label %121

121:                                              ; preds = %120, %107
  br label %122

122:                                              ; preds = %121, %88
  br label %123

123:                                              ; preds = %122, %31, %27
  %124 = load i8*, i8** %10, align 8
  %125 = icmp eq i8* %124, null
  br i1 %125, label %126, label %138

126:                                              ; preds = %123
  %127 = load i8*, i8** %5, align 8
  %128 = load i32*, i32** @sysIncPath, align 8
  %129 = call i64 @Lst_IsEmpty(i32* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = load i32*, i32** @defIncPath, align 8
  br label %135

133:                                              ; preds = %126
  %134 = load i32*, i32** @sysIncPath, align 8
  br label %135

135:                                              ; preds = %133, %131
  %136 = phi i32* [ %132, %131 ], [ %134, %133 ]
  %137 = call i8* @Dir_FindFile(i8* %127, i32* %136)
  store i8* %137, i8** %10, align 8
  br label %138

138:                                              ; preds = %135, %123
  %139 = load i8*, i8** %10, align 8
  %140 = icmp eq i8* %139, null
  br i1 %140, label %141, label %149

141:                                              ; preds = %138
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %141
  %145 = load i32, i32* @PARSE_FATAL, align 4
  %146 = load i8*, i8** %5, align 8
  %147 = call i32 @Parse_Error(i32 %145, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %146)
  br label %148

148:                                              ; preds = %144, %141
  br label %181

149:                                              ; preds = %138
  %150 = load i8*, i8** %10, align 8
  %151 = load i32, i32* @O_RDONLY, align 4
  %152 = call i32 @open(i8* %150, i32 %151)
  store i32 %152, i32* %14, align 4
  %153 = load i32, i32* %14, align 4
  %154 = icmp eq i32 %153, -1
  br i1 %154, label %155, label %165

155:                                              ; preds = %149
  %156 = load i32, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %162, label %158

158:                                              ; preds = %155
  %159 = load i32, i32* @PARSE_FATAL, align 4
  %160 = load i8*, i8** %10, align 8
  %161 = call i32 @Parse_Error(i32 %159, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %160)
  br label %162

162:                                              ; preds = %158, %155
  %163 = load i8*, i8** %10, align 8
  %164 = call i32 @free(i8* %163)
  br label %181

165:                                              ; preds = %149
  %166 = load i8*, i8** %10, align 8
  %167 = load i32, i32* %14, align 4
  %168 = call %struct.loadedfile* @loadfile(i8* %166, i32 %167)
  store %struct.loadedfile* %168, %struct.loadedfile** %9, align 8
  %169 = call i32 (...) @ParseSetIncludedFile()
  %170 = load i8*, i8** %10, align 8
  %171 = load i32, i32* @loadedfile_nextbuf, align 4
  %172 = load %struct.loadedfile*, %struct.loadedfile** %9, align 8
  %173 = call i32 @Parse_SetInput(i8* %170, i32 0, i32 -1, i32 %171, %struct.loadedfile* %172)
  %174 = load %struct.loadedfile*, %struct.loadedfile** %9, align 8
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curFile, align 8
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 1
  store %struct.loadedfile* %174, %struct.loadedfile** %176, align 8
  %177 = load i64, i64* %7, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %165
  %180 = load i64, i64* %7, align 8
  store i64 %180, i64* @doing_depend, align 8
  br label %181

181:                                              ; preds = %148, %162, %179, %165
  ret void
}

declare dso_local i8* @bmake_strdup(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @str_concat(i8*, i8*, i32) #1

declare dso_local i8* @Dir_FindFile(i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @Suff_GetPath(i8*) #1

declare dso_local i64 @Lst_IsEmpty(i32*) #1

declare dso_local i32 @Parse_Error(i32, i8*, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local %struct.loadedfile* @loadfile(i8*, i32) #1

declare dso_local i32 @ParseSetIncludedFile(...) #1

declare dso_local i32 @Parse_SetInput(i8*, i32, i32, i32, %struct.loadedfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
