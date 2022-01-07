; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ps/extr_ps.c_addelem_uid.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ps/extr_ps.c_addelem_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.listinfo = type { i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.passwd = type { i32 }

@MAXLOGNAME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Invalid (zero-length) %s name\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%s name too long: %s\00", align 1
@optfatal = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@UID_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"No %s named '%s'\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"No %s name or ID matches '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.listinfo*, i8*)* @addelem_uid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addelem_uid(%struct.listinfo* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.listinfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.passwd*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.listinfo* %0, %struct.listinfo** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @strlen(i8* %14)
  %16 = load i64, i64* @MAXLOGNAME, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %13, %2
  %19 = load i8*, i8** %5, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.listinfo*, %struct.listinfo** %4, align 8
  %25 = getelementptr inbounds %struct.listinfo, %struct.listinfo* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i8*, i32, ...) @xo_warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %34

28:                                               ; preds = %18
  %29 = load %struct.listinfo*, %struct.listinfo** %4, align 8
  %30 = getelementptr inbounds %struct.listinfo, %struct.listinfo* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 (i8*, i32, ...) @xo_warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %31, i8* %32)
  br label %34

34:                                               ; preds = %28, %23
  store i32 1, i32* @optfatal, align 4
  store i32 0, i32* %3, align 4
  br label %102

35:                                               ; preds = %13
  %36 = load i8*, i8** %5, align 8
  %37 = call %struct.passwd* @getpwnam(i8* %36)
  store %struct.passwd* %37, %struct.passwd** %6, align 8
  %38 = load %struct.passwd*, %struct.passwd** %6, align 8
  %39 = icmp eq %struct.passwd* %38, null
  br i1 %39, label %40, label %74

40:                                               ; preds = %35
  store i64 0, i64* @errno, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i64 @strtoul(i8* %41, i8** %7, i32 10)
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* @errno, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %40
  %46 = load i8*, i8** %7, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* @UID_MAX, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50, %45, %40
  %55 = load %struct.listinfo*, %struct.listinfo** %4, align 8
  %56 = getelementptr inbounds %struct.listinfo, %struct.listinfo* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 (i8*, i32, ...) @xo_warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %57, i8* %58)
  br label %73

60:                                               ; preds = %50
  %61 = load i64, i64* %8, align 8
  %62 = trunc i64 %61 to i32
  %63 = call %struct.passwd* @getpwuid(i32 %62)
  store %struct.passwd* %63, %struct.passwd** %6, align 8
  %64 = load %struct.passwd*, %struct.passwd** %6, align 8
  %65 = icmp eq %struct.passwd* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load %struct.listinfo*, %struct.listinfo** %4, align 8
  %68 = getelementptr inbounds %struct.listinfo, %struct.listinfo* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = call i32 (i8*, i32, ...) @xo_warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %69, i8* %70)
  br label %72

72:                                               ; preds = %66, %60
  br label %73

73:                                               ; preds = %72, %54
  br label %74

74:                                               ; preds = %73, %35
  %75 = load %struct.passwd*, %struct.passwd** %6, align 8
  %76 = icmp eq %struct.passwd* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i32 1, i32* @optfatal, align 4
  store i32 0, i32* %3, align 4
  br label %102

78:                                               ; preds = %74
  %79 = load %struct.listinfo*, %struct.listinfo** %4, align 8
  %80 = getelementptr inbounds %struct.listinfo, %struct.listinfo* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.listinfo*, %struct.listinfo** %4, align 8
  %83 = getelementptr inbounds %struct.listinfo, %struct.listinfo* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp sge i64 %81, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %78
  %87 = load %struct.listinfo*, %struct.listinfo** %4, align 8
  %88 = call i32 @expand_list(%struct.listinfo* %87)
  br label %89

89:                                               ; preds = %86, %78
  %90 = load %struct.passwd*, %struct.passwd** %6, align 8
  %91 = getelementptr inbounds %struct.passwd, %struct.passwd* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.listinfo*, %struct.listinfo** %4, align 8
  %94 = getelementptr inbounds %struct.listinfo, %struct.listinfo* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.listinfo*, %struct.listinfo** %4, align 8
  %98 = getelementptr inbounds %struct.listinfo, %struct.listinfo* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %98, align 8
  %101 = getelementptr inbounds i32, i32* %96, i64 %99
  store i32 %92, i32* %101, align 4
  store i32 1, i32* %3, align 4
  br label %102

102:                                              ; preds = %89, %77, %34
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @xo_warnx(i8*, i32, ...) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i32 @expand_list(%struct.listinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
