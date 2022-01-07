; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/browsers/extr_scripts.c_list_scripts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/browsers/extr_scripts.c_list_scripts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCRIPT_MAX_NO = common dso_local global i32 0, align 4
@SCRIPT_NAMELEN = common dso_local global i32 0, align 4
@SCRIPT_FULLPATH_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @list_scripts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_scripts(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %13 = load i32, i32* @SCRIPT_MAX_NO, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i8*, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %17 = load i32, i32* @SCRIPT_MAX_NO, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8*, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  store i32 -1, i32* %11, align 4
  %20 = load i32, i32* @SCRIPT_MAX_NO, align 4
  %21 = load i32, i32* @SCRIPT_NAMELEN, align 4
  %22 = load i32, i32* @SCRIPT_FULLPATH_LEN, align 4
  %23 = add nsw i32 %21, %22
  %24 = mul nsw i32 %20, %23
  %25 = call i8* @malloc(i32 %24)
  store i8* %25, i8** %4, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %85

30:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %57, %30
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @SCRIPT_MAX_NO, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %60

35:                                               ; preds = %31
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @SCRIPT_NAMELEN, align 4
  %39 = load i32, i32* @SCRIPT_FULLPATH_LEN, align 4
  %40 = add nsw i32 %38, %39
  %41 = mul nsw i32 %37, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %36, i64 %42
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %16, i64 %45
  store i8* %43, i8** %46, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %16, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* @SCRIPT_NAMELEN, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %19, i64 %55
  store i8* %53, i8** %56, align 8
  br label %57

57:                                               ; preds = %35
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %31

60:                                               ; preds = %31
  %61 = call i32 @find_scripts(i8** %16, i8** %19)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %60
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @ui__popup_menu(i32 %65, i8** %16)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %64
  %71 = load i32, i32* %10, align 4
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load i8*, i8** %3, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %19, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @strcpy(i8* %74, i8* %78)
  store i32 0, i32* %11, align 4
  br label %80

80:                                               ; preds = %73, %70, %64
  br label %81

81:                                               ; preds = %80, %60
  %82 = load i8*, i8** %4, align 8
  %83 = call i32 @free(i8* %82)
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %85

85:                                               ; preds = %81, %28
  %86 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @find_scripts(i8**, i8**) #2

declare dso_local i32 @ui__popup_menu(i32, i8**) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
