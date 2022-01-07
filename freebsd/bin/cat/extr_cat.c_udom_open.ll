; ModuleID = '/home/carl/AnghaBench/freebsd/bin/cat/extr_cat.c_udom_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/cat/extr_cat.c_udom_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.addrinfo* }

@PATH_MAX = common dso_local global i32 0, align 4
@AF_LOCAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@O_ACCMODE = common dso_local global i32 0, align 4
@SHUT_WR = common dso_local global i32 0, align 4
@SHUT_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @udom_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udom_open(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.addrinfo, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* @PATH_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  store i32 -1, i32* %11, align 4
  %18 = call i32 @bzero(%struct.addrinfo* %6, i32 32)
  %19 = load i32, i32* @AF_LOCAL, align 4
  %20 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 4
  store i32 %19, i32* %20, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32* @realpath(i8* %21, i8* %17)
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %104

25:                                               ; preds = %2
  %26 = call i32 @getaddrinfo(i8* %17, i32* null, %struct.addrinfo* %6, %struct.addrinfo** %8)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @gai_strerror(i32 %30)
  %32 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %104

34:                                               ; preds = %25
  %35 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  store %struct.addrinfo* %35, %struct.addrinfo** %7, align 8
  br label %36

36:                                               ; preds = %71, %34
  %37 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %38 = icmp ne %struct.addrinfo* %37, null
  br i1 %38, label %39, label %75

39:                                               ; preds = %36
  %40 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %41 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %44 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %47 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @socket(i32 %42, i32 %45, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %39
  %53 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %54 = call i32 @freeaddrinfo(%struct.addrinfo* %53)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %104

55:                                               ; preds = %39
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %58 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %61 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @connect(i32 %56, i32 %59, i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  br label %75

67:                                               ; preds = %55
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @close(i32 %68)
  store i32 -1, i32* %11, align 4
  br label %70

70:                                               ; preds = %67
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %73 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %72, i32 0, i32 5
  %74 = load %struct.addrinfo*, %struct.addrinfo** %73, align 8
  store %struct.addrinfo* %74, %struct.addrinfo** %7, align 8
  br label %36

75:                                               ; preds = %66, %36
  %76 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %77 = call i32 @freeaddrinfo(%struct.addrinfo* %76)
  %78 = load i32, i32* %11, align 4
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %102

80:                                               ; preds = %75
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @O_ACCMODE, align 4
  %83 = and i32 %81, %82
  switch i32 %83, label %100 [
    i32 129, label %84
    i32 128, label %92
  ]

84:                                               ; preds = %80
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @SHUT_WR, align 4
  %87 = call i32 @shutdown(i32 %85, i32 %86)
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = call i32 (i8*, ...) @warn(i8* null)
  br label %91

91:                                               ; preds = %89, %84
  br label %101

92:                                               ; preds = %80
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @SHUT_RD, align 4
  %95 = call i32 @shutdown(i32 %93, i32 %94)
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = call i32 (i8*, ...) @warn(i8* null)
  br label %99

99:                                               ; preds = %97, %92
  br label %101

100:                                              ; preds = %80
  br label %101

101:                                              ; preds = %100, %99, %91
  br label %102

102:                                              ; preds = %101, %75
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %104

104:                                              ; preds = %102, %52, %29, %24
  %105 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %105)
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bzero(%struct.addrinfo*, i32) #2

declare dso_local i32* @realpath(i8*, i8*) #2

declare dso_local i32 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @warn(i8*, ...) #2

declare dso_local i32 @gai_strerror(i32) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

declare dso_local i32 @connect(i32, i32, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @shutdown(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
