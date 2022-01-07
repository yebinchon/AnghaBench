; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bearer.c_bearer_name_validate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bearer.c_bearer_name_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bearer_name = type { i32, i32 }

@TIPC_MAX_BEARER_NAME = common dso_local global i32 0, align 4
@TIPC_MAX_MEDIA_NAME = common dso_local global i32 0, align 4
@TIPC_MAX_IF_NAME = common dso_local global i32 0, align 4
@tipc_alphabet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.bearer_name*)* @bearer_name_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bearer_name_validate(i8* %0, %struct.bearer_name* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bearer_name*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.bearer_name* %1, %struct.bearer_name** %5, align 8
  %13 = load i32, i32* @TIPC_MAX_BEARER_NAME, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i32, i32* @TIPC_MAX_BEARER_NAME, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  store i8 0, i8* %20, align 1
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* @TIPC_MAX_BEARER_NAME, align 4
  %23 = call i32 @strncpy(i8* %16, i8* %21, i32 %22)
  %24 = load i32, i32* @TIPC_MAX_BEARER_NAME, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %16, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %92

32:                                               ; preds = %2
  store i8* %16, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i8* @strchr(i8* %33, i8 signext 58)
  store i8* %34, i8** %9, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %92

37:                                               ; preds = %32
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %9, align 8
  store i8 0, i8* %38, align 1
  %40 = load i8*, i8** %9, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %10, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @strlen(i8* %46)
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp sle i32 %49, 1
  br i1 %50, label %76, label %51

51:                                               ; preds = %37
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @TIPC_MAX_MEDIA_NAME, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %76, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %11, align 4
  %57 = icmp sle i32 %56, 1
  br i1 %57, label %76, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @TIPC_MAX_IF_NAME, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %76, label %62

62:                                               ; preds = %58
  %63 = load i8*, i8** %8, align 8
  %64 = load i32, i32* @tipc_alphabet, align 4
  %65 = call i32 @strspn(i8* %63, i32 %64)
  %66 = load i32, i32* %10, align 4
  %67 = sub nsw i32 %66, 1
  %68 = icmp ne i32 %65, %67
  br i1 %68, label %76, label %69

69:                                               ; preds = %62
  %70 = load i8*, i8** %9, align 8
  %71 = load i32, i32* @tipc_alphabet, align 4
  %72 = call i32 @strspn(i8* %70, i32 %71)
  %73 = load i32, i32* %11, align 4
  %74 = sub nsw i32 %73, 1
  %75 = icmp ne i32 %72, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %69, %62, %58, %55, %51, %37
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %92

77:                                               ; preds = %69
  %78 = load %struct.bearer_name*, %struct.bearer_name** %5, align 8
  %79 = icmp ne %struct.bearer_name* %78, null
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load %struct.bearer_name*, %struct.bearer_name** %5, align 8
  %82 = getelementptr inbounds %struct.bearer_name, %struct.bearer_name* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i8*, i8** %8, align 8
  %85 = call i32 @strcpy(i32 %83, i8* %84)
  %86 = load %struct.bearer_name*, %struct.bearer_name** %5, align 8
  %87 = getelementptr inbounds %struct.bearer_name, %struct.bearer_name* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i8*, i8** %9, align 8
  %90 = call i32 @strcpy(i32 %88, i8* %89)
  br label %91

91:                                               ; preds = %80, %77
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %92

92:                                               ; preds = %91, %76, %36, %31
  %93 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %93)
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strspn(i8*, i32) #2

declare dso_local i32 @strcpy(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
