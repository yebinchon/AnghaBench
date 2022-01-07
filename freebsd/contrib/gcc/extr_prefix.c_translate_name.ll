; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_prefix.c_translate_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_prefix.c_translate_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@std_prefix = common dso_local global i8* null, align 8
@PREFIX = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @translate_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @translate_name(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  br label %8

8:                                                ; preds = %79, %1
  %9 = load i8*, i8** %2, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %3, align 1
  %12 = load i8, i8* %3, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 64
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = load i8, i8* %3, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 36
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %90

20:                                               ; preds = %15, %8
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %43, %20
  %22 = load i8*, i8** %2, align 8
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %21
  %31 = load i8*, i8** %2, align 8
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = call i32 @IS_DIR_SEPARATOR(i8 signext %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %30, %21
  %41 = phi i1 [ false, %21 ], [ %39, %30 ]
  br i1 %41, label %42, label %46

42:                                               ; preds = %40
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %21

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  %49 = call i64 @alloca(i32 %48)
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** %4, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = load i8*, i8** %2, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @strncpy(i8* %51, i8* %53, i32 %54)
  %56 = load i8*, i8** %4, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  store i8 0, i8* %59, align 1
  %60 = load i8, i8* %3, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 64
  br i1 %62, label %63, label %71

63:                                               ; preds = %46
  %64 = load i8*, i8** %4, align 8
  %65 = call i8* @get_key_value(i8* %64)
  store i8* %65, i8** %6, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i8*, i8** @std_prefix, align 8
  store i8* %69, i8** %6, align 8
  br label %70

70:                                               ; preds = %68, %63
  br label %74

71:                                               ; preds = %46
  %72 = load i8*, i8** %4, align 8
  %73 = call i8* @getenv(i8* %72)
  store i8* %73, i8** %6, align 8
  br label %74

74:                                               ; preds = %71, %70
  %75 = load i8*, i8** %6, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i8*, i8** @PREFIX, align 8
  store i8* %78, i8** %6, align 8
  br label %79

79:                                               ; preds = %77, %74
  %80 = load i8*, i8** %2, align 8
  store i8* %80, i8** %5, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = load i8*, i8** %2, align 8
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %82, i64 %85
  %87 = call i8* @concat(i8* %81, i8* %86, i32* null)
  store i8* %87, i8** %2, align 8
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @free(i8* %88)
  br label %8

90:                                               ; preds = %19
  %91 = load i8*, i8** %2, align 8
  ret i8* %91
}

declare dso_local i32 @IS_DIR_SEPARATOR(i8 signext) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i8* @get_key_value(i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @concat(i8*, i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
