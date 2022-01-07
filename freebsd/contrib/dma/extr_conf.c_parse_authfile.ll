; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dma/extr_conf.c_parse_authfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dma/extr_conf.c_parse_authfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.authuser = type { i8*, i32*, i32* }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@EX_NOINPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"can not open auth file `%s'\00", align 1
@EX_OSERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"calloc()\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@DP = common dso_local global i8* null, align 8
@EX_CONFIG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"syntax error in authfile %s:%d\00", align 1
@authusers = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_authfile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [2048 x i8], align 16
  %4 = alloca %struct.authuser*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %7, align 4
  %8 = load i8*, i8** %2, align 8
  %9 = call i32* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @EX_NOINPUT, align 4
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 (i32, i8*, ...) @errlog(i32 %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  br label %16

16:                                               ; preds = %12, %1
  br label %17

17:                                               ; preds = %85, %43, %37, %16
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @feof(i32* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %89

22:                                               ; preds = %17
  %23 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0
  %24 = load i32*, i32** %5, align 8
  %25 = call i32* @fgets(i8* %23, i32 2048, i32* %24)
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %89

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  %31 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0
  %32 = call i32 @chomp(i8* %31)
  %33 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0
  %34 = load i8, i8* %33, align 16
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 35
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %17

38:                                               ; preds = %28
  %39 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0
  %40 = load i8, i8* %39, align 16
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %17

44:                                               ; preds = %38
  %45 = call %struct.authuser* @calloc(i32 1, i32 24)
  store %struct.authuser* %45, %struct.authuser** %4, align 8
  %46 = load %struct.authuser*, %struct.authuser** %4, align 8
  %47 = icmp eq %struct.authuser* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @EX_OSERR, align 4
  %50 = call i32 (i32, i8*, ...) @errlog(i32 %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %44
  %52 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0
  %53 = call i8* @strdup(i8* %52)
  store i8* %53, i8** %6, align 8
  %54 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %55 = bitcast i8* %54 to i32*
  %56 = load %struct.authuser*, %struct.authuser** %4, align 8
  %57 = getelementptr inbounds %struct.authuser, %struct.authuser* %56, i32 0, i32 2
  store i32* %55, i32** %57, align 8
  %58 = load i8*, i8** @DP, align 8
  %59 = call i8* @strsep(i8** %6, i8* %58)
  %60 = bitcast i8* %59 to i32*
  %61 = load %struct.authuser*, %struct.authuser** %4, align 8
  %62 = getelementptr inbounds %struct.authuser, %struct.authuser* %61, i32 0, i32 1
  store i32* %60, i32** %62, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load %struct.authuser*, %struct.authuser** %4, align 8
  %65 = getelementptr inbounds %struct.authuser, %struct.authuser* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load %struct.authuser*, %struct.authuser** %4, align 8
  %67 = getelementptr inbounds %struct.authuser, %struct.authuser* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %80, label %70

70:                                               ; preds = %51
  %71 = load %struct.authuser*, %struct.authuser** %4, align 8
  %72 = getelementptr inbounds %struct.authuser, %struct.authuser* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load %struct.authuser*, %struct.authuser** %4, align 8
  %77 = getelementptr inbounds %struct.authuser, %struct.authuser* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %75, %70, %51
  %81 = load i32, i32* @EX_CONFIG, align 4
  %82 = load i8*, i8** %2, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @errlogx(i32 %81, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %82, i32 %83)
  br label %85

85:                                               ; preds = %80, %75
  %86 = load %struct.authuser*, %struct.authuser** %4, align 8
  %87 = load i32, i32* @next, align 4
  %88 = call i32 @SLIST_INSERT_HEAD(i32* @authusers, %struct.authuser* %86, i32 %87)
  br label %17

89:                                               ; preds = %27, %17
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 @fclose(i32* %90)
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @errlog(i32, i8*, ...) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @chomp(i8*) #1

declare dso_local %struct.authuser* @calloc(i32, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @errlogx(i32, i8*, i8*, i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.authuser*, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
