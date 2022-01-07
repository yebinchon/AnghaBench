; ModuleID = '/home/carl/AnghaBench/freebsd/bin/getfacl/extr_getfacl.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/getfacl/extr_getfacl.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"dhinqv\00", align 1
@ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %17

17:                                               ; preds = %33, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call i32 @getopt(i32 %18, i8** %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %8, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = load i32, i32* %8, align 4
  switch i32 %23, label %31 [
    i32 100, label %24
    i32 104, label %26
    i32 105, label %27
    i32 110, label %28
    i32 113, label %29
    i32 118, label %30
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* @ACL_TYPE_DEFAULT, align 4
  store i32 %25, i32* %6, align 4
  br label %33

26:                                               ; preds = %22
  store i32 1, i32* %11, align 4
  br label %33

27:                                               ; preds = %22
  store i32 1, i32* %12, align 4
  br label %33

28:                                               ; preds = %22
  store i32 1, i32* %14, align 4
  br label %33

29:                                               ; preds = %22
  store i32 1, i32* %13, align 4
  br label %33

30:                                               ; preds = %22
  store i32 1, i32* %15, align 4
  br label %33

31:                                               ; preds = %22
  %32 = call i32 (...) @usage()
  store i32 -1, i32* %3, align 4
  br label %108

33:                                               ; preds = %30, %29, %28, %27, %26, %24
  br label %17

34:                                               ; preds = %17
  %35 = load i64, i64* @optind, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = sub nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %4, align 4
  %40 = load i64, i64* @optind, align 8
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 %40
  store i8** %42, i8*** %5, align 8
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %34
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @print_acl_from_stdin(i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 1, i32 0
  store i32 %56, i32* %3, align 4
  br label %108

57:                                               ; preds = %34
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %100, %57
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %103

62:                                               ; preds = %58
  %63 = load i8**, i8*** %5, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %15, align 4
  %77 = call i32 @print_acl_from_stdin(i32 %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  store i32 -1, i32* %7, align 4
  br label %81

81:                                               ; preds = %80, %70
  br label %99

82:                                               ; preds = %62
  %83 = load i8**, i8*** %5, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %15, align 4
  %94 = call i32 @print_acl(i8* %87, i32 %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %98

97:                                               ; preds = %82
  store i32 -1, i32* %7, align 4
  br label %98

98:                                               ; preds = %97, %82
  br label %99

99:                                               ; preds = %98, %81
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %58

103:                                              ; preds = %58
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 1, i32 0
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %103, %45, %31
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @print_acl_from_stdin(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @print_acl(i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
