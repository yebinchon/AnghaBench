; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_mclex.c_mc_token.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_mclex.c_mc_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }

@mc_token.was_init = internal global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"OutputBase\00", align 1
@MCOUTPUTBASE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"keyword\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"MessageIdTypedef\00", align 1
@MCMESSAGEIDTYPEDEF = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"SeverityNames\00", align 1
@MCSEVERITYNAMES = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"FacilityNames\00", align 1
@MCFACILITYNAMES = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"LanguageNames\00", align 1
@MCLANGUAGENAMES = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"MessageId\00", align 1
@MCMESSAGEID = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"Severity\00", align 1
@MCSEVERITY = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"Facility\00", align 1
@MCFACILITY = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [13 x i8] c"SymbolicName\00", align 1
@MCSYMBOLICNAME = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [9 x i8] c"Language\00", align 1
@MCLANGUAGE = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [8 x i8] c"Success\00", align 1
@MCTOKEN = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [9 x i8] c"severity\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"Informational\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"Warning\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"System\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"facility\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"Application\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"English\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"language\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"MSG00001\00", align 1
@keyword_top = common dso_local global %struct.TYPE_4__* null, align 8
@yylval = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64)* @mc_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc_token(i64* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* @mc_token.was_init, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %44, label %9

9:                                                ; preds = %2
  store i32 1, i32* @mc_token.was_init, align 4
  %10 = load i64, i64* @MCOUTPUTBASE, align 8
  %11 = call i32 @mc_add_keyword_ascii(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 0, i8* null)
  %12 = load i64, i64* @MCMESSAGEIDTYPEDEF, align 8
  %13 = call i32 @mc_add_keyword_ascii(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 0, i8* null)
  %14 = load i64, i64* @MCSEVERITYNAMES, align 8
  %15 = call i32 @mc_add_keyword_ascii(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i64 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 0, i8* null)
  %16 = load i64, i64* @MCFACILITYNAMES, align 8
  %17 = call i32 @mc_add_keyword_ascii(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i64 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 0, i8* null)
  %18 = load i64, i64* @MCLANGUAGENAMES, align 8
  %19 = call i32 @mc_add_keyword_ascii(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i64 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 0, i8* null)
  %20 = load i64, i64* @MCMESSAGEID, align 8
  %21 = call i32 @mc_add_keyword_ascii(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i64 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 0, i8* null)
  %22 = load i64, i64* @MCSEVERITY, align 8
  %23 = call i32 @mc_add_keyword_ascii(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i64 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 0, i8* null)
  %24 = load i64, i64* @MCFACILITY, align 8
  %25 = call i32 @mc_add_keyword_ascii(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i64 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 0, i8* null)
  %26 = load i64, i64* @MCSYMBOLICNAME, align 8
  %27 = call i32 @mc_add_keyword_ascii(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i64 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 0, i8* null)
  %28 = load i64, i64* @MCLANGUAGE, align 8
  %29 = call i32 @mc_add_keyword_ascii(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i64 %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 0, i8* null)
  %30 = load i64, i64* @MCTOKEN, align 8
  %31 = call i32 @mc_add_keyword_ascii(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i64 %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 0, i8* null)
  %32 = load i64, i64* @MCTOKEN, align 8
  %33 = call i32 @mc_add_keyword_ascii(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i64 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 1, i8* null)
  %34 = load i64, i64* @MCTOKEN, align 8
  %35 = call i32 @mc_add_keyword_ascii(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i64 %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 2, i8* null)
  %36 = load i64, i64* @MCTOKEN, align 8
  %37 = call i32 @mc_add_keyword_ascii(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i64 %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 3, i8* null)
  %38 = load i64, i64* @MCTOKEN, align 8
  %39 = call i32 @mc_add_keyword_ascii(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i64 %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32 255, i8* null)
  %40 = load i64, i64* @MCTOKEN, align 8
  %41 = call i32 @mc_add_keyword_ascii(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i64 %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32 4095, i8* null)
  %42 = load i64, i64* @MCTOKEN, align 8
  %43 = call i32 @mc_add_keyword_ascii(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i64 %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i32 1033, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0))
  br label %44

44:                                               ; preds = %9, %2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @keyword_top, align 8
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %6, align 8
  %46 = load i64, i64* %5, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i64*, i64** %4, align 8
  %50 = icmp ne i64* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i64*, i64** %4, align 8
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %48, %44
  store i32 -1, i32* %3, align 4
  br label %101

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %96, %56
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %59 = icmp ne %struct.TYPE_4__* %58, null
  br i1 %59, label %60, label %100

60:                                               ; preds = %57
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %5, align 8
  %65 = icmp ugt i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %100

67:                                               ; preds = %60
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %5, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %96

73:                                               ; preds = %67
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load i64*, i64** %4, align 8
  %78 = load i64, i64* %5, align 8
  %79 = mul i64 %78, 8
  %80 = call i32 @memcmp(i32 %76, i64* %77, i64 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %95, label %82

82:                                               ; preds = %73
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @MCTOKEN, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %89, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @yylval, i32 0, i32 0), align 8
  br label %90

90:                                               ; preds = %88, %82
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %3, align 4
  br label %101

95:                                               ; preds = %73
  br label %96

96:                                               ; preds = %95, %67
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  store %struct.TYPE_4__* %99, %struct.TYPE_4__** %6, align 8
  br label %57

100:                                              ; preds = %66, %57
  store i32 -1, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %90, %55
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @mc_add_keyword_ascii(i8*, i64, i8*, i32, i8*) #1

declare dso_local i32 @memcmp(i32, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
