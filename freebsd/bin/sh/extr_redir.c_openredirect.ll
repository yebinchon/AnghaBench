; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_redir.c_openredirect.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_redir.c_openredirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.node = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i8* }
%struct.stat = type { i32 }
%struct.TYPE_4__ = type { i64 }

@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"cannot open %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"cannot create %s: %s\00", align 1
@Cflag = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"%d: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.node*, i8*)* @openredirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @openredirect(%union.node* %0, i8* %1) #0 {
  %3 = alloca %union.node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stat, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %union.node* %0, %union.node** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %union.node*, %union.node** %3, align 8
  %11 = bitcast %union.node* %10 to %struct.TYPE_3__*
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  store i8 0, i8* %17, align 1
  %18 = load %union.node*, %union.node** %3, align 8
  %19 = bitcast %union.node* %18 to %struct.TYPE_3__*
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %204 [
    i32 134, label %22
    i32 132, label %37
    i32 130, label %54
    i32 135, label %120
    i32 136, label %139
    i32 129, label %158
    i32 133, label %158
    i32 131, label %201
    i32 128, label %201
  ]

22:                                               ; preds = %2
  %23 = load %union.node*, %union.node** %3, align 8
  %24 = bitcast %union.node* %23 to %struct.TYPE_3__*
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* @O_RDONLY, align 4
  %29 = call i32 (i8*, i32, ...) @open(i8* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* @errno, align 4
  %34 = call i8* @strerror(i32 %33)
  %35 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %32, i8* %34)
  br label %36

36:                                               ; preds = %31, %22
  br label %206

37:                                               ; preds = %2
  %38 = load %union.node*, %union.node** %3, align 8
  %39 = bitcast %union.node* %38 to %struct.TYPE_3__*
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %7, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* @O_RDWR, align 4
  %44 = load i32, i32* @O_CREAT, align 4
  %45 = or i32 %43, %44
  %46 = call i32 (i8*, i32, ...) @open(i8* %42, i32 %45, i32 438)
  store i32 %46, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %37
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* @errno, align 4
  %51 = call i8* @strerror(i32 %50)
  %52 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %49, i8* %51)
  br label %53

53:                                               ; preds = %48, %37
  br label %206

54:                                               ; preds = %2
  %55 = load i32, i32* @Cflag, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %119

57:                                               ; preds = %54
  %58 = load %union.node*, %union.node** %3, align 8
  %59 = bitcast %union.node* %58 to %struct.TYPE_3__*
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %7, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @stat(i8* %62, %struct.stat* %5)
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %80

65:                                               ; preds = %57
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* @O_WRONLY, align 4
  %68 = load i32, i32* @O_CREAT, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @O_EXCL, align 4
  %71 = or i32 %69, %70
  %72 = call i32 (i8*, i32, ...) @open(i8* %66, i32 %71, i32 438)
  store i32 %72, i32* %8, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %65
  %75 = load i8*, i8** %7, align 8
  %76 = load i32, i32* @errno, align 4
  %77 = call i8* @strerror(i32 %76)
  %78 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %75, i8* %77)
  br label %79

79:                                               ; preds = %74, %65
  br label %118

80:                                               ; preds = %57
  %81 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @S_ISREG(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %112, label %85

85:                                               ; preds = %80
  %86 = load i8*, i8** %7, align 8
  %87 = load i32, i32* @O_WRONLY, align 4
  %88 = call i32 (i8*, i32, ...) @open(i8* %86, i32 %87, i32 438)
  store i32 %88, i32* %8, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load i8*, i8** %7, align 8
  %92 = load i32, i32* @errno, align 4
  %93 = call i8* @strerror(i32 %92)
  %94 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %91, i8* %93)
  br label %95

95:                                               ; preds = %90, %85
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @fstat(i32 %96, %struct.stat* %5)
  %98 = icmp ne i32 %97, -1
  br i1 %98, label %99, label %111

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @S_ISREG(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @close(i32 %105)
  %107 = load i8*, i8** %7, align 8
  %108 = load i32, i32* @EEXIST, align 4
  %109 = call i8* @strerror(i32 %108)
  %110 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %107, i8* %109)
  br label %111

111:                                              ; preds = %104, %99, %95
  br label %117

112:                                              ; preds = %80
  %113 = load i8*, i8** %7, align 8
  %114 = load i32, i32* @EEXIST, align 4
  %115 = call i8* @strerror(i32 %114)
  %116 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %113, i8* %115)
  br label %117

117:                                              ; preds = %112, %111
  br label %118

118:                                              ; preds = %117, %79
  br label %206

119:                                              ; preds = %54
  br label %120

