; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_symbols.c_decode_local_label_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_symbols.c_decode_local_label_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DOLLAR_LABEL_CHAR = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [7 x i8] c"dollar\00", align 1
@LOCAL_LABEL_CHAR = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"fb\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"\22%d\22 (instance number %d of a %s label)\00", align 1
@notes = common dso_local global i32 0, align 4
@LOCAL_LABEL_PREFIX = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @decode_local_label_name(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = load i32, i32* %10, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 76
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i8*, i8** %3, align 8
  store i8* %19, i8** %2, align 8
  br label %93

20:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  store i8* %25, i8** %4, align 8
  br label %26

26:                                               ; preds = %39, %20
  %27 = load i8*, i8** %4, align 8
  %28 = load i8, i8* %27, align 1
  %29 = call i64 @ISDIGIT(i8 signext %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = mul nsw i32 10, %32
  %34 = load i8*, i8** %4, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = add nsw i32 %33, %36
  %38 = sub nsw i32 %37, 48
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %31
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %4, align 8
  br label %26

42:                                               ; preds = %26
  %43 = load i8*, i8** %4, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = load i8, i8* @DOLLAR_LABEL_CHAR, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %61

50:                                               ; preds = %42
  %51 = load i8*, i8** %4, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = load i8, i8* @LOCAL_LABEL_CHAR, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %60

58:                                               ; preds = %50
  %59 = load i8*, i8** %3, align 8
  store i8* %59, i8** %2, align 8
  br label %93

60:                                               ; preds = %57
  br label %61

61:                                               ; preds = %60, %49
  store i32 0, i32* %7, align 4
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %4, align 8
  br label %64

64:                                               ; preds = %77, %61
  %65 = load i8*, i8** %4, align 8
  %66 = load i8, i8* %65, align 1
  %67 = call i64 @ISDIGIT(i8 signext %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %64
  %70 = load i32, i32* %7, align 4
  %71 = mul nsw i32 10, %70
  %72 = load i8*, i8** %4, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = add nsw i32 %71, %74
  %76 = sub nsw i32 %75, 48
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %69
  %78 = load i8*, i8** %4, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %4, align 8
  br label %64

80:                                               ; preds = %64
  %81 = call i8* @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  store i8* %81, i8** %9, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = call i64 @strlen(i8* %82)
  %84 = add nsw i64 %83, 30
  %85 = call i8* @obstack_alloc(i32* @notes, i64 %84)
  store i8* %85, i8** %5, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 @sprintf(i8* %86, i8* %87, i32 %88, i32 %89, i8* %90)
  %92 = load i8*, i8** %5, align 8
  store i8* %92, i8** %2, align 8
  br label %93

93:                                               ; preds = %80, %58, %18
  %94 = load i8*, i8** %2, align 8
  ret i8* %94
}

declare dso_local i64 @ISDIGIT(i8 signext) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i8* @obstack_alloc(i32*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
