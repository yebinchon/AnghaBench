; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ps/extr_print.c_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ps/extr_print.c_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i32, i8*, i8*, i32 }

@cflag = common dso_local global i64 0, align 8
@next_ve = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s%s%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@showthreads = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@VIS_TAB = common dso_local global i32 0, align 4
@VIS_NL = common dso_local global i32 0, align 4
@VIS_NOSLASH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"%s%s%s%s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@COMMAND_WIDTH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @command(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i64, i64* @cflag, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %96

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* @next_ve, align 4
  %14 = call i32* @STAILQ_NEXT(i32* %12, i32 %13)
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %87

16:                                               ; preds = %11
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  br label %28

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27, %22
  %29 = phi i8* [ %26, %22 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %27 ]
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = load i64, i64* @showthreads, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %28
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp sgt i32 %44, 1
  br label %46

46:                                               ; preds = %39, %28
  %47 = phi i1 [ false, %28 ], [ %45, %39 ]
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %50 = load i64, i64* @showthreads, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %46
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sgt i32 %57, 1
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  br label %66

65:                                               ; preds = %52, %46
  br label %66

66:                                               ; preds = %65, %59
  %67 = phi i8* [ %64, %59 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %65 ]
  %68 = load i64, i64* @showthreads, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 3
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp sgt i32 %75, 1
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  br label %84

83:                                               ; preds = %70, %66
  br label %84

84:                                               ; preds = %83, %77
  %85 = phi i8* [ %82, %77 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %83 ]
  %86 = call i32 (i8**, i8*, i8*, i8*, i8*, i8*, ...) @asprintf(i8** %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %29, i8* %36, i8* %49, i8* %67, i8* %85)
  br label %94

87:                                               ; preds = %11
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 3
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call i8* @strdup(i32 %92)
  store i8* %93, i8** %8, align 8
  br label %94

94:                                               ; preds = %87, %84
  %95 = load i8*, i8** %8, align 8
  store i8* %95, i8** %3, align 8
  br label %200

96:                                               ; preds = %2
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i64 @strlen(i8* %99)
  %101 = mul i64 %100, 4
  %102 = add i64 %101, 1
  %103 = trunc i64 %102 to i32
  %104 = call i8* @malloc(i32 %103)
  store i8* %104, i8** %6, align 8
  %105 = icmp eq i8* %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %96
  %107 = call i32 @xo_errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %96
  %109 = load i8*, i8** %6, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load i32, i32* @VIS_TAB, align 4
  %114 = load i32, i32* @VIS_NL, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @VIS_NOSLASH, align 4
  %117 = or i32 %115, %116
  %118 = call i32 @strvis(i8* %109, i8* %112, i32 %117)
  %119 = load i32*, i32** %5, align 8
  %120 = load i32, i32* @next_ve, align 4
  %121 = call i32* @STAILQ_NEXT(i32* %119, i32 %120)
  %122 = icmp eq i32* %121, null
  br i1 %122, label %123, label %187

123:                                              ; preds = %108
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %151

128:                                              ; preds = %123
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = call i64 @strlen(i8* %131)
  %133 = mul i64 %132, 4
  %134 = add i64 %133, 1
  %135 = trunc i64 %134 to i32
  %136 = call i8* @malloc(i32 %135)
  store i8* %136, i8** %7, align 8
  %137 = icmp eq i8* %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %128
  %139 = call i32 @xo_errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %128
  %141 = load i8*, i8** %7, align 8
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = load i32, i32* @VIS_TAB, align 4
  %146 = load i32, i32* @VIS_NL, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @VIS_NOSLASH, align 4
  %149 = or i32 %147, %148
  %150 = call i32 @strvis(i8* %141, i8* %144, i32 %149)
  br label %152

151:                                              ; preds = %123
  store i8* null, i8** %7, align 8
  br label %152

152:                                              ; preds = %151, %140
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %163

158:                                              ; preds = %152
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  br label %164

163:                                              ; preds = %152
  br label %164

164:                                              ; preds = %163, %158
  %165 = phi i8* [ %162, %158 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %163 ]
  %166 = load i8*, i8** %7, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %170

168:                                              ; preds = %164
  %169 = load i8*, i8** %7, align 8
  br label %171

170:                                              ; preds = %164
  br label %171

171:                                              ; preds = %170, %168
  %172 = phi i8* [ %169, %168 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %170 ]
  %173 = load i8*, i8** %7, align 8
  %174 = icmp ne i8* %173, null
  %175 = zext i1 %174 to i64
  %176 = select i1 %174, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %177 = load i8*, i8** %6, align 8
  %178 = call i32 (i8**, i8*, i8*, i8*, i8*, i8*, ...) @asprintf(i8** %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %165, i8* %172, i8* %176, i8* %177)
  %179 = load i8*, i8** %7, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %184

181:                                              ; preds = %171
  %182 = load i8*, i8** %7, align 8
  %183 = call i32 @free(i8* %182)
  br label %184

184:                                              ; preds = %181, %171
  %185 = load i8*, i8** %6, align 8
  %186 = call i32 @free(i8* %185)
  br label %198

187:                                              ; preds = %108
  %188 = load i8*, i8** %6, align 8
  store i8* %188, i8** %8, align 8
  %189 = load i8*, i8** %8, align 8
  %190 = call i64 @strlen(i8* %189)
  %191 = load i64, i64* @COMMAND_WIDTH, align 8
  %192 = icmp ugt i64 %190, %191
  br i1 %192, label %193, label %197

193:                                              ; preds = %187
  %194 = load i8*, i8** %8, align 8
  %195 = load i64, i64* @COMMAND_WIDTH, align 8
  %196 = getelementptr inbounds i8, i8* %194, i64 %195
  store i8 0, i8* %196, align 1
  br label %197

197:                                              ; preds = %193, %187
  br label %198

198:                                              ; preds = %197, %184
  %199 = load i8*, i8** %8, align 8
  store i8* %199, i8** %3, align 8
  br label %200

200:                                              ; preds = %198, %94
  %201 = load i8*, i8** %3, align 8
  ret i8* %201
}

declare dso_local i32* @STAILQ_NEXT(i32*, i32) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @xo_errx(i32, i8*) #1

declare dso_local i32 @strvis(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
