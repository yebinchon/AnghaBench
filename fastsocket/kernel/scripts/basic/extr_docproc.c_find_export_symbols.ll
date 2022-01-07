; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/basic/extr_docproc.c_find_export_symbols.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/basic/extr_docproc.c_find_export_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symfile = type { i32 }

@MAXLINESZ = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@srctree = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"docproc: \00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"EXPORT_SYMBOL_GPL\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"EXPORT_SYMBOL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @find_export_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_export_symbols(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.symfile*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %11 = load i32, i32* @MAXLINESZ, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = call i32* @filename_exist(i8* %15)
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %130

18:                                               ; preds = %1
  %19 = load i32, i32* @PATH_MAX, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %7, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %8, align 8
  %24 = trunc i64 %21 to i32
  %25 = call i32 @memset(i8* %23, i32 0, i32 %24)
  %26 = load i8*, i8** @srctree, align 8
  %27 = load i32, i32* @PATH_MAX, align 4
  %28 = call i32 @strncat(i8* %23, i8* %26, i32 %27)
  %29 = load i32, i32* @PATH_MAX, align 4
  %30 = call i32 @strlen(i8* %23)
  %31 = sub nsw i32 %29, %30
  %32 = call i32 @strncat(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i8*, i8** %2, align 8
  %34 = load i32, i32* @PATH_MAX, align 4
  %35 = call i32 @strlen(i8* %23)
  %36 = sub nsw i32 %34, %35
  %37 = call i32 @strncat(i8* %23, i8* %33, i32 %36)
  %38 = load i8*, i8** %2, align 8
  %39 = call %struct.symfile* @add_new_file(i8* %38)
  store %struct.symfile* %39, %struct.symfile** %4, align 8
  %40 = call i32* @fopen(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %40, i32** %3, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %18
  %44 = load i32, i32* @stderr, align 4
  %45 = call i32 @fprintf(i32 %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %46 = call i32 @perror(i8* %23)
  %47 = call i32 @exit(i32 1) #4
  unreachable

48:                                               ; preds = %18
  br label %49

49:                                               ; preds = %125, %90, %48
  %50 = load i32, i32* @MAXLINESZ, align 4
  %51 = load i32*, i32** %3, align 8
  %52 = call i64 @fgets(i8* %14, i32 %50, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %126

54:                                               ; preds = %49
  %55 = call i8* @strstr(i8* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i8* %55, i8** %9, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = call i8* @strstr(i8* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i8* %58, i8** %9, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %125

60:                                               ; preds = %57, %54
  br label %61

61:                                               ; preds = %73, %60
  %62 = load i8*, i8** %9, align 8
  %63 = load i8, i8* %62, align 1
  %64 = call i64 @isalnum(i8 signext %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load i8*, i8** %9, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 95
  br label %71

71:                                               ; preds = %66, %61
  %72 = phi i1 [ true, %61 ], [ %70, %66 ]
  br i1 %72, label %73, label %76

73:                                               ; preds = %71
  %74 = load i8*, i8** %9, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %9, align 8
  br label %61

76:                                               ; preds = %71
  br label %77

77:                                               ; preds = %82, %76
  %78 = load i8*, i8** %9, align 8
  %79 = load i8, i8* %78, align 1
  %80 = call i64 @isspace(i8 signext %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i8*, i8** %9, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %9, align 8
  br label %77

85:                                               ; preds = %77
  %86 = load i8*, i8** %9, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 40
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %49

91:                                               ; preds = %85
  %92 = load i8*, i8** %9, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %9, align 8
  br label %94

94:                                               ; preds = %91
  br label %95

95:                                               ; preds = %100, %94
  %96 = load i8*, i8** %9, align 8
  %97 = load i8, i8* %96, align 1
  %98 = call i64 @isspace(i8 signext %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i8*, i8** %9, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %9, align 8
  br label %95

103:                                              ; preds = %95
  %104 = load i8*, i8** %9, align 8
  store i8* %104, i8** %10, align 8
  br label %105

105:                                              ; preds = %117, %103
  %106 = load i8*, i8** %10, align 8
  %107 = load i8, i8* %106, align 1
  %108 = call i64 @isalnum(i8 signext %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %105
  %111 = load i8*, i8** %10, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 95
  br label %115

115:                                              ; preds = %110, %105
  %116 = phi i1 [ true, %105 ], [ %114, %110 ]
  br i1 %116, label %117, label %120

117:                                              ; preds = %115
  %118 = load i8*, i8** %10, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %10, align 8
  br label %105

120:                                              ; preds = %115
  %121 = load i8*, i8** %10, align 8
  store i8 0, i8* %121, align 1
  %122 = load %struct.symfile*, %struct.symfile** %4, align 8
  %123 = load i8*, i8** %9, align 8
  %124 = call i32 @add_new_symbol(%struct.symfile* %122, i8* %123)
  br label %125

125:                                              ; preds = %120, %57
  br label %49

126:                                              ; preds = %49
  %127 = load i32*, i32** %3, align 8
  %128 = call i32 @fclose(i32* %127)
  %129 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %129)
  br label %130

130:                                              ; preds = %126, %1
  %131 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %131)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @filename_exist(i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @strncat(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local %struct.symfile* @add_new_file(i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i32 @perror(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i64 @isalnum(i8 signext) #2

declare dso_local i64 @isspace(i8 signext) #2

declare dso_local i32 @add_new_symbol(%struct.symfile*, i8*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
