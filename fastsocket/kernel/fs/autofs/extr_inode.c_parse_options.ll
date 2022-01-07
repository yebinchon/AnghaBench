; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_inode.c_parse_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_inode.c_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@AUTOFS_PROTO_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@autofs_tokens = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i32*, i32*, i32*, i32*)* @parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_options(i8* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %22 = load i32, i32* @MAX_OPT_ARGS, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %17, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %18, align 8
  %26 = call i32 (...) @current_uid()
  %27 = load i32*, i32** %11, align 8
  store i32 %26, i32* %27, align 4
  %28 = call i32 (...) @current_gid()
  %29 = load i32*, i32** %12, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @current, align 4
  %31 = call i32 @task_pgrp_nr(i32 %30)
  %32 = load i32*, i32** %13, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @AUTOFS_PROTO_VERSION, align 4
  %34 = load i32*, i32** %15, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32*, i32** %14, align 8
  store i32 %33, i32* %35, align 4
  %36 = load i32*, i32** %10, align 8
  store i32 -1, i32* %36, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %7
  store i32 1, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %109

40:                                               ; preds = %7
  br label %41

41:                                               ; preds = %103, %48, %40
  %42 = call i8* @strsep(i8** %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %42, i8** %16, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %104

44:                                               ; preds = %41
  %45 = load i8*, i8** %16, align 8
  %46 = load i8, i8* %45, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  br label %41

49:                                               ; preds = %44
  %50 = load i8*, i8** %16, align 8
  %51 = load i32, i32* @autofs_tokens, align 4
  %52 = call i32 @match_token(i8* %50, i32 %51, i32* %25)
  store i32 %52, i32* %21, align 4
  %53 = load i32, i32* %21, align 4
  switch i32 %53, label %102 [
    i32 133, label %54
    i32 128, label %62
    i32 132, label %70
    i32 129, label %78
    i32 130, label %86
    i32 131, label %94
  ]

54:                                               ; preds = %49
  %55 = getelementptr inbounds i32, i32* %25, i64 0
  %56 = call i32 @match_int(i32* %55, i32* %19)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 1, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %109

59:                                               ; preds = %54
  %60 = load i32, i32* %19, align 4
  %61 = load i32*, i32** %10, align 8
  store i32 %60, i32* %61, align 4
  br label %103

62:                                               ; preds = %49
  %63 = getelementptr inbounds i32, i32* %25, i64 0
  %64 = call i32 @match_int(i32* %63, i32* %19)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 1, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %109

67:                                               ; preds = %62
  %68 = load i32, i32* %19, align 4
  %69 = load i32*, i32** %11, align 8
  store i32 %68, i32* %69, align 4
  br label %103

70:                                               ; preds = %49
  %71 = getelementptr inbounds i32, i32* %25, i64 0
  %72 = call i32 @match_int(i32* %71, i32* %19)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 1, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %109

75:                                               ; preds = %70
  %76 = load i32, i32* %19, align 4
  %77 = load i32*, i32** %12, align 8
  store i32 %76, i32* %77, align 4
  br label %103

78:                                               ; preds = %49
  %79 = getelementptr inbounds i32, i32* %25, i64 0
  %80 = call i32 @match_int(i32* %79, i32* %19)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 1, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %109

83:                                               ; preds = %78
  %84 = load i32, i32* %19, align 4
  %85 = load i32*, i32** %13, align 8
  store i32 %84, i32* %85, align 4
  br label %103

86:                                               ; preds = %49
  %87 = getelementptr inbounds i32, i32* %25, i64 0
  %88 = call i32 @match_int(i32* %87, i32* %19)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 1, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %109

91:                                               ; preds = %86
  %92 = load i32, i32* %19, align 4
  %93 = load i32*, i32** %14, align 8
  store i32 %92, i32* %93, align 4
  br label %103

94:                                               ; preds = %49
  %95 = getelementptr inbounds i32, i32* %25, i64 0
  %96 = call i32 @match_int(i32* %95, i32* %19)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store i32 1, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %109

99:                                               ; preds = %94
  %100 = load i32, i32* %19, align 4
  %101 = load i32*, i32** %15, align 8
  store i32 %100, i32* %101, align 4
  br label %103

102:                                              ; preds = %49
  store i32 1, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %109

103:                                              ; preds = %99, %91, %83, %75, %67, %59
  br label %41

104:                                              ; preds = %41
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %106, 0
  %108 = zext i1 %107 to i32
  store i32 %108, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %109

109:                                              ; preds = %104, %102, %98, %90, %82, %74, %66, %58, %39
  %110 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %110)
  %111 = load i32, i32* %8, align 4
  ret i32 %111
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @current_uid(...) #2

declare dso_local i32 @current_gid(...) #2

declare dso_local i32 @task_pgrp_nr(i32) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, i32*) #2

declare dso_local i32 @match_int(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
