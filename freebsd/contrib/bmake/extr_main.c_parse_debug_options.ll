; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_main.c_parse_debug_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_main.c_parse_debug_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@debug = common dso_local global i32 0, align 4
@DEBUG_ARCH = common dso_local global i32 0, align 4
@DEBUG_CWD = common dso_local global i32 0, align 4
@DEBUG_COND = common dso_local global i32 0, align 4
@DEBUG_DIR = common dso_local global i32 0, align 4
@DEBUG_ERROR = common dso_local global i32 0, align 4
@DEBUG_FOR = common dso_local global i32 0, align 4
@DEBUG_GRAPH1 = common dso_local global i32 0, align 4
@DEBUG_GRAPH2 = common dso_local global i32 0, align 4
@DEBUG_GRAPH3 = common dso_local global i32 0, align 4
@DEBUG_JOB = common dso_local global i32 0, align 4
@DEBUG_LOUD = common dso_local global i32 0, align 4
@DEBUG_META = common dso_local global i32 0, align 4
@DEBUG_MAKE = common dso_local global i32 0, align 4
@DEBUG_SCRIPT = common dso_local global i32 0, align 4
@DEBUG_PARSE = common dso_local global i32 0, align 4
@DEBUG_SUFF = common dso_local global i32 0, align 4
@DEBUG_TARG = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@debugVflag = common dso_local global i32 0, align 4
@DEBUG_VAR = common dso_local global i32 0, align 4
@DEBUG_SHELL = common dso_local global i32 0, align 4
@debug_file = common dso_local global i64 0, align 8
@stdout = common dso_local global i64 0, align 8
@stderr = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c".%d\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Cannot open debug file %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"%s: illegal argument to d option -- %c\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@_IONBF = common dso_local global i32 0, align 4
@_IOLBF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @parse_debug_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_debug_options(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  store i8* %7, i8** %3, align 8
  br label %8

8:                                                ; preds = %205, %1
  %9 = load i8*, i8** %3, align 8
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %208

12:                                               ; preds = %8
  %13 = load i8*, i8** %3, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  switch i32 %15, label %196 [
    i32 65, label %16
    i32 97, label %17
    i32 67, label %21
    i32 99, label %25
    i32 100, label %29
    i32 101, label %33
    i32 102, label %37
    i32 103, label %41
    i32 106, label %80
    i32 108, label %84
    i32 77, label %88
    i32 109, label %92
    i32 110, label %96
    i32 112, label %100
    i32 115, label %104
    i32 116, label %108
    i32 86, label %112
    i32 118, label %114
    i32 120, label %118
    i32 70, label %122
  ]

16:                                               ; preds = %12
  store i32 -1, i32* @debug, align 4
  br label %204

17:                                               ; preds = %12
  %18 = load i32, i32* @DEBUG_ARCH, align 4
  %19 = load i32, i32* @debug, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* @debug, align 4
  br label %204

21:                                               ; preds = %12
  %22 = load i32, i32* @DEBUG_CWD, align 4
  %23 = load i32, i32* @debug, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* @debug, align 4
  br label %204

25:                                               ; preds = %12
  %26 = load i32, i32* @DEBUG_COND, align 4
  %27 = load i32, i32* @debug, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* @debug, align 4
  br label %204

29:                                               ; preds = %12
  %30 = load i32, i32* @DEBUG_DIR, align 4
  %31 = load i32, i32* @debug, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* @debug, align 4
  br label %204

33:                                               ; preds = %12
  %34 = load i32, i32* @DEBUG_ERROR, align 4
  %35 = load i32, i32* @debug, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* @debug, align 4
  br label %204

37:                                               ; preds = %12
  %38 = load i32, i32* @DEBUG_FOR, align 4
  %39 = load i32, i32* @debug, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* @debug, align 4
  br label %204

41:                                               ; preds = %12
  %42 = load i8*, i8** %3, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 49
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load i32, i32* @DEBUG_GRAPH1, align 4
  %49 = load i32, i32* @debug, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* @debug, align 4
  %51 = load i8*, i8** %3, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %3, align 8
  br label %79

53:                                               ; preds = %41
  %54 = load i8*, i8** %3, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 50
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load i32, i32* @DEBUG_GRAPH2, align 4
  %61 = load i32, i32* @debug, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* @debug, align 4
  %63 = load i8*, i8** %3, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %3, align 8
  br label %78

65:                                               ; preds = %53
  %66 = load i8*, i8** %3, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 51
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load i32, i32* @DEBUG_GRAPH3, align 4
  %73 = load i32, i32* @debug, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* @debug, align 4
  %75 = load i8*, i8** %3, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %3, align 8
  br label %77

77:                                               ; preds = %71, %65
  br label %78

78:                                               ; preds = %77, %59
  br label %79

79:                                               ; preds = %78, %47
  br label %204

80:                                               ; preds = %12
  %81 = load i32, i32* @DEBUG_JOB, align 4
  %82 = load i32, i32* @debug, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* @debug, align 4
  br label %204

84:                                               ; preds = %12
  %85 = load i32, i32* @DEBUG_LOUD, align 4
  %86 = load i32, i32* @debug, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* @debug, align 4
  br label %204

88:                                               ; preds = %12
  %89 = load i32, i32* @DEBUG_META, align 4
  %90 = load i32, i32* @debug, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* @debug, align 4
  br label %204

92:                                               ; preds = %12
  %93 = load i32, i32* @DEBUG_MAKE, align 4
  %94 = load i32, i32* @debug, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* @debug, align 4
  br label %204

96:                                               ; preds = %12
  %97 = load i32, i32* @DEBUG_SCRIPT, align 4
  %98 = load i32, i32* @debug, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* @debug, align 4
  br label %204

100:                                              ; preds = %12
  %101 = load i32, i32* @DEBUG_PARSE, align 4
  %102 = load i32, i32* @debug, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* @debug, align 4
  br label %204

104:                                              ; preds = %12
  %105 = load i32, i32* @DEBUG_SUFF, align 4
  %106 = load i32, i32* @debug, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* @debug, align 4
  br label %204

108:                                              ; preds = %12
  %109 = load i32, i32* @DEBUG_TARG, align 4
  %110 = load i32, i32* @debug, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* @debug, align 4
  br label %204

112:                                              ; preds = %12
  %113 = load i32, i32* @TRUE, align 4
  store i32 %113, i32* @debugVflag, align 4
  br label %204

114:                                              ; preds = %12
  %115 = load i32, i32* @DEBUG_VAR, align 4
  %116 = load i32, i32* @debug, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* @debug, align 4
  br label %204

118:                                              ; preds = %12
  %119 = load i32, i32* @DEBUG_SHELL, align 4
  %120 = load i32, i32* @debug, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* @debug, align 4
  br label %204

122:                                              ; preds = %12
  %123 = load i64, i64* @debug_file, align 8
  %124 = load i64, i64* @stdout, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %122
  %127 = load i64, i64* @debug_file, align 8
  %128 = load i64, i64* @stderr, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load i64, i64* @debug_file, align 8
  %132 = call i32 @fclose(i64 %131)
  br label %133

133:                                              ; preds = %130, %126, %122
  %134 = load i8*, i8** %3, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %3, align 8
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %137, 43
  br i1 %138, label %139, label %142

139:                                              ; preds = %133
  %140 = load i8*, i8** %3, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %3, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %143

142:                                              ; preds = %133
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %143

143:                                              ; preds = %142, %139
  %144 = load i8*, i8** %3, align 8
  %145 = call i32 @strcmp(i8* %144, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %143
  %148 = load i64, i64* @stdout, align 8
  store i64 %148, i64* @debug_file, align 8
  br label %209

149:                                              ; preds = %143
  %150 = load i8*, i8** %3, align 8
  %151 = call i32 @strcmp(i8* %150, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %149
  %154 = load i64, i64* @stderr, align 8
  store i64 %154, i64* @debug_file, align 8
  br label %209

155:                                              ; preds = %149
  %156 = load i8*, i8** %3, align 8
  %157 = call i32 @strlen(i8* %156)
  store i32 %157, i32* %6, align 4
  %158 = load i32, i32* %6, align 4
  %159 = add nsw i32 %158, 20
  %160 = call i8* @bmake_malloc(i32 %159)
  store i8* %160, i8** %5, align 8
  %161 = load i8*, i8** %5, align 8
  %162 = load i8*, i8** %3, align 8
  %163 = load i32, i32* %6, align 4
  %164 = add nsw i32 %163, 1
  %165 = call i32 @memcpy(i8* %161, i8* %162, i32 %164)
  %166 = load i8*, i8** %5, align 8
  %167 = load i32, i32* %6, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  %170 = getelementptr inbounds i8, i8* %169, i64 -3
  %171 = call i32 @strcmp(i8* %170, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %182

173:                                              ; preds = %155
  %174 = load i8*, i8** %5, align 8
  %175 = load i32, i32* %6, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  %178 = getelementptr inbounds i8, i8* %177, i64 -2
  %179 = ptrtoint i8* %178 to i32
  %180 = call i32 (...) @getpid()
  %181 = call i32 @snprintf(i32 %179, i32 20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %180)
  br label %182

182:                                              ; preds = %173, %155
  %183 = load i8*, i8** %5, align 8
  %184 = load i8*, i8** %4, align 8
  %185 = call i64 @fopen(i8* %183, i8* %184)
  store i64 %185, i64* @debug_file, align 8
  %186 = load i64, i64* @debug_file, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %193, label %188

188:                                              ; preds = %182
  %189 = load i64, i64* @stderr, align 8
  %190 = load i8*, i8** %5, align 8
  %191 = call i32 (i64, i8*, i8*, ...) @fprintf(i64 %189, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %190)
  %192 = call i32 (...) @usage()
  br label %193

193:                                              ; preds = %188, %182
  %194 = load i8*, i8** %5, align 8
  %195 = call i32 @free(i8* %194)
  br label %209

196:                                              ; preds = %12
  %197 = load i64, i64* @stderr, align 8
  %198 = load i8*, i8** @progname, align 8
  %199 = load i8*, i8** %3, align 8
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = call i32 (i64, i8*, i8*, ...) @fprintf(i64 %197, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8* %198, i32 %201)
  %203 = call i32 (...) @usage()
  br label %204

204:                                              ; preds = %196, %118, %114, %112, %108, %104, %100, %96, %92, %88, %84, %80, %79, %37, %33, %29, %25, %21, %17, %16
  br label %205

205:                                              ; preds = %204
  %206 = load i8*, i8** %3, align 8
  %207 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %207, i8** %3, align 8
  br label %8

208:                                              ; preds = %8
  br label %209

209:                                              ; preds = %208, %193, %153, %147
  %210 = load i64, i64* @debug_file, align 8
  %211 = load i32, i32* @_IONBF, align 4
  %212 = call i32 @setvbuf(i64 %210, i32* null, i32 %211, i32 0)
  %213 = load i64, i64* @debug_file, align 8
  %214 = load i64, i64* @stdout, align 8
  %215 = icmp ne i64 %213, %214
  br i1 %215, label %216, label %220

216:                                              ; preds = %209
  %217 = load i64, i64* @stdout, align 8
  %218 = load i32, i32* @_IOLBF, align 4
  %219 = call i32 @setvbuf(i64 %217, i32* null, i32 %218, i32 0)
  br label %220

220:                                              ; preds = %216, %209
  ret void
}

declare dso_local i32 @fclose(i64) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @bmake_malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i64 @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i64, i8*, i8*, ...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @setvbuf(i64, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
