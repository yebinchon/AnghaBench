; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_makeucnid.c_read_derived.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_makeucnid.c_read_derived.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"opening DerivedNormalizationProps.txt\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"; NFC_QC; N\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"; NFKC_QC; N\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"; NFC_QC; M\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"parsing DerivedNormalizationProps.txt, reading start\00", align 1
@not_NFC = common dso_local global i32 0, align 4
@not_NFKC = common dso_local global i32 0, align 4
@maybe_not_NFC = common dso_local global i32 0, align 4
@flags = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [38 x i8] c"reading DerivedNormalizationProps.txt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @read_derived to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_derived(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = call i32* @fopen(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = call i32 @fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %1
  br label %18

18:                                               ; preds = %110, %57, %45, %17
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @fgets(i8* %19, i32 256, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %111

24:                                               ; preds = %18
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %26 = call i32* @strstr(i8* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp ne i32* %26, null
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %30 = call i32* @strstr(i8* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %31 = icmp ne i32* %30, null
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %9, align 4
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %34 = call i32* @strstr(i8* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %35 = icmp ne i32* %34, null
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %24
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  br label %18

46:                                               ; preds = %42, %39, %24
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %48 = call i64 @strtoul(i8* %47, i8** %7, i32 16)
  store i64 %48, i64* %5, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %51 = icmp eq i8* %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = call i32 @fail(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %46
  %55 = load i64, i64* %5, align 8
  %56 = icmp ugt i64 %55, 65535
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %18

58:                                               ; preds = %54
  %59 = load i8*, i8** %7, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 46
  br i1 %62, label %63, label %73

63:                                               ; preds = %58
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 46
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i8*, i8** %7, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 2
  %72 = call i64 @strtoul(i8* %71, i8** %7, i32 16)
  store i64 %72, i64* %6, align 8
  br label %75

73:                                               ; preds = %63, %58
  %74 = load i64, i64* %5, align 8
  store i64 %74, i64* %6, align 8
  br label %75

75:                                               ; preds = %73, %69
  br label %76

76:                                               ; preds = %101, %75
  %77 = load i64, i64* %5, align 8
  %78 = load i64, i64* %6, align 8
  %79 = icmp ule i64 %77, %78
  br i1 %79, label %80, label %110

80:                                               ; preds = %76
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32, i32* @not_NFC, align 4
  br label %86

85:                                               ; preds = %80
  br label %86

86:                                               ; preds = %85, %83
  %87 = phi i32 [ %84, %83 ], [ 0, %85 ]
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i32, i32* @not_NFKC, align 4
  br label %93

92:                                               ; preds = %86
  br label %93

93:                                               ; preds = %92, %90
  %94 = phi i32 [ %91, %90 ], [ 0, %92 ]
  %95 = or i32 %87, %94
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i32, i32* @maybe_not_NFC, align 4
  br label %101

100:                                              ; preds = %93
  br label %101

101:                                              ; preds = %100, %98
  %102 = phi i32 [ %99, %98 ], [ 0, %100 ]
  %103 = or i32 %95, %102
  %104 = load i32*, i32** @flags, align 8
  %105 = load i64, i64* %5, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %5, align 8
  %107 = getelementptr inbounds i32, i32* %104, i64 %105
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %103
  store i32 %109, i32* %107, align 4
  br label %76

110:                                              ; preds = %76
  br label %18

111:                                              ; preds = %23
  %112 = load i32*, i32** %3, align 8
  %113 = call i64 @ferror(i32* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = call i32 @fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %111
  %118 = load i32*, i32** %3, align 8
  %119 = call i32 @fclose(i32* %118)
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local i32 @fgets(i8*, i32, i32*) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
