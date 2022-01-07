; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_input.c_preadbuffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_input.c_preadbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@parsefile = common dso_local global %struct.TYPE_4__* null, align 8
@parsenleft = common dso_local global i32 0, align 4
@parsenextc = common dso_local global i8* null, align 8
@EOF_NLEFT = common dso_local global i32 0, align 4
@PEOF = common dso_local global i32 0, align 4
@parselleft = common dso_local global i32 0, align 4
@hist = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@INTOFF = common dso_local global i32 0, align 4
@whichprompt = common dso_local global i32 0, align 4
@H_ENTER = common dso_local global i32 0, align 4
@H_ADD = common dso_local global i32 0, align 4
@INTON = common dso_local global i32 0, align 4
@vflag = common dso_local global i64 0, align 8
@out2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @preadbuffer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  br label %8

8:                                                ; preds = %34, %0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @parsefile, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %35

13:                                               ; preds = %8
  %14 = load i32, i32* @parsenleft, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @parsefile, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 32, i32* %1, align 4
  br label %193

24:                                               ; preds = %16, %13
  %25 = call i32 (...) @popstring()
  %26 = load i32, i32* @parsenleft, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* @parsenleft, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i8*, i8** @parsenextc, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** @parsenextc, align 8
  %32 = load i8, i8* %30, align 1
  %33 = sext i8 %32 to i32
  store i32 %33, i32* %1, align 4
  br label %193

34:                                               ; preds = %24
  br label %8

35:                                               ; preds = %8
  %36 = load i32, i32* @parsenleft, align 4
  %37 = load i32, i32* @EOF_NLEFT, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @parsefile, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %39, %35
  %45 = load i32, i32* @PEOF, align 4
  store i32 %45, i32* %1, align 4
  br label %193

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %116, %46
  %48 = load i32, i32* @parselleft, align 4
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = call i32 (...) @preadfd()
  store i32 %51, i32* @parselleft, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* @EOF_NLEFT, align 4
  store i32 %54, i32* @parsenleft, align 4
  store i32 %54, i32* @parselleft, align 4
  %55 = load i32, i32* @PEOF, align 4
  store i32 %55, i32* %1, align 4
  br label %193

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %47
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @parsefile, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i8*, i8** @parsenextc, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @parsefile, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = ptrtoint i8* %61 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = getelementptr inbounds i8, i8* %60, i64 %67
  store i8* %68, i8** %2, align 8
  %69 = load i8*, i8** %2, align 8
  %70 = load i32, i32* @parselleft, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  store i8* %72, i8** %5, align 8
  %73 = load i8*, i8** %5, align 8
  store i8 0, i8* %73, align 1
  %74 = load i8*, i8** %2, align 8
  %75 = call i8* @strchrnul(i8* %74, i8 signext 10)
  store i8* %75, i8** %3, align 8
  %76 = load i8*, i8** %3, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = icmp ne i8* %76, %77
  br i1 %78, label %79, label %125

79:                                               ; preds = %57
  %80 = load i8*, i8** %3, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %125

84:                                               ; preds = %79
  %85 = load i8*, i8** %3, align 8
  store i8* %85, i8** %4, align 8
  br label %86

86:                                               ; preds = %101, %84
  %87 = load i8*, i8** %3, align 8
  %88 = load i8*, i8** %5, align 8
  %89 = icmp ne i8* %87, %88
  br i1 %89, label %90, label %104

90:                                               ; preds = %86
  %91 = load i8*, i8** %3, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load i8*, i8** %3, align 8
  %97 = load i8, i8* %96, align 1
  %98 = load i8*, i8** %4, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %4, align 8
  store i8 %97, i8* %98, align 1
  br label %100

100:                                              ; preds = %95, %90
  br label %101

101:                                              ; preds = %100
  %102 = load i8*, i8** %3, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %3, align 8
  br label %86

104:                                              ; preds = %86
  %105 = load i8*, i8** %5, align 8
  %106 = load i8*, i8** %4, align 8
  %107 = ptrtoint i8* %105 to i64
  %108 = ptrtoint i8* %106 to i64
  %109 = sub i64 %107, %108
  %110 = load i32, i32* @parselleft, align 4
  %111 = sext i32 %110 to i64
  %112 = sub nsw i64 %111, %109
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* @parselleft, align 4
  %114 = load i32, i32* @parselleft, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %104
  br label %47

