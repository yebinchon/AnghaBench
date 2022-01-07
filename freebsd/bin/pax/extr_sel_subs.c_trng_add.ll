; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_sel_subs.c_trng_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_sel_subs.c_trng_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64, %struct.TYPE_5__* }

@.str = private unnamed_addr constant [24 x i8] c"Empty time range string\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Improperly specified time range: %s\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Unable to allocate memory for time range\00", align 1
@CMPMTME = common dso_local global i32 0, align 4
@CMPCTME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Bad option %c with time range %s\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Illegal lower time range %s\00", align 1
@HASLOW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Illegal upper time range %s\00", align 1
@HASHIGH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"Upper %s and lower %s time overlap\00", align 1
@trhead = common dso_local global %struct.TYPE_5__* null, align 8
@trtail = common dso_local global %struct.TYPE_5__* null, align 8
@.str.7 = private unnamed_addr constant [55 x i8] c"Time range format is: [yy[mm[dd[hh]]]]mm[.ss][/[c][m]]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trng_add(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11, %1
  %17 = call i32 (i32, i8*, ...) @paxwarn(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %214

18:                                               ; preds = %11
  %19 = load i8*, i8** %3, align 8
  %20 = call i8* @strrchr(i8* %19, i8 signext 47)
  store i8* %20, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %7, align 8
  store i8 0, i8* %23, align 1
  br label %25

25:                                               ; preds = %22, %18
  %26 = load i8*, i8** %3, align 8
  store i8* %26, i8** %6, align 8
  br label %27

27:                                               ; preds = %69, %25
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %72

32:                                               ; preds = %27
  %33 = load i8*, i8** %6, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp sge i32 %35, 48
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i8*, i8** %6, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp sle i32 %40, 57
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %69

43:                                               ; preds = %37, %32
  %44 = load i8*, i8** %6, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 44
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load i8*, i8** %5, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i8*, i8** %6, align 8
  store i8 0, i8* %52, align 1
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  store i8* %54, i8** %5, align 8
  store i32 0, i32* %8, align 4
  br label %69

55:                                               ; preds = %48, %43
  %56 = load i8*, i8** %6, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 46
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %69

66:                                               ; preds = %60, %55
  %67 = load i8*, i8** %3, align 8
  %68 = call i32 (i32, i8*, ...) @paxwarn(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %67)
  br label %212

69:                                               ; preds = %63, %51, %42
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %6, align 8
  br label %27

72:                                               ; preds = %27
  %73 = call i64 @malloc(i32 32)
  %74 = inttoptr i64 %73 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %74, %struct.TYPE_5__** %4, align 8
  %75 = icmp eq %struct.TYPE_5__* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = call i32 (i32, i8*, ...) @paxwarn(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %214

78:                                               ; preds = %72
  %79 = load i8*, i8** %7, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %78
  %82 = load i8*, i8** %7, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81, %78
  %87 = load i32, i32* @CMPMTME, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  br label %126

90:                                               ; preds = %81
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  br label %93

93:                                               ; preds = %122, %90
  %94 = load i8*, i8** %7, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %125

98:                                               ; preds = %93
  %99 = load i8*, i8** %7, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  switch i32 %101, label %114 [
    i32 77, label %102
    i32 109, label %102
    i32 67, label %108
    i32 99, label %108
  ]

102:                                              ; preds = %98, %98
  %103 = load i32, i32* @CMPMTME, align 4
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  br label %122

108:                                              ; preds = %98, %98
  %109 = load i32, i32* @CMPCTME, align 4
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  br label %122

114:                                              ; preds = %98
  %115 = load i8*, i8** %7, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = load i8*, i8** %3, align 8
  %119 = call i32 (i32, i8*, ...) @paxwarn(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %117, i8* %118)
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %121 = call i32 @free(%struct.TYPE_5__* %120)
  br label %212

122:                                              ; preds = %108, %102
  %123 = load i8*, i8** %7, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %7, align 8
  br label %93

125:                                              ; preds = %93
  br label %126

126:                                              ; preds = %125, %86
  %127 = call i64 @time(i32* null)
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  store i64 %127, i64* %129, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  store i64 %127, i64* %131, align 8
  %132 = load i8*, i8** %3, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %153

136:                                              ; preds = %126
  %137 = load i8*, i8** %3, align 8
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  %140 = call i64 @str_sec(i8* %137, i64* %139)
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %136
  %143 = load i8*, i8** %3, align 8
  %144 = call i32 (i32, i8*, ...) @paxwarn(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %143)
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %146 = call i32 @free(%struct.TYPE_5__* %145)
  br label %212

147:                                              ; preds = %136
  %148 = load i32, i32* @HASLOW, align 4
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 8
  br label %153

153:                                              ; preds = %147, %126
  %154 = load i8*, i8** %5, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %200

156:                                              ; preds = %153
  %157 = load i8*, i8** %5, align 8
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %200

161:                                              ; preds = %156
  %162 = load i8*, i8** %5, align 8
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 2
  %165 = call i64 @str_sec(i8* %162, i64* %164)
  %166 = icmp slt i64 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %161
  %168 = load i8*, i8** %5, align 8
  %169 = call i32 (i32, i8*, ...) @paxwarn(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %168)
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %171 = call i32 @free(%struct.TYPE_5__* %170)
  br label %212

172:                                              ; preds = %161
  %173 = load i32, i32* @HASHIGH, align 4
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 8
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @HASLOW, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %199

184:                                              ; preds = %172
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = icmp sgt i64 %187, %190
  br i1 %191, label %192, label %198

192:                                              ; preds = %184
  %193 = load i8*, i8** %5, align 8
  %194 = load i8*, i8** %3, align 8
  %195 = call i32 (i32, i8*, ...) @paxwarn(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i8* %193, i8* %194)
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %197 = call i32 @free(%struct.TYPE_5__* %196)
  store i32 -1, i32* %2, align 4
  br label %214

198:                                              ; preds = %184
  br label %199

199:                                              ; preds = %198, %172
  br label %200

200:                                              ; preds = %199, %156, %153
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %202, align 8
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** @trhead, align 8
  %204 = icmp eq %struct.TYPE_5__* %203, null
  br i1 %204, label %205, label %207

205:                                              ; preds = %200
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %206, %struct.TYPE_5__** @trhead, align 8
  store %struct.TYPE_5__* %206, %struct.TYPE_5__** @trtail, align 8
  store i32 0, i32* %2, align 4
  br label %214

207:                                              ; preds = %200
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** @trtail, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 3
  store %struct.TYPE_5__* %208, %struct.TYPE_5__** %210, align 8
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %211, %struct.TYPE_5__** @trtail, align 8
  store i32 0, i32* %2, align 4
  br label %214

212:                                              ; preds = %167, %142, %114, %66
  %213 = call i32 (i32, i8*, ...) @paxwarn(i32 1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %214

214:                                              ; preds = %212, %207, %205, %192, %76, %16
  %215 = load i32, i32* %2, align 4
  ret i32 %215
}

declare dso_local i32 @paxwarn(i32, i8*, ...) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i64 @str_sec(i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
