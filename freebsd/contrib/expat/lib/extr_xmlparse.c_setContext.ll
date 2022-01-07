; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_xmlparse.c_setContext.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_xmlparse.c_setContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32 }

@CONTEXT_SEP = common dso_local global i64 0, align 8
@XML_FALSE = common dso_local global i32 0, align 4
@XML_TRUE = common dso_local global i32 0, align 4
@ASCII_EQUALS = common dso_local global i8 0, align 1
@XML_ERROR_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i64*)* @setContext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setContext(%struct.TYPE_9__* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %6, align 8
  %13 = load i64*, i64** %5, align 8
  store i64* %13, i64** %7, align 8
  br label %14

14:                                               ; preds = %203, %2
  %15 = load i64*, i64** %5, align 8
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @XML_T(i8 signext 0)
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %204

19:                                               ; preds = %14
  %20 = load i64*, i64** %7, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CONTEXT_SEP, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i64*, i64** %7, align 8
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @XML_T(i8 signext 0)
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %65

29:                                               ; preds = %24, %19
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = call i64 @XML_T(i8 signext 0)
  %33 = call i32 @poolAppendChar(i32* %31, i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @XML_FALSE, align 4
  store i32 %36, i32* %3, align 4
  br label %206

37:                                               ; preds = %29
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = call i64 @poolStart(i32* %42)
  %44 = call i64 @lookup(%struct.TYPE_9__* %38, i32* %40, i64 %43, i32 0)
  %45 = inttoptr i64 %44 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %45, %struct.TYPE_11__** %8, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %47 = icmp ne %struct.TYPE_11__* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = load i32, i32* @XML_TRUE, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %37
  %53 = load i64*, i64** %7, align 8
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @XML_T(i8 signext 0)
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i64*, i64** %7, align 8
  %59 = getelementptr inbounds i64, i64* %58, i32 1
  store i64* %59, i64** %7, align 8
  br label %60

60:                                               ; preds = %57, %52
  %61 = load i64*, i64** %7, align 8
  store i64* %61, i64** %5, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = call i32 @poolDiscard(i32* %63)
  br label %203

65:                                               ; preds = %24
  %66 = load i64*, i64** %7, align 8
  %67 = load i64, i64* %66, align 8
  %68 = load i8, i8* @ASCII_EQUALS, align 1
  %69 = call i64 @XML_T(i8 signext %68)
  %70 = icmp eq i64 %67, %69
  br i1 %70, label %71, label %190

71:                                               ; preds = %65
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = call i64 @poolLength(i32* %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 2
  store %struct.TYPE_10__* %78, %struct.TYPE_10__** %9, align 8
  br label %128

79:                                               ; preds = %71
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = call i64 @XML_T(i8 signext 0)
  %83 = call i32 @poolAppendChar(i32* %81, i64 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* @XML_FALSE, align 4
  store i32 %86, i32* %3, align 4
  br label %206

87:                                               ; preds = %79
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = call i64 @poolStart(i32* %92)
  %94 = call i64 @lookup(%struct.TYPE_9__* %88, i32* %90, i64 %93, i32 8)
  %95 = inttoptr i64 %94 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %95, %struct.TYPE_10__** %9, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %97 = icmp ne %struct.TYPE_10__* %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %87
  %99 = load i32, i32* @XML_FALSE, align 4
  store i32 %99, i32* %3, align 4
  br label %206

100:                                              ; preds = %87
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = call i64 @poolStart(i32* %105)
  %107 = icmp eq i64 %103, %106
  br i1 %107, label %108, label %124

108:                                              ; preds = %100
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i64 @poolCopyString(i32* %110, i64 %113)
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %108
  %122 = load i32, i32* @XML_FALSE, align 4
  store i32 %122, i32* %3, align 4
  br label %206

123:                                              ; preds = %108
  br label %124

124:                                              ; preds = %123, %100
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = call i32 @poolDiscard(i32* %126)
  br label %128

128:                                              ; preds = %124, %76
  %129 = load i64*, i64** %7, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 1
  store i64* %130, i64** %5, align 8
  br label %131

131:                                              ; preds = %153, %128
  %132 = load i64*, i64** %5, align 8
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @CONTEXT_SEP, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load i64*, i64** %5, align 8
  %138 = load i64, i64* %137, align 8
  %139 = call i64 @XML_T(i8 signext 0)
  %140 = icmp ne i64 %138, %139
  br label %141

141:                                              ; preds = %136, %131
  %142 = phi i1 [ false, %131 ], [ %140, %136 ]
  br i1 %142, label %143, label %156

143:                                              ; preds = %141
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i64*, i64** %5, align 8
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @poolAppendChar(i32* %145, i64 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %143
  %151 = load i32, i32* @XML_FALSE, align 4
  store i32 %151, i32* %3, align 4
  br label %206

152:                                              ; preds = %143
  br label %153

153:                                              ; preds = %152
  %154 = load i64*, i64** %5, align 8
  %155 = getelementptr inbounds i64, i64* %154, i32 1
  store i64* %155, i64** %5, align 8
  br label %131

156:                                              ; preds = %141
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = call i64 @XML_T(i8 signext 0)
  %160 = call i32 @poolAppendChar(i32* %158, i64 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %156
  %163 = load i32, i32* @XML_FALSE, align 4
  store i32 %163, i32* %3, align 4
  br label %206

164:                                              ; preds = %156
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  %169 = call i64 @poolStart(i32* %168)
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 1
  %172 = call i64 @addBinding(%struct.TYPE_9__* %165, %struct.TYPE_10__* %166, i32* null, i64 %169, i32* %171)
  %173 = load i64, i64* @XML_ERROR_NONE, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %164
  %176 = load i32, i32* @XML_FALSE, align 4
  store i32 %176, i32* %3, align 4
  br label %206

177:                                              ; preds = %164
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = call i32 @poolDiscard(i32* %179)
  %181 = load i64*, i64** %5, align 8
  %182 = load i64, i64* %181, align 8
  %183 = call i64 @XML_T(i8 signext 0)
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %177
  %186 = load i64*, i64** %5, align 8
  %187 = getelementptr inbounds i64, i64* %186, i32 1
  store i64* %187, i64** %5, align 8
  br label %188

188:                                              ; preds = %185, %177
  %189 = load i64*, i64** %5, align 8
  store i64* %189, i64** %7, align 8
  br label %202

190:                                              ; preds = %65
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 0
  %193 = load i64*, i64** %7, align 8
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @poolAppendChar(i32* %192, i64 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %190
  %198 = load i32, i32* @XML_FALSE, align 4
  store i32 %198, i32* %3, align 4
  br label %206

199:                                              ; preds = %190
  %200 = load i64*, i64** %7, align 8
  %201 = getelementptr inbounds i64, i64* %200, i32 1
  store i64* %201, i64** %7, align 8
  br label %202

202:                                              ; preds = %199, %188
  br label %203

203:                                              ; preds = %202, %60
  br label %14

204:                                              ; preds = %14
  %205 = load i32, i32* @XML_TRUE, align 4
  store i32 %205, i32* %3, align 4
  br label %206

206:                                              ; preds = %204, %197, %175, %162, %150, %121, %98, %85, %35
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local i64 @XML_T(i8 signext) #1

declare dso_local i32 @poolAppendChar(i32*, i64) #1

declare dso_local i64 @lookup(%struct.TYPE_9__*, i32*, i64, i32) #1

declare dso_local i64 @poolStart(i32*) #1

declare dso_local i32 @poolDiscard(i32*) #1

declare dso_local i64 @poolLength(i32*) #1

declare dso_local i64 @poolCopyString(i32*, i64) #1

declare dso_local i64 @addBinding(%struct.TYPE_9__*, %struct.TYPE_10__*, i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
