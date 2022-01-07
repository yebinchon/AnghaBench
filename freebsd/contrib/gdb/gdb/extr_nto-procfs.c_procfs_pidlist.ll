; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_nto-procfs.c_procfs_pidlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_nto-procfs.c_procfs_pidlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }
%struct.TYPE_5__ = type { i64, i8*, i32 }

@nto_procfs_path = common dso_local global i8* null, align 8
@gdb_stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to opendir \22%s\22 - %d (%s)\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%s/%s/as\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to open %s - %d (%s)\0A\00", align 1
@DCMD_PROC_INFO = common dso_local global i32 0, align 4
@EOK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"devctl DCMD_PROC_INFO failed - %d (%s)\0A\00", align 1
@DCMD_PROC_MAPDEBUG_BASE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"unavailable\00", align 1
@DCMD_PROC_TIDSTATUS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"%s - %d/%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @procfs_pidlist(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dirent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [512 x i8], align 16
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca [512 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %5, align 8
  store %struct.dirent* null, %struct.dirent** %6, align 8
  store i32 -1, i32* %7, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %11, align 8
  store i64 0, i64* %12, align 8
  %15 = load i8*, i8** @nto_procfs_path, align 8
  %16 = call i32* @opendir(i8* %15)
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load i32, i32* @gdb_stderr, align 4
  %21 = load i8*, i8** @nto_procfs_path, align 8
  %22 = load i32, i32* @errno, align 4
  %23 = load i32, i32* @errno, align 4
  %24 = call i32 @safe_strerror(i32 %23)
  %25 = call i32 (i32, i8*, i8*, i32, ...) @fprintf_unfiltered(i32 %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %21, i32 %22, i32 %24)
  br label %160

26:                                               ; preds = %2
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @rewinddir(i32* %27)
  br label %29

29:                                               ; preds = %152, %26
  br label %30

30:                                               ; preds = %49, %29
  %31 = load i32*, i32** %5, align 8
  %32 = call %struct.dirent* @readdir(i32* %31)
  store %struct.dirent* %32, %struct.dirent** %6, align 8
  %33 = load %struct.dirent*, %struct.dirent** %6, align 8
  %34 = icmp eq %struct.dirent* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @closedir(i32* %36)
  br label %160

38:                                               ; preds = %30
  %39 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %40 = load i8*, i8** @nto_procfs_path, align 8
  %41 = load %struct.dirent*, %struct.dirent** %6, align 8
  %42 = getelementptr inbounds %struct.dirent, %struct.dirent* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @snprintf(i8* %39, i32 511, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %40, i8* %43)
  %45 = load %struct.dirent*, %struct.dirent** %6, align 8
  %46 = getelementptr inbounds %struct.dirent, %struct.dirent* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @atoi(i8* %47)
  store i64 %48, i64* %13, align 8
  br label %49

49:                                               ; preds = %38
  %50 = load i64, i64* %13, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %30, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %54 = load i32, i32* @O_RDONLY, align 4
  %55 = call i32 @open(i8* %53, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = load i32, i32* @gdb_stderr, align 4
  %60 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %61 = load i32, i32* @errno, align 4
  %62 = load i32, i32* @errno, align 4
  %63 = call i32 @safe_strerror(i32 %62)
  %64 = call i32 (i32, i8*, i8*, i32, ...) @fprintf_unfiltered(i32 %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %60, i32 %61, i32 %63)
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @closedir(i32* %65)
  br label %160

67:                                               ; preds = %52
  %68 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %69 = bitcast i8* %68 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %69, %struct.TYPE_5__** %9, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @DCMD_PROC_INFO, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %73 = call i64 @devctl(i32 %70, i32 %71, %struct.TYPE_5__* %72, i32 512, i32 0)
  %74 = load i64, i64* @EOK, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %67
  %77 = load i32, i32* @gdb_stderr, align 4
  %78 = load i32, i32* @errno, align 4
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i8*
  %81 = load i32, i32* @errno, align 4
  %82 = call i32 @safe_strerror(i32 %81)
  %83 = call i32 (i32, i8*, i8*, i32, ...) @fprintf_unfiltered(i32 %77, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %80, i32 %82)
  br label %155

84:                                               ; preds = %67
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %12, align 8
  %88 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %89 = bitcast i8* %88 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %89, %struct.TYPE_5__** %10, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @DCMD_PROC_MAPDEBUG_BASE, align 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %93 = call i64 @devctl(i32 %90, i32 %91, %struct.TYPE_5__* %92, i32 512, i32 0)
  %94 = load i64, i64* @EOK, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %84
  %97 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %98 = call i32 @strcpy(i8* %97, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %105

99:                                               ; preds = %84
  %100 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @strcpy(i8* %100, i8* %103)
  br label %105

105:                                              ; preds = %99, %96
  %106 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %107 = bitcast i8* %106 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %107, %struct.TYPE_5__** %11, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 2
  store i32 1, i32* %109, align 8
  br label %110

110:                                              ; preds = %144, %105
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = load i64, i64* %12, align 8
  %116 = icmp sle i64 %114, %115
  br i1 %116, label %117, label %149

117:                                              ; preds = %110
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @DCMD_PROC_TIDSTATUS, align 4
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %121 = call i64 @devctl(i32 %118, i32 %119, %struct.TYPE_5__* %120, i32 512, i32 0)
  %122 = load i64, i64* @EOK, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %117
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %149

130:                                              ; preds = %124, %117
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %130
  %136 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %137 = load i64, i64* %13, align 8
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = call i32 @printf_filtered(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %136, i64 %137, i64 %141)
  br label %143

143:                                              ; preds = %135, %130
  br label %144

144:                                              ; preds = %143
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 8
  br label %110

149:                                              ; preds = %129, %110
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @close(i32 %150)
  br label %152

152:                                              ; preds = %149
  %153 = load %struct.dirent*, %struct.dirent** %6, align 8
  %154 = icmp ne %struct.dirent* %153, null
  br i1 %154, label %29, label %155

155:                                              ; preds = %152, %76
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @close(i32 %156)
  %158 = load i32*, i32** %5, align 8
  %159 = call i32 @closedir(i32* %158)
  br label %160

160:                                              ; preds = %155, %58, %35, %19
  ret void
}

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i8*, i32, ...) #1

declare dso_local i32 @safe_strerror(i32) #1

declare dso_local i32 @rewinddir(i32*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @devctl(i32, i32, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @printf_filtered(i8*, i8*, i64, i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
