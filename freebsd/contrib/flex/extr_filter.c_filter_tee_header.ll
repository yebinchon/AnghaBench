; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_filter.c_filter_tee_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_filter.c_filter_tee_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter = type { i32*, i32 }

@.str = private unnamed_addr constant [14 x i8] c"dup(1) failed\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stdout = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"freopen(headerfilename) failed\00", align 1
@check_4_gnu_m4 = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"m4_changecom`'m4_dnl\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"m4_changequote`'m4_dnl\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"m4_changequote([[,]])[[]]m4_dnl\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"m4_define([[M4_YY_NOOP]])[[]]m4_dnl\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"m4_define( [[M4_YY_IN_HEADER]],[[]])m4_dnl\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"#ifndef %sHEADER_H\0A\00", align 1
@prefix = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [22 x i8] c"#define %sHEADER_H 1\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"#define %sIN_HEADER 1\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"m4_define( [[M4_YY_OUTFILE_NAME]],[[%s]])m4_dnl\0A\00", align 1
@headerfilename = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [9 x i8] c"<stdout>\00", align 1
@outfilename = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [39 x i8] c"flex_alloc failed in filter_tee_header\00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"#line 4000 \22M4_YY_OUTFILE_NAME\22\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"#undef %sIN_HEADER\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"#endif /* %sHEADER_H */\0A\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"m4_undefine( [[M4_YY_IN_HEADER]])m4_dnl\0A\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"error writing output file %s\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"error closing output file %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @filter_tee_header(%struct.filter* %0) #0 {
  %2 = alloca %struct.filter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.filter* %0, %struct.filter** %2, align 8
  store i32 512, i32* %3, align 4
  store i32 -1, i32* %5, align 4
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %9 = load %struct.filter*, %struct.filter** %2, align 8
  %10 = getelementptr inbounds %struct.filter, %struct.filter* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %8, align 4
  %14 = call i32 @dup(i32 1)
  store i32 %14, i32* %5, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = call i32 @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @flexfatal(i32 %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load i32, i32* %5, align 4
  %21 = call i32* @fdopen(i32 %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %21, i32** %6, align 8
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %19
  %25 = load %struct.filter*, %struct.filter** %2, align 8
  %26 = getelementptr inbounds %struct.filter, %struct.filter* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = bitcast i32* %27 to i8*
  %29 = load i32*, i32** @stdout, align 8
  %30 = call i32* @freopen(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %29)
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %34 = call i32 @flexfatal(i32 %33)
  br label %35

35:                                               ; preds = %32, %24
  %36 = load %struct.filter*, %struct.filter** %2, align 8
  %37 = getelementptr inbounds %struct.filter, %struct.filter* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @filter_apply_chain(i32 %38)
  %40 = load i32*, i32** @stdout, align 8
  store i32* %40, i32** %7, align 8
  br label %41

41:                                               ; preds = %35, %19
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %76

44:                                               ; preds = %41
  %45 = load i8*, i8** @check_4_gnu_m4, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @fputs(i8* %45, i32* %46)
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @fputs(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32* %48)
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @fputs(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32* %50)
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @fputs(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32* %52)
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @fputs(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32* %54)
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @fputs(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i32* %56)
  %58 = load i32*, i32** %7, align 8
  %59 = load i8*, i8** @prefix, align 8
  %60 = call i32 (i32*, i8*, ...) @fprintf(i32* %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* %59)
  %61 = load i32*, i32** %7, align 8
  %62 = load i8*, i8** @prefix, align 8
  %63 = call i32 (i32*, i8*, ...) @fprintf(i32* %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8* %62)
  %64 = load i32*, i32** %7, align 8
  %65 = load i8*, i8** @prefix, align 8
  %66 = call i32 (i32*, i8*, ...) @fprintf(i32* %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* %65)
  %67 = load i32*, i32** %7, align 8
  %68 = load i8*, i8** @headerfilename, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %44
  %71 = load i8*, i8** @headerfilename, align 8
  br label %73

72:                                               ; preds = %44
  br label %73

73:                                               ; preds = %72, %70
  %74 = phi i8* [ %71, %70 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), %72 ]
  %75 = call i32 (i32*, i8*, ...) @fprintf(i32* %67, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %73, %41
  %77 = load i8*, i8** @check_4_gnu_m4, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @fputs(i8* %77, i32* %78)
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @fputs(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32* %80)
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @fputs(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32* %82)
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @fputs(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32* %84)
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @fputs(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32* %86)
  %88 = load i32*, i32** %6, align 8
  %89 = load i8*, i8** @outfilename, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %76
  %92 = load i8*, i8** @outfilename, align 8
  br label %94

93:                                               ; preds = %76
  br label %94

94:                                               ; preds = %93, %91
  %95 = phi i8* [ %92, %91 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), %93 ]
  %96 = call i32 (i32*, i8*, ...) @fprintf(i32* %88, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i8* %95)
  %97 = call i64 @flex_alloc(i32 512)
  %98 = inttoptr i64 %97 to i8*
  store i8* %98, i8** %4, align 8
  %99 = load i8*, i8** %4, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %94
  %102 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0))
  %103 = call i32 @flexerror(i32 %102)
  br label %104

104:                                              ; preds = %101, %94
  br label %105

105:                                              ; preds = %120, %104
  %106 = load i8*, i8** %4, align 8
  %107 = load i32, i32* @stdin, align 4
  %108 = call i64 @fgets(i8* %106, i32 512, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %105
  %111 = load i8*, i8** %4, align 8
  %112 = load i32*, i32** %6, align 8
  %113 = call i32 @fputs(i8* %111, i32* %112)
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load i8*, i8** %4, align 8
  %118 = load i32*, i32** %7, align 8
  %119 = call i32 @fputs(i8* %117, i32* %118)
  br label %120

120:                                              ; preds = %116, %110
  br label %105

121:                                              ; preds = %105
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %162

124:                                              ; preds = %121
  %125 = load i32*, i32** %7, align 8
  %126 = call i32 (i32*, i8*, ...) @fprintf(i32* %125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %127 = load i32*, i32** %7, align 8
  %128 = call i32 (i32*, i8*, ...) @fprintf(i32* %127, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0))
  %129 = load i32*, i32** %7, align 8
  %130 = load i8*, i8** @prefix, align 8
  %131 = call i32 (i32*, i8*, ...) @fprintf(i32* %129, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i8* %130)
  %132 = load i32*, i32** %7, align 8
  %133 = load i8*, i8** @prefix, align 8
  %134 = call i32 (i32*, i8*, ...) @fprintf(i32* %132, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i8* %133)
  %135 = load i32*, i32** %7, align 8
  %136 = call i32 @fputs(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i64 0, i64 0), i32* %135)
  %137 = load i32*, i32** %7, align 8
  %138 = call i32 @fflush(i32* %137)
  %139 = load i32*, i32** %7, align 8
  %140 = call i64 @ferror(i32* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %124
  %143 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0))
  %144 = load %struct.filter*, %struct.filter** %2, align 8
  %145 = getelementptr inbounds %struct.filter, %struct.filter* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = bitcast i32* %146 to i8*
  %148 = call i32 @lerrsf(i32 %143, i8* %147)
  br label %161

149:                                              ; preds = %124
  %150 = load i32*, i32** %7, align 8
  %151 = call i64 @fclose(i32* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %149
  %154 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0))
  %155 = load %struct.filter*, %struct.filter** %2, align 8
  %156 = getelementptr inbounds %struct.filter, %struct.filter* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = bitcast i32* %157 to i8*
  %159 = call i32 @lerrsf(i32 %154, i8* %158)
  br label %160

160:                                              ; preds = %153, %149
  br label %161

161:                                              ; preds = %160, %142
  br label %162

162:                                              ; preds = %161, %121
  %163 = load i32*, i32** %6, align 8
  %164 = call i32 @fflush(i32* %163)
  %165 = load i32*, i32** %6, align 8
  %166 = call i64 @ferror(i32* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %178

168:                                              ; preds = %162
  %169 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0))
  %170 = load i8*, i8** @outfilename, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %174

172:                                              ; preds = %168
  %173 = load i8*, i8** @outfilename, align 8
  br label %175

174:                                              ; preds = %168
  br label %175

175:                                              ; preds = %174, %172
  %176 = phi i8* [ %173, %172 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), %174 ]
  %177 = call i32 @lerrsf(i32 %169, i8* %176)
  br label %193

178:                                              ; preds = %162
  %179 = load i32*, i32** %6, align 8
  %180 = call i64 @fclose(i32* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %192

182:                                              ; preds = %178
  %183 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0))
  %184 = load i8*, i8** @outfilename, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %186, label %188

186:                                              ; preds = %182
  %187 = load i8*, i8** @outfilename, align 8
  br label %189

188:                                              ; preds = %182
  br label %189

189:                                              ; preds = %188, %186
  %190 = phi i8* [ %187, %186 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), %188 ]
  %191 = call i32 @lerrsf(i32 %183, i8* %190)
  br label %192

192:                                              ; preds = %189, %178
  br label %193

193:                                              ; preds = %192, %175
  br label %194

194:                                              ; preds = %197, %193
  %195 = call i64 @wait(i32 0)
  %196 = icmp sgt i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %194
  br label %194

198:                                              ; preds = %194
  %199 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @dup(i32) #1

declare dso_local i32 @flexfatal(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32* @freopen(i8*, i8*, i32*) #1

declare dso_local i32 @filter_apply_chain(i32) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @flex_alloc(i32) #1

declare dso_local i32 @flexerror(i32) #1

declare dso_local i64 @fgets(i8*, i32, i32) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @lerrsf(i32, i8*) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i64 @wait(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
