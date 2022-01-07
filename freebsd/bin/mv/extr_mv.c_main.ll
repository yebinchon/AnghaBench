; ModuleID = '/home/carl/AnghaBench/freebsd/bin/mv/extr_mv.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/mv/extr_mv.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"fhinv\00", align 1
@hflg = common dso_local global i32 0, align 4
@iflg = common dso_local global i32 0, align 4
@nflg = common dso_local global i8* null, align 8
@fflg = common dso_local global i32 0, align 4
@vflg = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"%s is not a directory\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%s: destination pathname too long\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.stat, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i32, i32* @PATH_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %13, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %14, align 8
  br label %19

19:                                               ; preds = %33, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @getopt(i32 %20, i8** %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %12, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load i32, i32* %12, align 4
  switch i32 %25, label %31 [
    i32 104, label %26
    i32 105, label %27
    i32 102, label %28
    i32 110, label %29
    i32 118, label %30
  ]

26:                                               ; preds = %24
  store i32 1, i32* @hflg, align 4
  br label %33

27:                                               ; preds = %24
  store i32 1, i32* @iflg, align 4
  store i8* null, i8** @nflg, align 8
  store i32 0, i32* @fflg, align 4
  br label %33

28:                                               ; preds = %24
  store i32 1, i32* @fflg, align 4
  store i8* null, i8** @nflg, align 8
  store i32 0, i32* @iflg, align 4
  br label %33

29:                                               ; preds = %24
  store i8* inttoptr (i64 1 to i8*), i8** @nflg, align 8
  store i32 0, i32* @iflg, align 4
  store i32 0, i32* @fflg, align 4
  br label %33

30:                                               ; preds = %24
  store i32 1, i32* @vflg, align 4
  br label %33

31:                                               ; preds = %24
  %32 = call i32 (...) @usage()
  br label %33

33:                                               ; preds = %31, %30, %29, %28, %27, %26
  br label %19

34:                                               ; preds = %19
  %35 = load i64, i64* @optind, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = sub nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %4, align 4
  %40 = load i64, i64* @optind, align 8
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 %40
  store i8** %42, i8*** %5, align 8
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 2
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = call i32 (...) @usage()
  br label %47

47:                                               ; preds = %45, %34
  %48 = load i8**, i8*** %5, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %48, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @stat(i8* %53, %struct.stat* %11)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @S_ISDIR(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %81, label %61

61:                                               ; preds = %56, %47
  %62 = load i32, i32* %4, align 4
  %63 = icmp sgt i32 %62, 2
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load i8**, i8*** %5, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %65, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %64, %61
  %73 = load i8**, i8*** %5, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i8**, i8*** %5, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 1
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @do_move(i8* %75, i8* %78)
  %80 = call i32 @exit(i32 %79) #4
  unreachable

81:                                               ; preds = %56
  %82 = load i32, i32* @hflg, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %110

84:                                               ; preds = %81
  %85 = load i32, i32* %4, align 4
  %86 = icmp sgt i32 %85, 2
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = call i32 (...) @usage()
  br label %89

89:                                               ; preds = %87, %84
  %90 = load i8**, i8*** %5, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i64 @lstat(i8* %92, %struct.stat* %11)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %109

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @S_ISLNK(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %95
  %101 = load i8**, i8*** %5, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 0
  %103 = load i8*, i8** %102, align 8
  %104 = load i8**, i8*** %5, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 1
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @do_move(i8* %103, i8* %106)
  %108 = call i32 @exit(i32 %107) #4
  unreachable

109:                                              ; preds = %95, %89
  br label %110

110:                                              ; preds = %109, %81
  %111 = load i8**, i8*** %5, align 8
  %112 = load i32, i32* %4, align 4
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %111, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = call i64 @strlen(i8* %116)
  %118 = sub i64 %16, 1
  %119 = icmp ugt i64 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %110
  %121 = load i8**, i8*** %5, align 8
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %122)
  br label %124

124:                                              ; preds = %120, %110
  %125 = load i8**, i8*** %5, align 8
  %126 = load i32, i32* %4, align 4
  %127 = sub nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %125, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @strcpy(i8* %18, i8* %130)
  %132 = call i64 @strlen(i8* %18)
  store i64 %132, i64* %6, align 8
  %133 = load i64, i64* %6, align 8
  %134 = getelementptr inbounds i8, i8* %18, i64 %133
  store i8* %134, i8** %10, align 8
  %135 = load i64, i64* %6, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %124
  %138 = load i8*, i8** %10, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 -1
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp ne i32 %141, 47
  br i1 %142, label %143, label %148

143:                                              ; preds = %137, %124
  %144 = load i8*, i8** %10, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %10, align 8
  store i8 47, i8* %144, align 1
  %146 = load i64, i64* %6, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %6, align 8
  br label %148

148:                                              ; preds = %143, %137
  store i32 0, i32* %8, align 4
  br label %149

149:                                              ; preds = %218, %148
  %150 = load i32, i32* %4, align 4
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* %4, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %221

153:                                              ; preds = %149
  %154 = load i8**, i8*** %5, align 8
  %155 = load i8*, i8** %154, align 8
  %156 = load i8**, i8*** %5, align 8
  %157 = load i8*, i8** %156, align 8
  %158 = call i64 @strlen(i8* %157)
  %159 = getelementptr inbounds i8, i8* %155, i64 %158
  store i8* %159, i8** %9, align 8
  br label %160

160:                                              ; preds = %173, %153
  %161 = load i8*, i8** %9, align 8
  %162 = load i8**, i8*** %5, align 8
  %163 = load i8*, i8** %162, align 8
  %164 = icmp ne i8* %161, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %160
  %166 = load i8*, i8** %9, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 -1
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %169, 47
  br label %171

171:                                              ; preds = %165, %160
  %172 = phi i1 [ false, %160 ], [ %170, %165 ]
  br i1 %172, label %173, label %176

173:                                              ; preds = %171
  %174 = load i8*, i8** %9, align 8
  %175 = getelementptr inbounds i8, i8* %174, i32 -1
  store i8* %175, i8** %9, align 8
  br label %160

176:                                              ; preds = %171
  br label %177

177:                                              ; preds = %190, %176
  %178 = load i8*, i8** %9, align 8
  %179 = load i8**, i8*** %5, align 8
  %180 = load i8*, i8** %179, align 8
  %181 = icmp ne i8* %178, %180
  br i1 %181, label %182, label %188

182:                                              ; preds = %177
  %183 = load i8*, i8** %9, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 -1
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp ne i32 %186, 47
  br label %188

188:                                              ; preds = %182, %177
  %189 = phi i1 [ false, %177 ], [ %187, %182 ]
  br i1 %189, label %190, label %193

190:                                              ; preds = %188
  %191 = load i8*, i8** %9, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 -1
  store i8* %192, i8** %9, align 8
  br label %177

193:                                              ; preds = %188
  %194 = load i64, i64* %6, align 8
  %195 = load i8*, i8** %9, align 8
  %196 = call i64 @strlen(i8* %195)
  store i64 %196, i64* %7, align 8
  %197 = add i64 %194, %196
  %198 = load i32, i32* @PATH_MAX, align 4
  %199 = sext i32 %198 to i64
  %200 = icmp uge i64 %197, %199
  br i1 %200, label %201, label %205

201:                                              ; preds = %193
  %202 = load i8**, i8*** %5, align 8
  %203 = load i8*, i8** %202, align 8
  %204 = call i32 @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %203)
  store i32 1, i32* %8, align 4
  br label %217

205:                                              ; preds = %193
  %206 = load i8*, i8** %10, align 8
  %207 = load i8*, i8** %9, align 8
  %208 = load i64, i64* %7, align 8
  %209 = add i64 %208, 1
  %210 = call i32 @memmove(i8* %206, i8* %207, i64 %209)
  %211 = load i8**, i8*** %5, align 8
  %212 = load i8*, i8** %211, align 8
  %213 = call i32 @do_move(i8* %212, i8* %18)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %205
  store i32 1, i32* %8, align 4
  br label %216

216:                                              ; preds = %215, %205
  br label %217

217:                                              ; preds = %216, %201
  br label %218

218:                                              ; preds = %217
  %219 = load i8**, i8*** %5, align 8
  %220 = getelementptr inbounds i8*, i8** %219, i32 1
  store i8** %220, i8*** %5, align 8
  br label %149

221:                                              ; preds = %149
  %222 = load i32, i32* %8, align 4
  %223 = call i32 @exit(i32 %222) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @usage(...) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @S_ISDIR(i32) #2

declare dso_local i32 @errx(i32, i8*, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @do_move(i8*, i8*) #2

declare dso_local i64 @lstat(i8*, %struct.stat*) #2

declare dso_local i64 @S_ISLNK(i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @warnx(i8*, i8*) #2

declare dso_local i32 @memmove(i8*, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
