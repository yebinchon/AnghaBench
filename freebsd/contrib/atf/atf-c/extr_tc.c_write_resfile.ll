; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_tc.c_write_resfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_tc.c_write_resfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i8*, i32 }

@write_resfile.NL = internal global [2 x i8] c"\0A\00", align 1
@write_resfile.CS = internal global [3 x i8] c": \00", align 1
@.str = private unnamed_addr constant [5 x i8] c"(%d)\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"Failed to write results file; result %s, reason %s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32*)* @write_resfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_resfile(i32 %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca [64 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca [5 x %struct.iovec], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32*, i32** %9, align 8
  %19 = icmp ne i32* %18, null
  br label %20

20:                                               ; preds = %17, %4
  %21 = phi i1 [ true, %4 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @INV(i32 %22)
  %24 = load i8*, i8** %7, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = load i32, i32* %14, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [5 x %struct.iovec], [5 x %struct.iovec]* %12, i64 0, i64 %28
  %30 = getelementptr inbounds %struct.iovec, %struct.iovec* %29, i32 0, i32 0
  store i8* %26, i8** %30, align 16
  %31 = load i8*, i8** %7, align 8
  %32 = call i8* @strlen(i8* %31)
  %33 = ptrtoint i8* %32 to i32
  %34 = load i32, i32* %14, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %14, align 4
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds [5 x %struct.iovec], [5 x %struct.iovec]* %12, i64 0, i64 %36
  %38 = getelementptr inbounds %struct.iovec, %struct.iovec* %37, i32 0, i32 1
  store i32 %33, i32* %38, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %85

41:                                               ; preds = %20
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %44, label %58

44:                                               ; preds = %41
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [5 x %struct.iovec], [5 x %struct.iovec]* %12, i64 0, i64 %47
  %49 = getelementptr inbounds %struct.iovec, %struct.iovec* %48, i32 0, i32 0
  store i8* %45, i8** %49, align 16
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @snprintf(i8* %50, i32 64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %14, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %14, align 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds [5 x %struct.iovec], [5 x %struct.iovec]* %12, i64 0, i64 %55
  %57 = getelementptr inbounds %struct.iovec, %struct.iovec* %56, i32 0, i32 1
  store i32 %52, i32* %57, align 8
  br label %58

58:                                               ; preds = %44, %41
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [5 x %struct.iovec], [5 x %struct.iovec]* %12, i64 0, i64 %60
  %62 = getelementptr inbounds %struct.iovec, %struct.iovec* %61, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @write_resfile.CS, i64 0, i64 0), i8** %62, align 16
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %14, align 4
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds [5 x %struct.iovec], [5 x %struct.iovec]* %12, i64 0, i64 %65
  %67 = getelementptr inbounds %struct.iovec, %struct.iovec* %66, i32 0, i32 1
  store i32 2, i32* %67, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = call i8* @atf_dynstr_cstring(i32* %68)
  store i8* %69, i8** %11, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = ptrtoint i8* %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [5 x %struct.iovec], [5 x %struct.iovec]* %12, i64 0, i64 %74
  %76 = getelementptr inbounds %struct.iovec, %struct.iovec* %75, i32 0, i32 0
  store i8* %72, i8** %76, align 16
  %77 = load i8*, i8** %11, align 8
  %78 = call i8* @strlen(i8* %77)
  %79 = ptrtoint i8* %78 to i32
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %14, align 4
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds [5 x %struct.iovec], [5 x %struct.iovec]* %12, i64 0, i64 %82
  %84 = getelementptr inbounds %struct.iovec, %struct.iovec* %83, i32 0, i32 1
  store i32 %79, i32* %84, align 8
  br label %85

85:                                               ; preds = %58, %20
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [5 x %struct.iovec], [5 x %struct.iovec]* %12, i64 0, i64 %87
  %89 = getelementptr inbounds %struct.iovec, %struct.iovec* %88, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @write_resfile.NL, i64 0, i64 0), i8** %89, align 16
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %14, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds [5 x %struct.iovec], [5 x %struct.iovec]* %12, i64 0, i64 %92
  %94 = getelementptr inbounds %struct.iovec, %struct.iovec* %93, i32 0, i32 1
  store i32 1, i32* %94, align 8
  br label %95

95:                                               ; preds = %107, %85
  %96 = load i32, i32* %6, align 4
  %97 = getelementptr inbounds [5 x %struct.iovec], [5 x %struct.iovec]* %12, i64 0, i64 0
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @writev(i32 %96, %struct.iovec* %97, i32 %98)
  store i32 %99, i32* %13, align 4
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load i64, i64* @errno, align 8
  %103 = load i64, i64* @EINTR, align 8
  %104 = icmp eq i64 %102, %103
  br label %105

105:                                              ; preds = %101, %95
  %106 = phi i1 [ false, %95 ], [ %104, %101 ]
  br i1 %106, label %107, label %108

107:                                              ; preds = %105
  br label %95

108:                                              ; preds = %105
  %109 = load i32, i32* %13, align 4
  %110 = icmp ne i32 %109, -1
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = call i32 (...) @atf_no_error()
  store i32 %112, i32* %5, align 4
  br label %125

113:                                              ; preds = %108
  %114 = load i64, i64* @errno, align 8
  %115 = load i8*, i8** %7, align 8
  %116 = load i32*, i32** %9, align 8
  %117 = icmp eq i32* %116, null
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %122

119:                                              ; preds = %113
  %120 = load i32*, i32** %9, align 8
  %121 = call i8* @atf_dynstr_cstring(i32* %120)
  br label %122

122:                                              ; preds = %119, %118
  %123 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %118 ], [ %121, %119 ]
  %124 = call i32 @atf_libc_error(i64 %114, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8* %115, i8* %123)
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %122, %111
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i32 @INV(i32) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @atf_dynstr_cstring(i32*) #1

declare dso_local i32 @writev(i32, %struct.iovec*, i32) #1

declare dso_local i32 @atf_no_error(...) #1

declare dso_local i32 @atf_libc_error(i64, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
