; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_tekhex.c_pass_over.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_tekhex.c_pass_over.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@MAXCHUNK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64 (i32*, i32, i8*)*)* @pass_over to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pass_over(i32* %0, i64 (i32*, i32, i8*)* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64 (i32*, i32, i8*)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 (i32*, i32, i8*)* %1, i64 (i32*, i32, i8*)** %5, align 8
  %12 = load i64, i64* @FALSE, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @SEEK_SET, align 4
  %15 = call i64 @bfd_seek(i32* %13, i32 0, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i64, i64* @FALSE, align 8
  store i64 %18, i64* %3, align 8
  br label %108

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %105, %19
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %24, label %106

24:                                               ; preds = %20
  %25 = load i32, i32* @MAXCHUNK, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %8, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %9, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @bfd_bread(i8* %28, i32 1, i32* %29)
  %31 = icmp ne i32 %30, 1
  %32 = zext i1 %31 to i32
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %7, align 8
  br label %34

34:                                               ; preds = %44, %24
  %35 = load i8, i8* %28, align 16
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 37
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %39, 0
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi i1 [ false, %34 ], [ %41, %38 ]
  br i1 %43, label %44, label %50

44:                                               ; preds = %42
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @bfd_bread(i8* %28, i32 1, i32* %45)
  %47 = icmp ne i32 %46, 1
  %48 = zext i1 %47 to i32
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %7, align 8
  br label %34

50:                                               ; preds = %42
  %51 = load i64, i64* %7, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 3, i32* %11, align 4
  br label %102

54:                                               ; preds = %50
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @bfd_bread(i8* %28, i32 5, i32* %55)
  %57 = icmp ne i32 %56, 5
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i64, i64* @FALSE, align 8
  store i64 %59, i64* %3, align 8
  store i32 1, i32* %11, align 4
  br label %102

60:                                               ; preds = %54
  %61 = getelementptr inbounds i8, i8* %28, i64 2
  %62 = load i8, i8* %61, align 2
  store i8 %62, i8* %10, align 1
  %63 = getelementptr inbounds i8, i8* %28, i64 0
  %64 = load i8, i8* %63, align 16
  %65 = call i32 @ISHEX(i8 signext %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = getelementptr inbounds i8, i8* %28, i64 1
  %69 = load i8, i8* %68, align 1
  %70 = call i32 @ISHEX(i8 signext %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67, %60
  store i32 3, i32* %11, align 4
  br label %102

73:                                               ; preds = %67
  %74 = call i32 @HEX(i8* %28)
  %75 = sub nsw i32 %74, 5
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @MAXCHUNK, align 4
  %78 = icmp uge i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i64, i64* @FALSE, align 8
  store i64 %80, i64* %3, align 8
  store i32 1, i32* %11, align 4
  br label %102

81:                                               ; preds = %73
  %82 = load i32, i32* %6, align 4
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @bfd_bread(i8* %28, i32 %82, i32* %83)
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i64, i64* @FALSE, align 8
  store i64 %88, i64* %3, align 8
  store i32 1, i32* %11, align 4
  br label %102

89:                                               ; preds = %81
  %90 = load i32, i32* %6, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %28, i64 %91
  store i8 0, i8* %92, align 1
  %93 = load i64 (i32*, i32, i8*)*, i64 (i32*, i32, i8*)** %5, align 8
  %94 = load i32*, i32** %4, align 8
  %95 = load i8, i8* %10, align 1
  %96 = sext i8 %95 to i32
  %97 = call i64 %93(i32* %94, i32 %96, i8* %28)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %89
  %100 = load i64, i64* @FALSE, align 8
  store i64 %100, i64* %3, align 8
  store i32 1, i32* %11, align 4
  br label %102

101:                                              ; preds = %89
  store i32 0, i32* %11, align 4
  br label %102

102:                                              ; preds = %101, %99, %87, %79, %72, %58, %53
  %103 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %103)
  %104 = load i32, i32* %11, align 4
  switch i32 %104, label %110 [
    i32 0, label %105
    i32 3, label %106
    i32 1, label %108
  ]

105:                                              ; preds = %102
  br label %20

106:                                              ; preds = %102, %20
  %107 = load i64, i64* @TRUE, align 8
  store i64 %107, i64* %3, align 8
  br label %108

108:                                              ; preds = %106, %102, %17
  %109 = load i64, i64* %3, align 8
  ret i64 %109

110:                                              ; preds = %102
  unreachable
}

declare dso_local i64 @bfd_seek(i32*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @bfd_bread(i8*, i32, i32*) #1

declare dso_local i32 @ISHEX(i8 signext) #1

declare dso_local i32 @HEX(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