120:                                              ; preds = %2, %119
  %121 = load %union.node*, %union.node** %3, align 8
  %122 = bitcast %union.node* %121 to %struct.TYPE_3__*
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 2
  %124 = load i8*, i8** %123, align 8
  store i8* %124, i8** %7, align 8
  %125 = load i8*, i8** %7, align 8
  %126 = load i32, i32* @O_WRONLY, align 4
  %127 = load i32, i32* @O_CREAT, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @O_TRUNC, align 4
  %130 = or i32 %128, %129
  %131 = call i32 (i8*, i32, ...) @open(i8* %125, i32 %130, i32 438)
  store i32 %131, i32* %8, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %120
  %134 = load i8*, i8** %7, align 8
  %135 = load i32, i32* @errno, align 4
  %136 = call i8* @strerror(i32 %135)
  %137 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %134, i8* %136)
  br label %138

138:                                              ; preds = %133, %120
  br label %206

139:                                              ; preds = %2
  %140 = load %union.node*, %union.node** %3, align 8
  %141 = bitcast %union.node* %140 to %struct.TYPE_3__*
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 2
  %143 = load i8*, i8** %142, align 8
  store i8* %143, i8** %7, align 8
  %144 = load i8*, i8** %7, align 8
  %145 = load i32, i32* @O_WRONLY, align 4
  %146 = load i32, i32* @O_CREAT, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @O_APPEND, align 4
  %149 = or i32 %147, %148
  %150 = call i32 (i8*, i32, ...) @open(i8* %144, i32 %149, i32 438)
  store i32 %150, i32* %8, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %139
  %153 = load i8*, i8** %7, align 8
  %154 = load i32, i32* @errno, align 4
  %155 = call i8* @strerror(i32 %154)
  %156 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %153, i8* %155)
  br label %157

157:                                              ; preds = %152, %139
  br label %206

158:                                              ; preds = %2, %2
  %159 = load %union.node*, %union.node** %3, align 8
  %160 = bitcast %union.node* %159 to %struct.TYPE_4__*
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp uge i64 %162, 0
  br i1 %163, label %164, label %197

164:                                              ; preds = %158
  %165 = load i8*, i8** %4, align 8
  %166 = load %union.node*, %union.node** %3, align 8
  %167 = bitcast %union.node* %166 to %struct.TYPE_4__*
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds i8, i8* %165, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = icmp ne i8 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %164
  %174 = load i8*, i8** %4, align 8
  %175 = load i32, i32* %6, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  store i8 1, i8* %177, align 1
  br label %196

178:                                              ; preds = %164
  %179 = load %union.node*, %union.node** %3, align 8
  %180 = bitcast %union.node* %179 to %struct.TYPE_4__*
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = trunc i64 %182 to i32
  %184 = load i32, i32* %6, align 4
  %185 = call i32 @dup2(i32 %183, i32 %184)
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %178
  %188 = load %union.node*, %union.node** %3, align 8
  %189 = bitcast %union.node* %188 to %struct.TYPE_4__*
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i32, i32* @errno, align 4
  %193 = call i8* @strerror(i32 %192)
  %194 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 %191, i8* %193)
  br label %195

195:                                              ; preds = %187, %178
  br label %196

196:                                              ; preds = %195, %173
  br label %200

197:                                              ; preds = %158
  %198 = load i32, i32* %6, align 4
  %199 = call i32 @close(i32 %198)
  br label %200

200:                                              ; preds = %197, %196
  br label %226

201:                                              ; preds = %2, %2
  %202 = load %union.node*, %union.node** %3, align 8
  %203 = call i32 @openhere(%union.node* %202)
  store i32 %203, i32* %8, align 4
  br label %206

204:                                              ; preds = %2
  %205 = call i32 (...) @abort() #3
  unreachable

206:                                              ; preds = %201, %157, %138, %118, %53, %36
  %207 = load i32, i32* %8, align 4
  %208 = load i32, i32* %6, align 4
  %209 = icmp ne i32 %207, %208
  br i1 %209, label %210, label %226

210:                                              ; preds = %206
  %211 = load i32, i32* %8, align 4
  %212 = load i32, i32* %6, align 4
  %213 = call i32 @dup2(i32 %211, i32 %212)
  %214 = icmp eq i32 %213, -1
  br i1 %214, label %215, label %223

215:                                              ; preds = %210
  %216 = load i32, i32* @errno, align 4
  store i32 %216, i32* %9, align 4
  %217 = load i32, i32* %8, align 4
  %218 = call i32 @close(i32 %217)
  %219 = load i32, i32* %6, align 4
  %220 = load i32, i32* %9, align 4
  %221 = call i8* @strerror(i32 %220)
  %222 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %219, i8* %221)
  br label %223

223:                                              ; preds = %215, %210
  %224 = load i32, i32* %8, align 4
  %225 = call i32 @close(i32 %224)
  br label %226

226:                                              ; preds = %200, %223, %206
  ret void
}

declare dso_local i32 @open(i8*, i32, ...) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @openhere(%union.node*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
