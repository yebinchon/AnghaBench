; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-cppbuiltin.c_builtin_define_std.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-cppbuiltin.c_builtin_define_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@parse_in = common dso_local global i32 0, align 4
@flag_iso = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @builtin_define_std(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i64 @strlen(i8* %7)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = add i64 %9, 5
  %11 = call i64 @alloca(i64 %10)
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 2
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %2, align 8
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %20, 1
  %22 = call i32 @memcpy(i8* %18, i8* %19, i64 %21)
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 95
  br i1 %26, label %27, label %39

27:                                               ; preds = %1
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 95
  br i1 %32, label %57, label %33

33:                                               ; preds = %27
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = call i64 @ISUPPER(i8 signext %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %33, %1
  %40 = load i8*, i8** %5, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 95
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 -1
  store i8* %46, i8** %5, align 8
  store i8 95, i8* %46, align 1
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 95
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i8*, i8** %5, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 -1
  store i8* %55, i8** %5, align 8
  store i8 95, i8* %55, align 1
  br label %56

56:                                               ; preds = %53, %47
  br label %57

57:                                               ; preds = %56, %33, %27
  %58 = load i32, i32* @parse_in, align 4
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @cpp_define(i32 %58, i8* %59)
  %61 = load i8*, i8** %5, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 2
  %64 = icmp ne i8* %61, %63
  br i1 %64, label %65, label %95

65:                                               ; preds = %57
  %66 = load i8*, i8** %6, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 -1
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 95
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %6, align 8
  store i8 95, i8* %72, align 1
  br label %74

74:                                               ; preds = %71, %65
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 -2
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 95
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i8*, i8** %6, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %6, align 8
  store i8 95, i8* %81, align 1
  br label %83

83:                                               ; preds = %80, %74
  %84 = load i8*, i8** %6, align 8
  store i8 0, i8* %84, align 1
  %85 = load i32, i32* @parse_in, align 4
  %86 = load i8*, i8** %5, align 8
  %87 = call i32 @cpp_define(i32 %85, i8* %86)
  %88 = load i32, i32* @flag_iso, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %83
  %91 = load i32, i32* @parse_in, align 4
  %92 = load i8*, i8** %2, align 8
  %93 = call i32 @cpp_define(i32 %91, i8* %92)
  br label %94

94:                                               ; preds = %90, %83
  br label %95

95:                                               ; preds = %94, %57
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @alloca(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @ISUPPER(i8 signext) #1

declare dso_local i32 @cpp_define(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
