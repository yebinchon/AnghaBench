; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ps/extr_ps.c_addelem_gid.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ps/extr_ps.c_addelem_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.listinfo = type { i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.group = type { i32 }

@MAXLOGNAME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Invalid (zero-length) %s name\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%s name too long: %s\00", align 1
@optfatal = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"named\00", align 1
@errno = common dso_local global i64 0, align 8
@GID_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"name or ID matches\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"No %s %s '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.listinfo*, i8*)* @addelem_gid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addelem_gid(%struct.listinfo* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.listinfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.group*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.listinfo* %0, %struct.listinfo** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @strlen(i8* %15)
  %17 = load i64, i64* @MAXLOGNAME, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %14, %2
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.listinfo*, %struct.listinfo** %4, align 8
  %26 = getelementptr inbounds %struct.listinfo, %struct.listinfo* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i8*, i32, ...) @xo_warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %35

29:                                               ; preds = %19
  %30 = load %struct.listinfo*, %struct.listinfo** %4, align 8
  %31 = getelementptr inbounds %struct.listinfo, %struct.listinfo* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 (i8*, i32, ...) @xo_warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %32, i8* %33)
  br label %35

35:                                               ; preds = %29, %24
  store i32 1, i32* @optfatal, align 4
  store i32 0, i32* %3, align 4
  br label %94

36:                                               ; preds = %14
  store %struct.group* null, %struct.group** %6, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  store i64 0, i64* @errno, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = call i64 @strtoul(i8* %37, i8** %8, i32 10)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* @errno, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = load i8*, i8** %8, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* @GID_MAX, align 8
  %49 = icmp sle i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  %51 = load i64, i64* %9, align 8
  %52 = trunc i64 %51 to i32
  %53 = call %struct.group* @getgrgid(i32 %52)
  store %struct.group* %53, %struct.group** %6, align 8
  br label %54

54:                                               ; preds = %50, %46, %41, %36
  %55 = load %struct.group*, %struct.group** %6, align 8
  %56 = icmp eq %struct.group* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i8*, i8** %5, align 8
  %59 = call %struct.group* @getgrnam(i8* %58)
  store %struct.group* %59, %struct.group** %6, align 8
  br label %60

60:                                               ; preds = %57, %54
  %61 = load %struct.group*, %struct.group** %6, align 8
  %62 = icmp eq %struct.group* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load %struct.listinfo*, %struct.listinfo** %4, align 8
  %65 = getelementptr inbounds %struct.listinfo, %struct.listinfo* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 (i8*, i32, ...) @xo_warnx(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %66, i8* %67, i8* %68)
  store i32 1, i32* @optfatal, align 4
  store i32 0, i32* %3, align 4
  br label %94

70:                                               ; preds = %60
  %71 = load %struct.listinfo*, %struct.listinfo** %4, align 8
  %72 = getelementptr inbounds %struct.listinfo, %struct.listinfo* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.listinfo*, %struct.listinfo** %4, align 8
  %75 = getelementptr inbounds %struct.listinfo, %struct.listinfo* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp sge i64 %73, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load %struct.listinfo*, %struct.listinfo** %4, align 8
  %80 = call i32 @expand_list(%struct.listinfo* %79)
  br label %81

81:                                               ; preds = %78, %70
  %82 = load %struct.group*, %struct.group** %6, align 8
  %83 = getelementptr inbounds %struct.group, %struct.group* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.listinfo*, %struct.listinfo** %4, align 8
  %86 = getelementptr inbounds %struct.listinfo, %struct.listinfo* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.listinfo*, %struct.listinfo** %4, align 8
  %90 = getelementptr inbounds %struct.listinfo, %struct.listinfo* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %90, align 8
  %93 = getelementptr inbounds i32, i32* %88, i64 %91
  store i32 %84, i32* %93, align 4
  store i32 1, i32* %3, align 4
  br label %94

94:                                               ; preds = %81, %63, %35
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @xo_warnx(i8*, i32, ...) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local %struct.group* @getgrgid(i32) #1

declare dso_local %struct.group* @getgrnam(i8*) #1

declare dso_local i32 @expand_list(%struct.listinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
