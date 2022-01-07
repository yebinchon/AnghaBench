; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_inode.c_parse_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_inode.c_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@AUTOFS_MIN_PROTO_VERSION = common dso_local global i32 0, align 4
@AUTOFS_MAX_PROTO_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@tokens = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*)* @parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_options(i8* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %24 = load i32, i32* @MAX_OPT_ARGS, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %19, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %20, align 8
  %28 = call i32 (...) @current_uid()
  %29 = load i32*, i32** %12, align 8
  store i32 %28, i32* %29, align 4
  %30 = call i32 (...) @current_gid()
  %31 = load i32*, i32** %13, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @current, align 4
  %33 = call i32 @task_pgrp_nr(i32 %32)
  %34 = load i32*, i32** %14, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @AUTOFS_MIN_PROTO_VERSION, align 4
  %36 = load i32*, i32** %16, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @AUTOFS_MAX_PROTO_VERSION, align 4
  %38 = load i32*, i32** %17, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32*, i32** %11, align 8
  store i32 -1, i32* %39, align 4
  %40 = load i8*, i8** %10, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %8
  store i32 1, i32* %9, align 4
  store i32 1, i32* %22, align 4
  br label %114

43:                                               ; preds = %8
  br label %44

44:                                               ; preds = %108, %51, %43
  %45 = call i8* @strsep(i8** %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %45, i8** %18, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %109

47:                                               ; preds = %44
  %48 = load i8*, i8** %18, align 8
  %49 = load i8, i8* %48, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  br label %44

52:                                               ; preds = %47
  %53 = load i8*, i8** %18, align 8
  %54 = load i32, i32* @tokens, align 4
  %55 = call i32 @match_token(i8* %53, i32 %54, i32* %27)
  store i32 %55, i32* %23, align 4
  %56 = load i32, i32* %23, align 4
  switch i32 %56, label %107 [
    i32 135, label %57
    i32 128, label %63
    i32 134, label %70
    i32 129, label %77
    i32 131, label %84
    i32 132, label %91
    i32 133, label %98
    i32 136, label %101
    i32 130, label %104
  ]

57:                                               ; preds = %52
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @match_int(i32* %27, i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 1, i32* %9, align 4
  store i32 1, i32* %22, align 4
  br label %114

62:                                               ; preds = %57
  br label %108

63:                                               ; preds = %52
  %64 = call i32 @match_int(i32* %27, i32* %21)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 1, i32* %9, align 4
  store i32 1, i32* %22, align 4
  br label %114

67:                                               ; preds = %63
  %68 = load i32, i32* %21, align 4
  %69 = load i32*, i32** %12, align 8
  store i32 %68, i32* %69, align 4
  br label %108

70:                                               ; preds = %52
  %71 = call i32 @match_int(i32* %27, i32* %21)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 1, i32* %9, align 4
  store i32 1, i32* %22, align 4
  br label %114

74:                                               ; preds = %70
  %75 = load i32, i32* %21, align 4
  %76 = load i32*, i32** %13, align 8
  store i32 %75, i32* %76, align 4
  br label %108

77:                                               ; preds = %52
  %78 = call i32 @match_int(i32* %27, i32* %21)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 1, i32* %9, align 4
  store i32 1, i32* %22, align 4
  br label %114

81:                                               ; preds = %77
  %82 = load i32, i32* %21, align 4
  %83 = load i32*, i32** %14, align 8
  store i32 %82, i32* %83, align 4
  br label %108

84:                                               ; preds = %52
  %85 = call i32 @match_int(i32* %27, i32* %21)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i32 1, i32* %9, align 4
  store i32 1, i32* %22, align 4
  br label %114

88:                                               ; preds = %84
  %89 = load i32, i32* %21, align 4
  %90 = load i32*, i32** %16, align 8
  store i32 %89, i32* %90, align 4
  br label %108

91:                                               ; preds = %52
  %92 = call i32 @match_int(i32* %27, i32* %21)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i32 1, i32* %9, align 4
  store i32 1, i32* %22, align 4
  br label %114

95:                                               ; preds = %91
  %96 = load i32, i32* %21, align 4
  %97 = load i32*, i32** %17, align 8
  store i32 %96, i32* %97, align 4
  br label %108

98:                                               ; preds = %52
  %99 = load i32*, i32** %15, align 8
  %100 = call i32 @set_autofs_type_indirect(i32* %99)
  br label %108

101:                                              ; preds = %52
  %102 = load i32*, i32** %15, align 8
  %103 = call i32 @set_autofs_type_direct(i32* %102)
  br label %108

104:                                              ; preds = %52
  %105 = load i32*, i32** %15, align 8
  %106 = call i32 @set_autofs_type_offset(i32* %105)
  br label %108

107:                                              ; preds = %52
  store i32 1, i32* %9, align 4
  store i32 1, i32* %22, align 4
  br label %114

108:                                              ; preds = %104, %101, %98, %95, %88, %81, %74, %67, %62
  br label %44

109:                                              ; preds = %44
  %110 = load i32*, i32** %11, align 8
  %111 = load i32, i32* %110, align 4
  %112 = icmp slt i32 %111, 0
  %113 = zext i1 %112 to i32
  store i32 %113, i32* %9, align 4
  store i32 1, i32* %22, align 4
  br label %114

114:                                              ; preds = %109, %107, %94, %87, %80, %73, %66, %61, %42
  %115 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %115)
  %116 = load i32, i32* %9, align 4
  ret i32 %116
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @current_uid(...) #2

declare dso_local i32 @current_gid(...) #2

declare dso_local i32 @task_pgrp_nr(i32) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, i32*) #2

declare dso_local i32 @match_int(i32*, i32*) #2

declare dso_local i32 @set_autofs_type_indirect(i32*) #2

declare dso_local i32 @set_autofs_type_direct(i32*) #2

declare dso_local i32 @set_autofs_type_offset(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
