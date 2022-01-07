; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_ascii.c_ihex_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_ascii.c_ihex_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_LINE_BUFSZ = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Internal: ihex_write() sz too big\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"write failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i8*, i64)* @ihex_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ihex_write(i32 %0, i32 %1, i32 %2, i32 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %19 = load i32, i32* @_LINE_BUFSZ, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %13, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  %23 = load i64, i64* %12, align 8
  %24 = icmp ugt i64 %23, 16
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load i32, i32* @EXIT_FAILURE, align 4
  %27 = call i32 @errx(i32 %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %6
  store i32 0, i32* %18, align 4
  %29 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 58, i8* %29, align 16
  store i32 1, i32* %17, align 4
  %30 = load i64, i64* %12, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @write_num(i8* %22, i32* %17, i32 %31, i32 1, i32* %18)
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @write_num(i8* %22, i32* %17, i32 %33, i32 2, i32* %18)
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @write_num(i8* %22, i32* %17, i32 %35, i32 1, i32* %18)
  %37 = load i64, i64* %12, align 8
  %38 = icmp ugt i64 %37, 0
  br i1 %38, label %39, label %66

39:                                               ; preds = %28
  %40 = load i8*, i8** %11, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %60

42:                                               ; preds = %39
  %43 = load i8*, i8** %11, align 8
  %44 = bitcast i8* %43 to i32*
  store i32* %44, i32** %15, align 8
  %45 = load i32*, i32** %15, align 8
  %46 = load i64, i64* %12, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32* %47, i32** %16, align 8
  br label %48

48:                                               ; preds = %56, %42
  %49 = load i32*, i32** %15, align 8
  %50 = load i32*, i32** %16, align 8
  %51 = icmp ult i32* %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i32*, i32** %15, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @write_num(i8* %22, i32* %17, i32 %54, i32 1, i32* %18)
  br label %56

56:                                               ; preds = %52
  %57 = load i32*, i32** %15, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %15, align 8
  br label %48

59:                                               ; preds = %48
  br label %65

60:                                               ; preds = %39
  %61 = load i32, i32* %10, align 4
  %62 = load i64, i64* %12, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @write_num(i8* %22, i32* %17, i32 %61, i32 %63, i32* %18)
  br label %65

65:                                               ; preds = %60, %59
  br label %66

66:                                               ; preds = %65, %28
  %67 = load i32, i32* %18, align 4
  %68 = xor i32 %67, -1
  %69 = add nsw i32 %68, 1
  %70 = and i32 %69, 255
  %71 = call i32 @write_num(i8* %22, i32* %17, i32 %70, i32 1, i32* null)
  %72 = load i32, i32* %17, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %17, align 4
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %22, i64 %74
  store i8 13, i8* %75, align 1
  %76 = load i32, i32* %17, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %17, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8, i8* %22, i64 %78
  store i8 10, i8* %79, align 1
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %17, align 4
  %82 = call i64 @write(i32 %80, i8* %22, i32 %81)
  %83 = load i32, i32* %17, align 4
  %84 = sext i32 %83 to i64
  %85 = icmp ne i64 %82, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %66
  %87 = load i32, i32* @EXIT_FAILURE, align 4
  %88 = call i32 @err(i32 %87, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %66
  %90 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %90)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @errx(i32, i8*) #2

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
