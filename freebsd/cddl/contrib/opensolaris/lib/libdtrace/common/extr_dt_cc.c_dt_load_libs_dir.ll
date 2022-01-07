; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_load_libs_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_load_libs_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i64, i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8* }
%struct.dirent = type { i8* }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"skipping lib dir %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c".d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"skipping library %s: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [70 x i8] c"skipping library %s, already processed library with the same name: %s\00", align 1
@DT_CTX_DPROG = common dso_local global i32 0, align 4
@DTRACE_PROBESPEC_NAME = common dso_local global i32 0, align 4
@DTRACE_C_EMPTY = common dso_local global i32 0, align 4
@DTRACE_C_CTL = common dso_local global i32 0, align 4
@EDT_COMPILER = common dso_local global i64 0, align 8
@D_PRAGMA_DEPEND = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"error parsing library %s: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*)* @dt_load_libs_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_load_libs_dir(%struct.TYPE_11__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dirent*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i8* %1, i8** %5, align 8
  %16 = load i32, i32* @PATH_MAX, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32* @opendir(i8* %20)
  store i32* %21, i32** %9, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* @errno, align 4
  %26 = call i8* @strerror(i32 %25)
  %27 = call i32 @dt_dprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %26)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %160

28:                                               ; preds = %2
  br label %29

29:                                               ; preds = %152, %88, %53, %43, %28
  %30 = load i32*, i32** %9, align 8
  %31 = call %struct.dirent* @readdir(i32* %30)
  store %struct.dirent* %31, %struct.dirent** %6, align 8
  %32 = icmp ne %struct.dirent* %31, null
  br i1 %32, label %33, label %157

33:                                               ; preds = %29
  %34 = load %struct.dirent*, %struct.dirent** %6, align 8
  %35 = getelementptr inbounds %struct.dirent, %struct.dirent* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i8* @strrchr(i8* %36, i8 signext 46)
  store i8* %37, i8** %7, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = load i8*, i8** %7, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %33
  br label %29

44:                                               ; preds = %39
  %45 = trunc i64 %17 to i32
  %46 = load i8*, i8** %5, align 8
  %47 = load %struct.dirent*, %struct.dirent** %6, align 8
  %48 = getelementptr inbounds %struct.dirent, %struct.dirent* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @snprintf(i8* %19, i32 %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %46, i8* %49)
  %51 = call i32* @fopen(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %51, i32** %12, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = load i32, i32* @errno, align 4
  %55 = call i8* @strerror(i32 %54)
  %56 = call i32 @dt_dprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %19, i8* %55)
  br label %29

57:                                               ; preds = %44
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 3
  %60 = call %struct.TYPE_12__* @dt_list_next(%struct.TYPE_12__* %59)
  store %struct.TYPE_12__* %60, %struct.TYPE_12__** %14, align 8
  br label %61

61:                                               ; preds = %82, %57
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %63 = icmp ne %struct.TYPE_12__* %62, null
  br i1 %63, label %64, label %85

64:                                               ; preds = %61
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i8* @strrchr(i8* %67, i8 signext 47)
  store i8* %68, i8** %8, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = icmp ne i8* %69, null
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load %struct.dirent*, %struct.dirent** %6, align 8
  %76 = getelementptr inbounds %struct.dirent, %struct.dirent* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @strcmp(i8* %74, i8* %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %64
  br label %85

81:                                               ; preds = %64
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %84 = call %struct.TYPE_12__* @dt_list_next(%struct.TYPE_12__* %83)
  store %struct.TYPE_12__* %84, %struct.TYPE_12__** %14, align 8
  br label %61

85:                                               ; preds = %80, %61
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %87 = icmp ne %struct.TYPE_12__* %86, null
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  %89 = load %struct.dirent*, %struct.dirent** %6, align 8
  %90 = getelementptr inbounds %struct.dirent, %struct.dirent* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @dt_dprintf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0), i8* %91, i8* %94)
  %96 = load i32*, i32** %12, align 8
  %97 = call i32 @fclose(i32* %96)
  br label %29

98:                                               ; preds = %85
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  store i8* %19, i8** %100, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 3
  %104 = call i64 @dt_lib_depend_add(%struct.TYPE_11__* %101, %struct.TYPE_12__* %103, i8* %19)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %98
  %107 = load i32*, i32** %12, align 8
  %108 = call i32 @fclose(i32* %107)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %160

109:                                              ; preds = %98
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %111 = load i32, i32* @DT_CTX_DPROG, align 4
  %112 = load i32, i32* @DTRACE_PROBESPEC_NAME, align 4
  %113 = load i32, i32* @DTRACE_C_EMPTY, align 4
  %114 = load i32, i32* @DTRACE_C_CTL, align 4
  %115 = or i32 %113, %114
  %116 = load i32*, i32** %12, align 8
  %117 = call i8* @dt_compile(%struct.TYPE_11__* %110, i32 %111, i32 %112, i32* null, i32 %115, i32 0, i32* null, i32* %116, i32* null)
  store i8* %117, i8** %13, align 8
  %118 = load i8*, i8** %13, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %141

120:                                              ; preds = %109
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %120
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @EDT_COMPILER, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %138, label %131

131:                                              ; preds = %125
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* @D_PRAGMA_DEPEND, align 4
  %136 = call i64 @dt_errtag(i32 %135)
  %137 = icmp ne i64 %134, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %131, %125
  %139 = load i32*, i32** %12, align 8
  %140 = call i32 @fclose(i32* %139)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %160

141:                                              ; preds = %131, %120, %109
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %149 = call i32 @dtrace_errno(%struct.TYPE_11__* %148)
  %150 = call i8* @dtrace_errmsg(%struct.TYPE_11__* %147, i32 %149)
  %151 = call i32 @dt_dprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %19, i8* %150)
  br label %152

152:                                              ; preds = %146, %141
  %153 = load i32*, i32** %12, align 8
  %154 = call i32 @fclose(i32* %153)
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  store i8* null, i8** %156, align 8
  br label %29

157:                                              ; preds = %29
  %158 = load i32*, i32** %9, align 8
  %159 = call i32 @closedir(i32* %158)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %160

160:                                              ; preds = %157, %138, %106, %23
  %161 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %161)
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @opendir(i8*) #2

declare dso_local i32 @dt_dprintf(i8*, i8*, i8*) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local %struct.TYPE_12__* @dt_list_next(%struct.TYPE_12__*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i64 @dt_lib_depend_add(%struct.TYPE_11__*, %struct.TYPE_12__*, i8*) #2

declare dso_local i8* @dt_compile(%struct.TYPE_11__*, i32, i32, i32*, i32, i32, i32*, i32*, i32*) #2

declare dso_local i64 @dt_errtag(i32) #2

declare dso_local i8* @dtrace_errmsg(%struct.TYPE_11__*, i32) #2

declare dso_local i32 @dtrace_errno(%struct.TYPE_11__*) #2

declare dso_local i32 @closedir(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
