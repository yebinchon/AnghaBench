; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_parse.c_ParseTrackInput.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_parse.c_ParseTrackInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAKE_MAKEFILES = common dso_local global i32 0, align 4
@VAR_GLOBAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ParseTrackInput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ParseTrackInput(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i8* null, i8** %5, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @strlen(i8* %7)
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %6, align 8
  %10 = load i32, i32* @MAKE_MAKEFILES, align 4
  %11 = load i32, i32* @VAR_GLOBAL, align 4
  %12 = call i8* @Var_Value(i32 %10, i32 %11, i8** %5)
  store i8* %12, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %66

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  %21 = load i64, i64* %6, align 8
  %22 = sub i64 0, %21
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  store i8* %23, i8** %4, align 8
  br label %24

24:                                               ; preds = %62, %15
  %25 = load i8*, i8** %3, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %65

27:                                               ; preds = %24
  %28 = load i8*, i8** %3, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 32
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i8*, i8** %3, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %3, align 8
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i8*, i8** %3, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = icmp uge i8* %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %65

40:                                               ; preds = %35
  %41 = load i8*, i8** %3, align 8
  %42 = load i8*, i8** %2, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i64 @memcmp(i8* %41, i8* %42, i64 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %40
  %47 = load i8*, i8** %3, align 8
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %46
  %54 = load i8*, i8** %3, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 32
  br i1 %59, label %60, label %61

60:                                               ; preds = %53, %46
  br label %71

61:                                               ; preds = %53, %40
  br label %62

62:                                               ; preds = %61
  %63 = load i8*, i8** %3, align 8
  %64 = call i8* @strchr(i8* %63, i8 signext 32)
  store i8* %64, i8** %3, align 8
  br label %24

65:                                               ; preds = %39, %24
  br label %66

66:                                               ; preds = %65, %1
  %67 = load i32, i32* @MAKE_MAKEFILES, align 4
  %68 = load i8*, i8** %2, align 8
  %69 = load i32, i32* @VAR_GLOBAL, align 4
  %70 = call i32 @Var_Append(i32 %67, i8* %68, i32 %69)
  br label %71

71:                                               ; preds = %66, %60
  %72 = load i8*, i8** %5, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i8*, i8** %5, align 8
  %76 = call i32 @free(i8* %75)
  br label %77

77:                                               ; preds = %74, %71
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @Var_Value(i32, i32, i8**) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @Var_Append(i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
