; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/extr_dtrace.c_etcsystem_prune.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/extr_dtrace.c_etcsystem_prune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32 }

@g_etcfile = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"failed to open %s\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"failed to fstat %s\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to allocate memory for %s\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"failed to read %s\00", align 1
@g_etcbegin = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [55 x i8] c"embedded nul byte in %s; manual repair of %s required\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"multiple start sentinels in %s; manual repair of %s required\0A\00", align 1
@g_etcend = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [58 x i8] c"missing end sentinel in %s; manual repair of %s required\0A\00", align 1
@.str.7 = private unnamed_addr constant [74 x i8] c"end sentinel preceeds start sentinel in %s; manual repair of %s required\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"%s.dtrace.%d\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"failed to create %s\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"failed to write to %s\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"failed to chown(2) %s to uid %d, gid %d\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"rename of %s to %s failed\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"cleaned up forceload directives in %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @etcsystem_prune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etcsystem_prune() #0 {
  %1 = alloca %struct.stat, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = load i8*, i8** @g_etcfile, align 8
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = load i32, i32* @O_RDONLY, align 4
  %12 = call i32 (i8*, i32, ...) @open(i8* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %17

14:                                               ; preds = %0
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 (i8*, i8*, ...) @fatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %15)
  br label %17

17:                                               ; preds = %14, %0
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @fstat(i32 %18, %struct.stat* %1)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 (i8*, i8*, ...) @fatal(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %21, %17
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %2, align 8
  %27 = add i64 %26, 1
  %28 = call i8* @malloc(i64 %27)
  store i8* %28, i8** %3, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 (i8*, i8*, ...) @fatal(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %30, %24
  %34 = load i32, i32* %6, align 4
  %35 = load i8*, i8** %3, align 8
  %36 = load i64, i64* %2, align 8
  %37 = call i64 @read(i32 %34, i8* %35, i64 %36)
  %38 = load i64, i64* %2, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 (i8*, i8*, ...) @fatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %40, %33
  %44 = load i8*, i8** %3, align 8
  %45 = load i64, i64* %2, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8 0, i8* %46, align 1
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @close(i32 %47)
  %49 = load i8*, i8** %3, align 8
  %50 = load i8*, i8** @g_etcbegin, align 8
  %51 = call i8* @strstr(i8* %49, i8* %50)
  store i8* %51, i8** %4, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %174

54:                                               ; preds = %43
  %55 = load i8*, i8** %3, align 8
  %56 = call i32 @strlen(i8* %55)
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %2, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i8*, i8** %7, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 (i8*, i8*, ...) @fatal(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i8* %61, i8* %62)
  br label %64

64:                                               ; preds = %60, %54
  %65 = load i8*, i8** %4, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = load i8*, i8** @g_etcbegin, align 8
  %68 = call i8* @strstr(i8* %66, i8* %67)
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i8*, i8** %7, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 (i8*, i8*, ...) @fatal(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i8* %71, i8* %72)
  br label %74

74:                                               ; preds = %70, %64
  %75 = load i8*, i8** %3, align 8
  %76 = load i8*, i8** @g_etcend, align 8
  %77 = call i8* @strstr(i8* %75, i8* %76)
  store i8* %77, i8** %5, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i8*, i8** %7, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = call i32 (i8*, i8*, ...) @fatal(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0), i8* %80, i8* %81)
  br label %83

83:                                               ; preds = %79, %74
  %84 = load i8*, i8** %4, align 8
  %85 = load i8*, i8** %5, align 8
  %86 = icmp ugt i8* %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i8*, i8** %7, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 (i8*, i8*, ...) @fatal(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.7, i64 0, i64 0), i8* %88, i8* %89)
  br label %91

