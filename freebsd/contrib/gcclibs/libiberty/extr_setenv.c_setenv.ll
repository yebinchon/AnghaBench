; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_setenv.c_setenv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_setenv.c_setenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOCK = common dso_local global i32 0, align 4
@__environ = common dso_local global i8** null, align 8
@last_environ = common dso_local global i8** null, align 8
@UNLOCK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setenv(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8** null, i8*** %8, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %10, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %11, align 8
  %22 = load i32, i32* @LOCK, align 4
  store i64 0, i64* %9, align 8
  %23 = load i8**, i8*** @__environ, align 8
  %24 = icmp ne i8** %23, null
  br i1 %24, label %25, label %55

25:                                               ; preds = %3
  %26 = load i8**, i8*** @__environ, align 8
  store i8** %26, i8*** %8, align 8
  br label %27

27:                                               ; preds = %51, %25
  %28 = load i8**, i8*** %8, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %54

31:                                               ; preds = %27
  %32 = load i8**, i8*** %8, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call i32 @strncmp(i8* %33, i8* %34, i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %31
  %39 = load i8**, i8*** %8, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = load i64, i64* %10, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 61
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %54

47:                                               ; preds = %38, %31
  %48 = load i64, i64* %9, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %9, align 8
  br label %50

50:                                               ; preds = %47
  br label %51

51:                                               ; preds = %50
  %52 = load i8**, i8*** %8, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i32 1
  store i8** %53, i8*** %8, align 8
  br label %27

54:                                               ; preds = %46, %27
  br label %55

55:                                               ; preds = %54, %3
  %56 = load i8**, i8*** @__environ, align 8
  %57 = icmp eq i8** %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = load i8**, i8*** %8, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %150

62:                                               ; preds = %58, %55
  %63 = load i8**, i8*** @__environ, align 8
  %64 = load i8**, i8*** @last_environ, align 8
  %65 = icmp eq i8** %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %62
  %67 = load i8**, i8*** @__environ, align 8
  %68 = icmp ne i8** %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i8**, i8*** @last_environ, align 8
  %71 = load i64, i64* %9, align 8
  %72 = add i64 %71, 2
  %73 = mul i64 %72, 8
  %74 = call i64 @realloc(i8** %70, i64 %73)
  %75 = inttoptr i64 %74 to i8**
  store i8** %75, i8*** %12, align 8
  br label %82

76:                                               ; preds = %66, %62
  %77 = load i64, i64* %9, align 8
  %78 = add i64 %77, 2
  %79 = mul i64 %78, 8
  %80 = call i64 @malloc(i64 %79)
  %81 = inttoptr i64 %80 to i8**
  store i8** %81, i8*** %12, align 8
  br label %82

82:                                               ; preds = %76, %69
  %83 = load i8**, i8*** %12, align 8
  %84 = icmp eq i8** %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32, i32* @UNLOCK, align 4
  store i32 -1, i32* %4, align 4
  br label %200

87:                                               ; preds = %82
  %88 = load i64, i64* %10, align 8
  %89 = add i64 %88, 1
  %90 = load i64, i64* %11, align 8
  %91 = add i64 %89, %90
  %92 = call i64 @malloc(i64 %91)
  %93 = inttoptr i64 %92 to i8*
  %94 = load i8**, i8*** %12, align 8
  %95 = load i64, i64* %9, align 8
  %96 = getelementptr inbounds i8*, i8** %94, i64 %95
  store i8* %93, i8** %96, align 8
  %97 = load i8**, i8*** %12, align 8
  %98 = load i64, i64* %9, align 8
  %99 = getelementptr inbounds i8*, i8** %97, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = icmp eq i8* %100, null
  br i1 %101, label %102, label %109

102:                                              ; preds = %87
  %103 = load i8**, i8*** %12, align 8
  %104 = bitcast i8** %103 to i8*
  %105 = call i32 @free(i8* %104)
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = call i32 @__set_errno(i32 %106)
  %108 = load i32, i32* @UNLOCK, align 4
  store i32 -1, i32* %4, align 4
  br label %200

109:                                              ; preds = %87
  %110 = load i8**, i8*** @__environ, align 8
  %111 = load i8**, i8*** @last_environ, align 8
  %112 = icmp ne i8** %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %109
  %114 = load i8**, i8*** %12, align 8
  %115 = bitcast i8** %114 to i8*
  %116 = load i8**, i8*** @__environ, align 8
  %117 = bitcast i8** %116 to i8*
  %118 = load i64, i64* %9, align 8
  %119 = mul i64 %118, 8
  %120 = call i32 @memcpy(i8* %115, i8* %117, i64 %119)
  br label %121

121:                                              ; preds = %113, %109
  %122 = load i8**, i8*** %12, align 8
  %123 = load i64, i64* %9, align 8
  %124 = getelementptr inbounds i8*, i8** %122, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = load i8*, i8** %5, align 8
  %127 = load i64, i64* %10, align 8
  %128 = call i32 @memcpy(i8* %125, i8* %126, i64 %127)
  %129 = load i8**, i8*** %12, align 8
  %130 = load i64, i64* %9, align 8
  %131 = getelementptr inbounds i8*, i8** %129, i64 %130
  %132 = load i8*, i8** %131, align 8
  %133 = load i64, i64* %10, align 8
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  store i8 61, i8* %134, align 1
  %135 = load i8**, i8*** %12, align 8
  %136 = load i64, i64* %9, align 8
  %137 = getelementptr inbounds i8*, i8** %135, i64 %136
  %138 = load i8*, i8** %137, align 8
  %139 = load i64, i64* %10, align 8
  %140 = add i64 %139, 1
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = load i8*, i8** %6, align 8
  %143 = load i64, i64* %11, align 8
  %144 = call i32 @memcpy(i8* %141, i8* %142, i64 %143)
  %145 = load i8**, i8*** %12, align 8
  %146 = load i64, i64* %9, align 8
  %147 = add i64 %146, 1
  %148 = getelementptr inbounds i8*, i8** %145, i64 %147
  store i8* null, i8** %148, align 8
  %149 = load i8**, i8*** %12, align 8
  store i8** %149, i8*** @__environ, align 8
  store i8** %149, i8*** @last_environ, align 8
  br label %198

150:                                              ; preds = %58
  %151 = load i32, i32* %7, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %197

153:                                              ; preds = %150
  %154 = load i8**, i8*** %8, align 8
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @strlen(i8* %155)
  %157 = sext i32 %156 to i64
  store i64 %157, i64* %13, align 8
  %158 = load i64, i64* %13, align 8
  %159 = add i64 %158, 1
  %160 = load i64, i64* %10, align 8
  %161 = add i64 %160, 1
  %162 = load i64, i64* %11, align 8
  %163 = add i64 %161, %162
  %164 = icmp ult i64 %159, %163
  br i1 %164, label %165, label %179

165:                                              ; preds = %153
  %166 = load i64, i64* %10, align 8
  %167 = add i64 %166, 1
  %168 = load i64, i64* %11, align 8
  %169 = add i64 %167, %168
  %170 = call i64 @malloc(i64 %169)
  %171 = inttoptr i64 %170 to i8*
  store i8* %171, i8** %14, align 8
  %172 = load i8*, i8** %14, align 8
  %173 = icmp eq i8* %172, null
  br i1 %173, label %174, label %176

174:                                              ; preds = %165
  %175 = load i32, i32* @UNLOCK, align 4
  store i32 -1, i32* %4, align 4
  br label %200

176:                                              ; preds = %165
  %177 = load i8*, i8** %14, align 8
  %178 = load i8**, i8*** %8, align 8
  store i8* %177, i8** %178, align 8
  br label %179

179:                                              ; preds = %176, %153
  %180 = load i8**, i8*** %8, align 8
  %181 = load i8*, i8** %180, align 8
  %182 = load i8*, i8** %5, align 8
  %183 = load i64, i64* %10, align 8
  %184 = call i32 @memcpy(i8* %181, i8* %182, i64 %183)
  %185 = load i8**, i8*** %8, align 8
  %186 = load i8*, i8** %185, align 8
  %187 = load i64, i64* %10, align 8
  %188 = getelementptr inbounds i8, i8* %186, i64 %187
  store i8 61, i8* %188, align 1
  %189 = load i8**, i8*** %8, align 8
  %190 = load i8*, i8** %189, align 8
  %191 = load i64, i64* %10, align 8
  %192 = add i64 %191, 1
  %193 = getelementptr inbounds i8, i8* %190, i64 %192
  %194 = load i8*, i8** %6, align 8
  %195 = load i64, i64* %11, align 8
  %196 = call i32 @memcpy(i8* %193, i8* %194, i64 %195)
  br label %197

197:                                              ; preds = %179, %150
  br label %198

198:                                              ; preds = %197, %121
  %199 = load i32, i32* @UNLOCK, align 4
  store i32 0, i32* %4, align 4
  br label %200

200:                                              ; preds = %198, %174, %102, %85
  %201 = load i32, i32* %4, align 4
  ret i32 %201
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @realloc(i8**, i64) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @__set_errno(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
