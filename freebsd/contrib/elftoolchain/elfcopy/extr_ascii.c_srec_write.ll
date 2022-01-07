; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_ascii.c_srec_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_ascii.c_srec_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_LINE_BUFSZ = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"write failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8, i32, i8*, i64)* @srec_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srec_write(i32 %0, i8 signext %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8 %1, i8* %7, align 1
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %18 = load i32, i32* @_LINE_BUFSZ, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load i8, i8* %7, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 48
  br i1 %24, label %37, label %25

25:                                               ; preds = %5
  %26 = load i8, i8* %7, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 49
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = load i8, i8* %7, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 53
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i8, i8* %7, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 57
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %29, %25, %5
  store i32 2, i32* %16, align 4
  br label %49

38:                                               ; preds = %33
  %39 = load i8, i8* %7, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 50
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i8, i8* %7, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 56
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %38
  store i32 3, i32* %16, align 4
  br label %48

47:                                               ; preds = %42
  store i32 4, i32* %16, align 4
  br label %48

48:                                               ; preds = %47, %46
  br label %49

49:                                               ; preds = %48, %37
  store i32 0, i32* %17, align 4
  %50 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 83, i8* %50, align 16
  %51 = load i8, i8* %7, align 1
  %52 = getelementptr inbounds i8, i8* %21, i64 1
  store i8 %51, i8* %52, align 1
  store i32 2, i32* %15, align 4
  %53 = load i32, i32* %16, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %10, align 8
  %56 = add i64 %54, %55
  %57 = add i64 %56, 1
  %58 = trunc i64 %57 to i32
  %59 = call i32 @write_num(i8* %21, i32* %15, i32 %58, i32 1, i32* %17)
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %16, align 4
  %62 = call i32 @write_num(i8* %21, i32* %15, i32 %60, i32 %61, i32* %17)
  %63 = load i8*, i8** %9, align 8
  %64 = bitcast i8* %63 to i32*
  store i32* %64, i32** %13, align 8
  %65 = load i32*, i32** %13, align 8
  %66 = load i64, i64* %10, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32* %67, i32** %14, align 8
  br label %68

68:                                               ; preds = %76, %49
  %69 = load i32*, i32** %13, align 8
  %70 = load i32*, i32** %14, align 8
  %71 = icmp ult i32* %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load i32*, i32** %13, align 8
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @write_num(i8* %21, i32* %15, i32 %74, i32 1, i32* %17)
  br label %76

76:                                               ; preds = %72
  %77 = load i32*, i32** %13, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %13, align 8
  br label %68

79:                                               ; preds = %68
  %80 = load i32, i32* %17, align 4
  %81 = xor i32 %80, -1
  %82 = and i32 %81, 255
  %83 = call i32 @write_num(i8* %21, i32* %15, i32 %82, i32 1, i32* null)
  %84 = load i32, i32* %15, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %15, align 4
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i8, i8* %21, i64 %86
  store i8 13, i8* %87, align 1
  %88 = load i32, i32* %15, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %15, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i8, i8* %21, i64 %90
  store i8 10, i8* %91, align 1
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %15, align 4
  %94 = call i64 @write(i32 %92, i8* %21, i32 %93)
  %95 = load i32, i32* %15, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp ne i64 %94, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %79
  %99 = load i32, i32* @EXIT_FAILURE, align 4
  %100 = call i32 @err(i32 %99, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %79
  %102 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %102)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @write_num(i8*, i32*, i32, i32, i32*) #2

declare dso_local i64 @write(i32, i8*, i32) #2

declare dso_local i32 @err(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
