; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzpool/common/extr_kernel.c_vn_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzpool/common/extr_kernel.c_vn_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.stat64 = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"/dsk/\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"r%s\00", align 1
@FCREAT = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@vn_dumpdir = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@UMEM_NOFAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_open(i8* %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_4__** %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_4__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.stat64, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.TYPE_4__** %4, %struct.TYPE_4__*** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %27 = load i32, i32* @MAXPATHLEN, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %20, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %21, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i64 @strncmp(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %71

34:                                               ; preds = %7
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* @O_RDONLY, align 4
  %37 = call i32 (i8*, i32, ...) @open64(i8* %35, i32 %36)
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @errno, align 4
  store i32 %41, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %165

42:                                               ; preds = %34
  %43 = load i32, i32* %16, align 4
  %44 = call i32 @fstat64(i32 %43, %struct.stat64* %22)
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* %16, align 4
  %48 = call i32 @close(i32 %47)
  %49 = load i32, i32* @errno, align 4
  store i32 %49, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %165

50:                                               ; preds = %42
  %51 = load i32, i32* %16, align 4
  %52 = call i32 @close(i32 %51)
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @sprintf(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  %55 = load i8*, i8** %9, align 8
  %56 = call i8* @strstr(i8* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i8* %56, i8** %23, align 8
  %57 = load i8*, i8** %23, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %50
  %60 = load i8*, i8** %23, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = getelementptr inbounds i8, i8* %30, i64 %64
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = load i8*, i8** %23, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = call i32 @sprintf(i8* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %59, %50
  br label %84

71:                                               ; preds = %7
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 @sprintf(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %72)
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @FCREAT, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %71
  %79 = call i32 @stat64(i8* %30, %struct.stat64* %22)
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* @errno, align 4
  store i32 %82, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %165

83:                                               ; preds = %78, %71
  br label %84

84:                                               ; preds = %83, %70
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @FCREAT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = call i32 @umask(i32 0)
  store i32 %90, i32* %19, align 4
  br label %91

91:                                               ; preds = %89, %84
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @FREAD, align 4
  %94 = sub nsw i32 %92, %93
  %95 = load i32, i32* %12, align 4
  %96 = call i32 (i8*, i32, ...) @open64(i8* %30, i32 %94, i32 %95)
  store i32 %96, i32* %16, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @FCREAT, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %91
  %102 = load i32, i32* %19, align 4
  %103 = call i32 @umask(i32 %102)
  br label %104

104:                                              ; preds = %101, %91
  %105 = load i8*, i8** @vn_dumpdir, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %129

107:                                              ; preds = %104
  %108 = load i32, i32* @MAXPATHLEN, align 4
  %109 = zext i32 %108 to i64
  %110 = call i8* @llvm.stacksave()
  store i8* %110, i8** %25, align 8
  %111 = alloca i8, i64 %109, align 16
  store i64 %109, i64* %26, align 8
  %112 = trunc i64 %109 to i32
  %113 = load i8*, i8** @vn_dumpdir, align 8
  %114 = call i8* @basename(i8* %30)
  %115 = call i32 @snprintf(i8* %111, i32 %112, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %113, i8* %114)
  %116 = load i32, i32* @O_CREAT, align 4
  %117 = load i32, i32* @O_WRONLY, align 4
  %118 = or i32 %116, %117
  %119 = call i32 (i8*, i32, ...) @open64(i8* %111, i32 %118, i32 438)
  store i32 %119, i32* %17, align 4
  %120 = load i32, i32* %17, align 4
  %121 = icmp eq i32 %120, -1
  br i1 %121, label %122, label %124

122:                                              ; preds = %107
  %123 = load i32, i32* @errno, align 4
  store i32 %123, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %125

124:                                              ; preds = %107
  store i32 0, i32* %24, align 4
  br label %125

125:                                              ; preds = %124, %122
  %126 = load i8*, i8** %25, align 8
  call void @llvm.stackrestore(i8* %126)
  %127 = load i32, i32* %24, align 4
  switch i32 %127, label %165 [
    i32 0, label %128
  ]

128:                                              ; preds = %125
  br label %130

129:                                              ; preds = %104
  store i32 -1, i32* %17, align 4
  br label %130

130:                                              ; preds = %129, %128
  %131 = load i32, i32* %16, align 4
  %132 = icmp eq i32 %131, -1
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = load i32, i32* @errno, align 4
  store i32 %134, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %165

135:                                              ; preds = %130
  %136 = load i32, i32* %16, align 4
  %137 = call i32 @fstat64(i32 %136, %struct.stat64* %22)
  %138 = icmp eq i32 %137, -1
  br i1 %138, label %139, label %143

139:                                              ; preds = %135
  %140 = load i32, i32* %16, align 4
  %141 = call i32 @close(i32 %140)
  %142 = load i32, i32* @errno, align 4
  store i32 %142, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %165

143:                                              ; preds = %135
  %144 = load i32, i32* %16, align 4
  %145 = load i32, i32* @F_SETFD, align 4
  %146 = load i32, i32* @FD_CLOEXEC, align 4
  %147 = call i32 @fcntl(i32 %144, i32 %145, i32 %146)
  %148 = load i32, i32* @UMEM_NOFAIL, align 4
  %149 = call %struct.TYPE_4__* @umem_zalloc(i32 16, i32 %148)
  store %struct.TYPE_4__* %149, %struct.TYPE_4__** %18, align 8
  %150 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %13, align 8
  store %struct.TYPE_4__* %149, %struct.TYPE_4__** %150, align 8
  %151 = load i32, i32* %16, align 4
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 4
  %154 = getelementptr inbounds %struct.stat64, %struct.stat64* %22, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 3
  store i32 %155, i32* %157, align 4
  %158 = load i8*, i8** %9, align 8
  %159 = call i32 @spa_strdup(i8* %158)
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* %17, align 4
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %165

165:                                              ; preds = %143, %139, %133, %125, %81, %46, %40
  %166 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %166)
  %167 = load i32, i32* %8, align 4
  ret i32 %167
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @open64(i8*, i32, ...) #2

declare dso_local i32 @fstat64(i32, %struct.stat64*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i32 @stat64(i8*, %struct.stat64*) #2

declare dso_local i32 @umask(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i8* @basename(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @fcntl(i32, i32, i32) #2

declare dso_local %struct.TYPE_4__* @umem_zalloc(i32, i32) #2

declare dso_local i32 @spa_strdup(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
