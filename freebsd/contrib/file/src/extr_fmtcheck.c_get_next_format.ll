; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/file/src/extr_fmtcheck.c_get_next_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/file/src/extr_fmtcheck.c_get_next_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FMTCHECK_WIDTH = common dso_local global i64 0, align 8
@FMTCHECK_PRECISION = common dso_local global i64 0, align 8
@FMTCHECK_DONE = common dso_local global i64 0, align 8
@FMTCHECK_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"#0- +\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8**, i64)* @get_next_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_next_format(i8** %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @FMTCHECK_WIDTH, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i8**, i8*** %4, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %12, align 8
  %15 = load i8**, i8*** %4, align 8
  %16 = call i64 @get_next_format_from_width(i8** %15)
  store i64 %16, i64* %3, align 8
  br label %116

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @FMTCHECK_PRECISION, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i8**, i8*** %4, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %22, align 8
  %25 = load i8**, i8*** %4, align 8
  %26 = call i64 @get_next_format_from_precision(i8** %25)
  store i64 %26, i64* %3, align 8
  br label %116

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27
  %29 = load i8**, i8*** %4, align 8
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %7, align 8
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %65, %28
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br i1 %34, label %35, label %66

35:                                               ; preds = %31
  %36 = load i8*, i8** %7, align 8
  %37 = call i8* @strchr(i8* %36, i8 signext 37)
  store i8* %37, i8** %7, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i8**, i8*** %4, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i64, i64* @FMTCHECK_DONE, align 8
  %44 = call i32 @RETURN(i8** %41, i8* %42, i64 %43)
  br label %45

45:                                               ; preds = %40, %35
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %7, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i8, i8* %48, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %45
  %52 = load i8**, i8*** %4, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load i64, i64* @FMTCHECK_UNKNOWN, align 8
  %55 = call i32 @RETURN(i8** %52, i8* %53, i64 %54)
  br label %56

56:                                               ; preds = %51, %45
  %57 = load i8*, i8** %7, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 37
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 1, i32* %6, align 4
  br label %65

62:                                               ; preds = %56
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %7, align 8
  br label %65

65:                                               ; preds = %62, %61
  br label %31

66:                                               ; preds = %31
  br label %67

67:                                               ; preds = %79, %66
  %68 = load i8*, i8** %7, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i8*, i8** %7, align 8
  %74 = load i8, i8* %73, align 1
  %75 = call i8* @strchr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8 signext %74)
  %76 = icmp ne i8* %75, null
  br label %77

77:                                               ; preds = %72, %67
  %78 = phi i1 [ false, %67 ], [ %76, %72 ]
  br i1 %78, label %79, label %82

79:                                               ; preds = %77
  %80 = load i8*, i8** %7, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %7, align 8
  br label %67

82:                                               ; preds = %77
  %83 = load i8*, i8** %7, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 42
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load i8**, i8*** %4, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = load i64, i64* @FMTCHECK_WIDTH, align 8
  %91 = call i32 @RETURN(i8** %88, i8* %89, i64 %90)
  br label %92

92:                                               ; preds = %87, %82
  br label %93

93:                                               ; preds = %98, %92
  %94 = load i8*, i8** %7, align 8
  %95 = load i8, i8* %94, align 1
  %96 = call i64 @isdigit(i8 zeroext %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i8*, i8** %7, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %7, align 8
  br label %93

101:                                              ; preds = %93
  %102 = load i8*, i8** %7, align 8
  %103 = load i8, i8* %102, align 1
  %104 = icmp ne i8 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %101
  %106 = load i8**, i8*** %4, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = load i64, i64* @FMTCHECK_UNKNOWN, align 8
  %109 = call i32 @RETURN(i8** %106, i8* %107, i64 %108)
  br label %110

110:                                              ; preds = %105, %101
  %111 = load i8**, i8*** %4, align 8
  %112 = load i8*, i8** %7, align 8
  %113 = load i8**, i8*** %4, align 8
  %114 = call i64 @get_next_format_from_width(i8** %113)
  %115 = call i32 @RETURN(i8** %111, i8* %112, i64 %114)
  br label %116

116:                                              ; preds = %110, %21, %11
  %117 = load i64, i64* %3, align 8
  ret i64 %117
}

declare dso_local i64 @get_next_format_from_width(i8**) #1

declare dso_local i64 @get_next_format_from_precision(i8**) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @RETURN(i8**, i8*, i64) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
