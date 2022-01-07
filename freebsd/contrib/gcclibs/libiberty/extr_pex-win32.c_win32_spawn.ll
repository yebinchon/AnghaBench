; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_pex-win32.c_win32_spawn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_pex-win32.c_win32_spawn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@env_compare = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, i8**, i8**, i32, i32, %struct.TYPE_4__*)* @win32_spawn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @win32_spawn(i8* %0, i32 %1, i8** %2, i8** %3, i32 %4, i32 %5, %struct.TYPE_4__* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8** %2, i8*** %11, align 8
  store i8** %3, i8*** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %15, align 8
  store i8* null, i8** %19, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  %24 = load i8**, i8*** %12, align 8
  %25 = icmp ne i8** %24, null
  br i1 %25, label %26, label %100

26:                                               ; preds = %7
  store i32 0, i32* %20, align 4
  br label %27

27:                                               ; preds = %35, %26
  %28 = load i8**, i8*** %12, align 8
  %29 = load i32, i32* %20, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %20, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %20, align 4
  br label %27

38:                                               ; preds = %27
  %39 = load i32, i32* %20, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %99

41:                                               ; preds = %38
  store i32 1, i32* %22, align 4
  %42 = load i32, i32* %20, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 8, %43
  %45 = trunc i64 %44 to i32
  %46 = call i8** @alloca(i32 %45)
  store i8** %46, i8*** %18, align 8
  %47 = load i8**, i8*** %18, align 8
  %48 = load i8**, i8*** %12, align 8
  %49 = load i32, i32* %20, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 8, %50
  %52 = trunc i64 %51 to i32
  %53 = call i32 @memcpy(i8** %47, i8** %48, i32 %52)
  %54 = load i8**, i8*** %18, align 8
  %55 = load i32, i32* %20, align 4
  %56 = load i32, i32* @env_compare, align 4
  %57 = call i32 @qsort(i8** %54, i32 %55, i32 8, i32 %56)
  store i32 0, i32* %21, align 4
  br label %58

58:                                               ; preds = %74, %41
  %59 = load i32, i32* %21, align 4
  %60 = load i32, i32* %20, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %58
  %63 = load i8**, i8*** %12, align 8
  %64 = load i32, i32* %21, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @strlen(i8* %67)
  %69 = add nsw i64 %68, 1
  %70 = load i32, i32* %22, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %22, align 4
  br label %74

74:                                               ; preds = %62
  %75 = load i32, i32* %21, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %21, align 4
  br label %58

77:                                               ; preds = %58
  %78 = load i32, i32* %22, align 4
  %79 = call i8* @malloc(i32 %78)
  store i8* %79, i8** %19, align 8
  %80 = load i8*, i8** %19, align 8
  store i8* %80, i8** %23, align 8
  store i32 0, i32* %21, align 4
  br label %81

81:                                               ; preds = %94, %77
  %82 = load i32, i32* %21, align 4
  %83 = load i32, i32* %20, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %81
  %86 = load i8*, i8** %23, align 8
  %87 = load i8**, i8*** %18, align 8
  %88 = load i32, i32* %21, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = call i8* @stpcpy(i8* %86, i8* %91)
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  store i8* %93, i8** %23, align 8
  br label %94

94:                                               ; preds = %85
  %95 = load i32, i32* %21, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %21, align 4
  br label %81

97:                                               ; preds = %81
  %98 = load i8*, i8** %23, align 8
  store i8 0, i8* %98, align 1
  br label %99

99:                                               ; preds = %97, %38
  br label %100

100:                                              ; preds = %99, %7
  %101 = load i8*, i8** %9, align 8
  %102 = load i32, i32* %10, align 4
  %103 = call i8* @find_executable(i8* %101, i32 %102)
  store i8* %103, i8** %16, align 8
  %104 = load i8*, i8** %16, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %100
  br label %149

107:                                              ; preds = %100
  %108 = load i8**, i8*** %11, align 8
  %109 = call i8* @argv_to_cmdline(i8** %108)
  store i8* %109, i8** %17, align 8
  %110 = load i8*, i8** %17, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %107
  br label %149

113:                                              ; preds = %107
  %114 = load i8*, i8** %16, align 8
  %115 = load i8*, i8** %17, align 8
  %116 = load i32, i32* @TRUE, align 4
  %117 = load i32, i32* %13, align 4
  %118 = load i8*, i8** %19, align 8
  %119 = ptrtoint i8* %118 to i32
  %120 = load i32, i32* %14, align 4
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %122 = call i32 @CreateProcess(i8* %114, i8* %115, i32* null, i32* null, i32 %116, i32 %117, i32 %119, i32* null, i32 %120, %struct.TYPE_4__* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %133, label %124

124:                                              ; preds = %113
  %125 = load i8*, i8** %19, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i8*, i8** %19, align 8
  %129 = call i32 @free(i8* %128)
  br label %130

130:                                              ; preds = %127, %124
  %131 = load i8*, i8** %16, align 8
  %132 = call i32 @free(i8* %131)
  store i64 -1, i64* %8, align 8
  br label %168

133:                                              ; preds = %113
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @CloseHandle(i32 %136)
  %138 = load i8*, i8** %16, align 8
  %139 = call i32 @free(i8* %138)
  %140 = load i8*, i8** %19, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %133
  %143 = load i8*, i8** %19, align 8
  %144 = call i32 @free(i8* %143)
  br label %145

145:                                              ; preds = %142, %133
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  store i64 %148, i64* %8, align 8
  br label %168

149:                                              ; preds = %112, %106
  %150 = load i8*, i8** %19, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i8*, i8** %19, align 8
  %154 = call i32 @free(i8* %153)
  br label %155

155:                                              ; preds = %152, %149
  %156 = load i8*, i8** %17, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load i8*, i8** %17, align 8
  %160 = call i32 @free(i8* %159)
  br label %161

161:                                              ; preds = %158, %155
  %162 = load i8*, i8** %16, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i8*, i8** %16, align 8
  %166 = call i32 @free(i8* %165)
  br label %167

167:                                              ; preds = %164, %161
  store i64 -1, i64* %8, align 8
  br label %168

168:                                              ; preds = %167, %145, %130
  %169 = load i64, i64* %8, align 8
  ret i64 %169
}

declare dso_local i8** @alloca(i32) #1

declare dso_local i32 @memcpy(i8**, i8**, i32) #1

declare dso_local i32 @qsort(i8**, i32, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i8* @stpcpy(i8*, i8*) #1

declare dso_local i8* @find_executable(i8*, i32) #1

declare dso_local i8* @argv_to_cmdline(i8**) #1

declare dso_local i32 @CreateProcess(i8*, i8*, i32*, i32*, i32, i32, i32, i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @CloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
