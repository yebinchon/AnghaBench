; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zinject/extr_translate.c_parse_pathname.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zinject/extr_translate.c_parse_pathname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat64 = type { i32 }
%struct.statfs = type { i8*, i8*, i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"invalid object '%s': must be full path\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"invalid object; pathname too long\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"cannot open '%s': %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"cannot find mountpoint for '%s': %s\0A\00", align 1
@MNTTYPE_ZFS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"invalid path '%s': not a ZFS filesystem\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"invalid path '%s': mountpoint doesn't match path\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, %struct.stat64*)* @parse_pathname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_pathname(i8* %0, i8* %1, i8* %2, %struct.stat64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stat64*, align 8
  %10 = alloca %struct.statfs, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.stat64* %3, %struct.stat64** %9, align 8
  %15 = load i32, i32* @MAXPATHLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %12, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %13, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @compress_slashes(i8* %19, i8* %18)
  %21 = getelementptr inbounds i8, i8* %18, i64 0
  %22 = load i8, i8* %21, align 16
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 47
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %18)
  %28 = call i32 (...) @usage()
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %95

29:                                               ; preds = %4
  %30 = call i32 @strlen(i8* %18)
  %31 = load i32, i32* @MAXPATHLEN, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @stderr, align 4
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %95

36:                                               ; preds = %29
  %37 = load %struct.stat64*, %struct.stat64** %9, align 8
  %38 = call i64 @stat64(i8* %18, %struct.stat64* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i32, i32* @stderr, align 4
  %42 = load i32, i32* @errno, align 4
  %43 = call i8* @strerror(i32 %42)
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %18, i8* %43)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %95

45:                                               ; preds = %36
  %46 = call i32 @statfs(i8* %18, %struct.statfs* %10)
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i32, i32* @stderr, align 4
  %50 = load i32, i32* @errno, align 4
  %51 = call i8* @strerror(i32 %50)
  %52 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %18, i8* %51)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %95

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.statfs, %struct.statfs* %10, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @MNTTYPE_ZFS, align 4
  %57 = call i64 @strcmp(i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* @stderr, align 4
  %61 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %18)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %95

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.statfs, %struct.statfs* %10, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds %struct.statfs, %struct.statfs* %10, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @strlen(i8* %66)
  %68 = call i64 @strncmp(i8* %18, i8* %64, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load i32, i32* @stderr, align 4
  %72 = call i32 (i32, i8*, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i8* %18)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %95

73:                                               ; preds = %62
  %74 = load i8*, i8** %7, align 8
  %75 = getelementptr inbounds %struct.statfs, %struct.statfs* %10, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @strcpy(i8* %74, i8* %76)
  %78 = getelementptr inbounds %struct.statfs, %struct.statfs* %10, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @strlen(i8* %79)
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %18, i64 %81
  store i8* %82, i8** %11, align 8
  %83 = load i8*, i8** %11, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 47
  br i1 %87, label %88, label %91

88:                                               ; preds = %73
  %89 = load i8*, i8** %11, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %11, align 8
  br label %91

91:                                               ; preds = %88, %73
  %92 = load i8*, i8** %8, align 8
  %93 = load i8*, i8** %11, align 8
  %94 = call i32 @strcpy(i8* %92, i8* %93)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %95

95:                                               ; preds = %91, %70, %59, %48, %40, %33, %25
  %96 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %96)
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @compress_slashes(i8*, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @usage(...) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @stat64(i8*, %struct.stat64*) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32 @statfs(i8*, %struct.statfs*) #2

declare dso_local i64 @strcmp(i32, i32) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
