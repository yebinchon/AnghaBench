; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_map.c_atf_map_init_charpp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_map.c_atf_map_init_charpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"List too short; no value for key '%s' provided\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atf_map_init_charpp(i32* %0, i8** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8** %1, i8*** %4, align 8
  %9 = load i8**, i8*** %4, align 8
  store i8** %9, i8*** %6, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @atf_map_init(i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i8**, i8*** %4, align 8
  %13 = icmp ne i8** %12, null
  br i1 %13, label %14, label %50

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %41, %14
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @atf_is_error(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i8**, i8*** %6, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i1 [ false, %15 ], [ %22, %19 ]
  br i1 %24, label %25, label %49

25:                                               ; preds = %23
  %26 = load i8**, i8*** %6, align 8
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ne i8* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @INV(i32 %30)
  %32 = load i8**, i8*** %6, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i32 1
  store i8** %33, i8*** %6, align 8
  %34 = load i8**, i8*** %6, align 8
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %8, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %25
  %38 = load i32, i32* @EINVAL, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @atf_libc_error(i32 %38, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %39)
  store i32 %40, i32* %5, align 4
  br label %49

41:                                               ; preds = %25
  %42 = load i8**, i8*** %6, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i32 1
  store i8** %43, i8*** %6, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @strdup(i8* %46)
  %48 = call i32 @atf_map_insert(i32* %44, i8* %45, i32 %47, i32 1)
  store i32 %48, i32* %5, align 4
  br label %15

49:                                               ; preds = %37, %23
  br label %50

50:                                               ; preds = %49, %2
  %51 = load i32, i32* %5, align 4
  %52 = call i64 @atf_is_error(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @atf_map_fini(i32* %55)
  br label %57

57:                                               ; preds = %54, %50
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @atf_map_init(i32*) #1

declare dso_local i64 @atf_is_error(i32) #1

declare dso_local i32 @INV(i32) #1

declare dso_local i32 @atf_libc_error(i32, i8*, i8*) #1

declare dso_local i32 @atf_map_insert(i32*, i8*, i32, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @atf_map_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
