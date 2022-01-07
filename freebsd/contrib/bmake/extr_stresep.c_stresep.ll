; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_stresep.c_stresep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_stresep.c_stresep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @stresep(i8** %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = icmp eq i8** %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %3
  store i8* null, i8** %4, align 8
  br label %84

20:                                               ; preds = %16
  %21 = load i8**, i8*** %5, align 8
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %8, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i8* null, i8** %4, align 8
  br label %84

25:                                               ; preds = %20
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %12, align 8
  %30 = load i8*, i8** %8, align 8
  store i8* %30, i8** %13, align 8
  br label %31

31:                                               ; preds = %83, %25
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %8, align 8
  %34 = load i8, i8* %32, align 1
  %35 = sext i8 %34 to i32
  store i32 %35, i32* %10, align 4
  %36 = load i64, i64* %12, align 8
  %37 = add i64 %36, -1
  store i64 %37, i64* %12, align 8
  br label %38

38:                                               ; preds = %47, %31
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %42, %43
  br label %45

45:                                               ; preds = %41, %38
  %46 = phi i1 [ false, %38 ], [ %44, %41 ]
  br i1 %46, label %47, label %59

47:                                               ; preds = %45
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 -1
  %50 = load i8*, i8** %8, align 8
  %51 = load i64, i64* %12, align 8
  %52 = call i32 @memmove(i8* %49, i8* %50, i64 %51)
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %8, align 8
  %55 = load i8, i8* %53, align 1
  %56 = sext i8 %55 to i32
  store i32 %56, i32* %10, align 4
  %57 = load i64, i64* %12, align 8
  %58 = add i64 %57, -1
  store i64 %58, i64* %12, align 8
  br label %38

59:                                               ; preds = %45
  %60 = load i8*, i8** %6, align 8
  store i8* %60, i8** %9, align 8
  br label %61

61:                                               ; preds = %80, %59
  %62 = load i8*, i8** %9, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %9, align 8
  %64 = load i8, i8* %62, align 1
  %65 = sext i8 %64 to i32
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %61
  %69 = load i32, i32* %10, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i8* null, i8** %8, align 8
  br label %75

72:                                               ; preds = %68
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 -1
  store i8 0, i8* %74, align 1
  br label %75

75:                                               ; preds = %72, %71
  %76 = load i8*, i8** %8, align 8
  %77 = load i8**, i8*** %5, align 8
  store i8* %76, i8** %77, align 8
  %78 = load i8*, i8** %13, align 8
  store i8* %78, i8** %4, align 8
  br label %84

79:                                               ; preds = %61
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %61, label %83

83:                                               ; preds = %80
  br label %31

84:                                               ; preds = %75, %24, %19
  %85 = load i8*, i8** %4, align 8
  ret i8* %85
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