91:                                               ; preds = %87, %83
  %92 = load i8*, i8** @g_etcend, align 8
  %93 = call i32 @strlen(i8* %92)
  %94 = add nsw i32 %93, 1
  %95 = load i8*, i8** %5, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  store i8* %97, i8** %5, align 8
  %98 = load i8*, i8** %5, align 8
  %99 = load i8*, i8** %4, align 8
  %100 = load i8*, i8** %5, align 8
  %101 = call i32 @strlen(i8* %100)
  %102 = add nsw i32 %101, 1
  %103 = call i32 @bcopy(i8* %98, i8* %99, i32 %102)
  %104 = load i8*, i8** %7, align 8
  %105 = call i32 @strlen(i8* %104)
  %106 = add nsw i32 %105, 80
  %107 = sext i32 %106 to i64
  store i64 %107, i64* %2, align 8
  %108 = call i8* @alloca(i64 %107)
  store i8* %108, i8** %8, align 8
  %109 = load i8*, i8** %8, align 8
  %110 = load i64, i64* %2, align 8
  %111 = load i8*, i8** %7, align 8
  %112 = call i32 (...) @getpid()
  %113 = call i32 @snprintf(i8* %109, i64 %110, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* %111, i32 %112)
  %114 = load i8*, i8** %8, align 8
  %115 = load i32, i32* @O_WRONLY, align 4
  %116 = load i32, i32* @O_CREAT, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @O_EXCL, align 4
  %119 = or i32 %117, %118
  %120 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = call i32 (i8*, i32, ...) @open(i8* %114, i32 %119, i32 %121)
  store i32 %122, i32* %6, align 4
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %124, label %127

124:                                              ; preds = %91
  %125 = load i8*, i8** %8, align 8
  %126 = call i32 (i8*, i8*, ...) @fatal(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* %125)
  br label %127

127:                                              ; preds = %124, %91
  %128 = load i32, i32* %6, align 4
  %129 = load i8*, i8** %3, align 8
  %130 = load i8*, i8** %3, align 8
  %131 = call i32 @strlen(i8* %130)
  %132 = call i32 @write(i32 %128, i8* %129, i32 %131)
  %133 = load i8*, i8** %3, align 8
  %134 = call i32 @strlen(i8* %133)
  %135 = icmp slt i32 %132, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %127
  %137 = load i8*, i8** %8, align 8
  %138 = call i32 @unlink(i8* %137)
  %139 = load i8*, i8** %8, align 8
  %140 = call i32 (i8*, i8*, ...) @fatal(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8* %139)
  br label %141

141:                                              ; preds = %136, %127
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @close(i32 %142)
  %144 = load i8*, i8** %8, align 8
  %145 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = call i64 @chown(i8* %144, i64 %146, i64 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %162

151:                                              ; preds = %141
  %152 = load i8*, i8** %8, align 8
  %153 = call i32 @unlink(i8* %152)
  %154 = load i8*, i8** %8, align 8
  %155 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = trunc i64 %156 to i32
  %158 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = trunc i64 %159 to i32
  %161 = call i32 (i8*, i8*, ...) @fatal(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i8* %154, i32 %157, i32 %160)
  br label %162

162:                                              ; preds = %151, %141
  %163 = load i8*, i8** %8, align 8
  %164 = load i8*, i8** %7, align 8
  %165 = call i32 @rename(i8* %163, i8* %164)
  %166 = icmp eq i32 %165, -1
  br i1 %166, label %167, label %171

167:                                              ; preds = %162
  %168 = load i8*, i8** %8, align 8
  %169 = load i8*, i8** %7, align 8
  %170 = call i32 (i8*, i8*, ...) @fatal(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i8* %168, i8* %169)
  br label %171

171:                                              ; preds = %167, %162
  %172 = load i8*, i8** %7, align 8
  %173 = call i32 @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0), i8* %172)
  br label %174

174:                                              ; preds = %171, %53
  %175 = load i8*, i8** %3, align 8
  %176 = call i32 @free(i8* %175)
  ret void
}

declare dso_local i32 @open(i8*, i32, ...) #1

declare dso_local i32 @fatal(i8*, i8*, ...) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i64 @chown(i8*, i64, i64) #1

declare dso_local i32 @rename(i8*, i8*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