117:                                              ; preds = %104
  %118 = load i8*, i8** %2, align 8
  %119 = load i32, i32* @parselleft, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  store i8* %121, i8** %5, align 8
  %122 = load i8*, i8** %5, align 8
  store i8 0, i8* %122, align 1
  %123 = load i8*, i8** %2, align 8
  %124 = call i8* @strchrnul(i8* %123, i8 signext 10)
  store i8* %124, i8** %3, align 8
  br label %125

125:                                              ; preds = %117, %79, %57
  %126 = load i8*, i8** %3, align 8
  %127 = load i8*, i8** %5, align 8
  %128 = icmp eq i8* %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load i32, i32* @parselleft, align 4
  store i32 %130, i32* @parsenleft, align 4
  store i32 0, i32* @parselleft, align 4
  br label %143

131:                                              ; preds = %125
  %132 = load i8*, i8** %3, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %3, align 8
  %134 = load i8*, i8** %3, align 8
  %135 = load i8*, i8** @parsenextc, align 8
  %136 = ptrtoint i8* %134 to i64
  %137 = ptrtoint i8* %135 to i64
  %138 = sub i64 %136, %137
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* @parsenleft, align 4
  %140 = load i32, i32* @parsenleft, align 4
  %141 = load i32, i32* @parselleft, align 4
  %142 = sub nsw i32 %141, %140
  store i32 %142, i32* @parselleft, align 4
  br label %143

143:                                              ; preds = %131, %129
  %144 = load i32, i32* @parsenleft, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* @parsenleft, align 4
  %146 = load i8*, i8** %3, align 8
  %147 = load i8, i8* %146, align 1
  store i8 %147, i8* %6, align 1
  %148 = load i8*, i8** %3, align 8
  store i8 0, i8* %148, align 1
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** @parsefile, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %178

153:                                              ; preds = %143
  %154 = load i64, i64* @hist, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %178

156:                                              ; preds = %153
  %157 = load i8*, i8** @parsenextc, align 8
  %158 = load i8*, i8** @parsenextc, align 8
  %159 = call i64 @strspn(i8* %158, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %160 = getelementptr inbounds i8, i8* %157, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %178

164:                                              ; preds = %156
  %165 = load i32, i32* @INTOFF, align 4
  %166 = load i64, i64* @hist, align 8
  %167 = load i32, i32* @whichprompt, align 4
  %168 = icmp eq i32 %167, 1
  br i1 %168, label %169, label %171

169:                                              ; preds = %164
  %170 = load i32, i32* @H_ENTER, align 4
  br label %173

171:                                              ; preds = %164
  %172 = load i32, i32* @H_ADD, align 4
  br label %173

173:                                              ; preds = %171, %169
  %174 = phi i32 [ %170, %169 ], [ %172, %171 ]
  %175 = load i8*, i8** @parsenextc, align 8
  %176 = call i32 @history(i64 %166, i32* %7, i32 %174, i8* %175)
  %177 = load i32, i32* @INTON, align 4
  br label %178

178:                                              ; preds = %173, %156, %153, %143
  %179 = load i64, i64* @vflag, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %178
  %182 = load i8*, i8** @parsenextc, align 8
  %183 = call i32 @out2str(i8* %182)
  %184 = load i32, i32* @out2, align 4
  %185 = call i32 @flushout(i32 %184)
  br label %186

186:                                              ; preds = %181, %178
  %187 = load i8, i8* %6, align 1
  %188 = load i8*, i8** %3, align 8
  store i8 %187, i8* %188, align 1
  %189 = load i8*, i8** @parsenextc, align 8
  %190 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %190, i8** @parsenextc, align 8
  %191 = load i8, i8* %189, align 1
  %192 = sext i8 %191 to i32
  store i32 %192, i32* %1, align 4
  br label %193

193:                                              ; preds = %186, %53, %44, %29, %23
  %194 = load i32, i32* %1, align 4
  ret i32 %194
}

declare dso_local i32 @popstring(...) #1

declare dso_local i32 @preadfd(...) #1

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i64 @strspn(i8*, i8*) #1

declare dso_local i32 @history(i64, i32*, i32, i8*) #1

declare dso_local i32 @out2str(i8*) #1

declare dso_local i32 @flushout(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
