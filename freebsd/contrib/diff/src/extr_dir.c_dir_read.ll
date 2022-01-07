; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_dir.c_dir_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_dir.c_dir_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_data = type { i32, i32 }
%struct.dirdata = type { i8**, i8*, i64 }
%struct.dirent = type { i8* }

@errno = common dso_local global i32 0, align 4
@excluded = common dso_local global i32 0, align 4
@PTRDIFF_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_data*, %struct.dirdata*)* @dir_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dir_read(%struct.file_data* %0, %struct.dirdata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file_data*, align 8
  %5 = alloca %struct.dirdata*, align 8
  %6 = alloca %struct.dirent*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.file_data* %0, %struct.file_data** %4, align 8
  store %struct.dirdata* %1, %struct.dirdata** %5, align 8
  %17 = load %struct.dirdata*, %struct.dirdata** %5, align 8
  %18 = getelementptr inbounds %struct.dirdata, %struct.dirdata* %17, i32 0, i32 0
  store i8** null, i8*** %18, align 8
  %19 = load %struct.dirdata*, %struct.dirdata** %5, align 8
  %20 = getelementptr inbounds %struct.dirdata, %struct.dirdata* %19, i32 0, i32 1
  store i8* null, i8** %20, align 8
  store i64 0, i64* %9, align 8
  store i8* null, i8** %10, align 8
  %21 = load %struct.file_data*, %struct.file_data** %4, align 8
  %22 = getelementptr inbounds %struct.file_data, %struct.file_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %128

25:                                               ; preds = %2
  %26 = load %struct.file_data*, %struct.file_data** %4, align 8
  %27 = getelementptr inbounds %struct.file_data, %struct.file_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32* @opendir(i32 %28)
  store i32* %29, i32** %13, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %169

33:                                               ; preds = %25
  store i64 512, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %34 = load i64, i64* %11, align 8
  %35 = call i8* @xmalloc(i64 %34)
  store i8* %35, i8** %10, align 8
  %36 = load %struct.dirdata*, %struct.dirdata** %5, align 8
  %37 = getelementptr inbounds %struct.dirdata, %struct.dirdata* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  br label %38

38:                                               ; preds = %102, %79, %73, %33
  store i32 0, i32* @errno, align 4
  %39 = load i32*, i32** %13, align 8
  %40 = call %struct.dirent* @readdir(i32* %39)
  store %struct.dirent* %40, %struct.dirent** %6, align 8
  %41 = icmp ne %struct.dirent* %40, null
  br i1 %41, label %42, label %114

42:                                               ; preds = %38
  %43 = load %struct.dirent*, %struct.dirent** %6, align 8
  %44 = getelementptr inbounds %struct.dirent, %struct.dirent* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %14, align 8
  %46 = load %struct.dirent*, %struct.dirent** %6, align 8
  %47 = call i32 @NAMLEN(%struct.dirent* %46)
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %15, align 8
  %50 = load i8*, i8** %14, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 46
  br i1 %54, label %55, label %74

55:                                               ; preds = %42
  %56 = load i8*, i8** %14, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %55
  %62 = load i8*, i8** %14, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 46
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load i8*, i8** %14, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 2
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67, %55
  br label %38

74:                                               ; preds = %67, %61, %42
  %75 = load i32, i32* @excluded, align 4
  %76 = load i8*, i8** %14, align 8
  %77 = call i64 @excluded_filename(i32 %75, i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %38

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %95, %80
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* %12, align 8
  %84 = load i64, i64* %15, align 8
  %85 = add i64 %83, %84
  %86 = icmp ult i64 %82, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %81
  %88 = load i32, i32* @PTRDIFF_MAX, align 4
  %89 = sdiv i32 %88, 2
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* %11, align 8
  %92 = icmp ule i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = call i32 (...) @xalloc_die()
  br label %95

95:                                               ; preds = %93, %87
  %96 = load i8*, i8** %10, align 8
  %97 = load i64, i64* %11, align 8
  %98 = mul i64 %97, 2
  store i64 %98, i64* %11, align 8
  %99 = call i8* @xrealloc(i8* %96, i64 %98)
  store i8* %99, i8** %10, align 8
  %100 = load %struct.dirdata*, %struct.dirdata** %5, align 8
  %101 = getelementptr inbounds %struct.dirdata, %struct.dirdata* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  br label %81

102:                                              ; preds = %81
  %103 = load i8*, i8** %10, align 8
  %104 = load i64, i64* %12, align 8
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  %106 = load i8*, i8** %14, align 8
  %107 = load i64, i64* %15, align 8
  %108 = call i32 @memcpy(i8* %105, i8* %106, i64 %107)
  %109 = load i64, i64* %15, align 8
  %110 = load i64, i64* %12, align 8
  %111 = add i64 %110, %109
  store i64 %111, i64* %12, align 8
  %112 = load i64, i64* %9, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %9, align 8
  br label %38

114:                                              ; preds = %38
  %115 = load i32, i32* @errno, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load i32, i32* @errno, align 4
  store i32 %118, i32* %16, align 4
  %119 = load i32*, i32** %13, align 8
  %120 = call i64 @closedir(i32* %119)
  %121 = load i32, i32* %16, align 4
  store i32 %121, i32* @errno, align 4
  store i32 0, i32* %3, align 4
  br label %169

122:                                              ; preds = %114
  %123 = load i32*, i32** %13, align 8
  %124 = call i64 @closedir(i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  store i32 0, i32* %3, align 4
  br label %169

127:                                              ; preds = %122
  br label %128

128:                                              ; preds = %127, %2
  %129 = load i32, i32* @PTRDIFF_MAX, align 4
  %130 = sext i32 %129 to i64
  %131 = udiv i64 %130, 8
  %132 = sub i64 %131, 1
  %133 = load i64, i64* %9, align 8
  %134 = icmp ule i64 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %128
  %136 = call i32 (...) @xalloc_die()
  br label %137

137:                                              ; preds = %135, %128
  %138 = load i64, i64* %9, align 8
  %139 = add i64 %138, 1
  %140 = mul i64 %139, 8
  %141 = call i8* @xmalloc(i64 %140)
  %142 = bitcast i8* %141 to i8**
  store i8** %142, i8*** %8, align 8
  %143 = load %struct.dirdata*, %struct.dirdata** %5, align 8
  %144 = getelementptr inbounds %struct.dirdata, %struct.dirdata* %143, i32 0, i32 0
  store i8** %142, i8*** %144, align 8
  %145 = load i64, i64* %9, align 8
  %146 = load %struct.dirdata*, %struct.dirdata** %5, align 8
  %147 = getelementptr inbounds %struct.dirdata, %struct.dirdata* %146, i32 0, i32 2
  store i64 %145, i64* %147, align 8
  store i64 0, i64* %7, align 8
  br label %148

148:                                              ; preds = %162, %137
  %149 = load i64, i64* %7, align 8
  %150 = load i64, i64* %9, align 8
  %151 = icmp ult i64 %149, %150
  br i1 %151, label %152, label %165

152:                                              ; preds = %148
  %153 = load i8*, i8** %10, align 8
  %154 = load i8**, i8*** %8, align 8
  %155 = load i64, i64* %7, align 8
  %156 = getelementptr inbounds i8*, i8** %154, i64 %155
  store i8* %153, i8** %156, align 8
  %157 = load i8*, i8** %10, align 8
  %158 = call i64 @strlen(i8* %157)
  %159 = add nsw i64 %158, 1
  %160 = load i8*, i8** %10, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 %159
  store i8* %161, i8** %10, align 8
  br label %162

162:                                              ; preds = %152
  %163 = load i64, i64* %7, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %7, align 8
  br label %148

165:                                              ; preds = %148
  %166 = load i8**, i8*** %8, align 8
  %167 = load i64, i64* %9, align 8
  %168 = getelementptr inbounds i8*, i8** %166, i64 %167
  store i8* null, i8** %168, align 8
  store i32 1, i32* %3, align 4
  br label %169

169:                                              ; preds = %165, %126, %117, %32
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32* @opendir(i32) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i32 @NAMLEN(%struct.dirent*) #1

declare dso_local i64 @excluded_filename(i32, i8*) #1

declare dso_local i32 @xalloc_die(...) #1

declare dso_local i8* @xrealloc(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @closedir(i32*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
