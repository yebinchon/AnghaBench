; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/blacklist/test/extr_cltest.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/blacklist/test/extr_cltest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"a:m:p:u\00", align 1
@optarg = common dso_local global i8* null, align 8
@SOCK_DGRAM = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%a:%p\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"connecting to: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"write\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_storage, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [128 x i8], align 16
  %15 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  %16 = load i32, i32* @SOCK_STREAM, align 4
  store i32 %16, i32* %11, align 4
  store i32 6161, i32* %12, align 4
  br label %17

17:                                               ; preds = %36, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call i32 @getopt(i32 %18, i8** %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 %20, i32* %7, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %37

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %33 [
    i32 97, label %24
    i32 109, label %26
    i32 112, label %28
    i32 117, label %31
  ]

24:                                               ; preds = %22
  %25 = load i8*, i8** @optarg, align 8
  store i8* %25, i8** %10, align 8
  br label %36

26:                                               ; preds = %22
  %27 = load i8*, i8** @optarg, align 8
  store i8* %27, i8** %9, align 8
  br label %36

28:                                               ; preds = %22
  %29 = load i8*, i8** @optarg, align 8
  %30 = call i32 @atoi(i8* %29)
  store i32 %30, i32* %12, align 4
  br label %36

31:                                               ; preds = %22
  %32 = load i32, i32* @SOCK_DGRAM, align 4
  store i32 %32, i32* %11, align 4
  br label %36

33:                                               ; preds = %22
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @usage(i32 %34)
  br label %36

36:                                               ; preds = %33, %31, %28, %26, %24
  br label %17

37:                                               ; preds = %17
  %38 = load i8*, i8** %10, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @getaddr(i8* %38, i32 %39, %struct.sockaddr_storage* %8, i32* %13)
  %41 = load i32, i32* @AF_INET, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @socket(i32 %41, i32 %42, i32 0)
  store i32 %43, i32* %6, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @EXIT_FAILURE, align 4
  %47 = call i32 @err(i32 %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %37
  %49 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %50 = bitcast %struct.sockaddr_storage* %8 to i8*
  %51 = call i32 @sockaddr_snprintf(i8* %49, i32 128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %50)
  %52 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %53 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %52)
  %54 = load i32, i32* %6, align 4
  %55 = bitcast %struct.sockaddr_storage* %8 to i8*
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @connect(i32 %54, i8* %55, i32 %56)
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %62

59:                                               ; preds = %48
  %60 = load i32, i32* @EXIT_FAILURE, align 4
  %61 = call i32 @err(i32 %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %48
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @strlen(i8* %63)
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %15, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i8*, i8** %9, align 8
  %69 = load i64, i64* %15, align 8
  %70 = call i64 @write(i32 %67, i8* %68, i64 %69)
  %71 = load i64, i64* %15, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %62
  %74 = load i32, i32* @EXIT_FAILURE, align 4
  %75 = call i32 @err(i32 %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %62
  ret i32 0
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @getaddr(i8*, i32, %struct.sockaddr_storage*, i32*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @sockaddr_snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @connect(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @write(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
