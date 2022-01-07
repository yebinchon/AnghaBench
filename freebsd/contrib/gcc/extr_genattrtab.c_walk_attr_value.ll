; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_walk_attr_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_walk_attr_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@must_constrain = common dso_local global i32 0, align 4
@must_extract = common dso_local global i32 0, align 4
@alternative_name = common dso_local global i32 0, align 4
@length_str = common dso_local global i32 0, align 4
@length_used = common dso_local global i32 0, align 4
@address_used = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @walk_attr_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_attr_value(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %84

10:                                               ; preds = %1
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @GET_CODE(i32* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %40 [
    i32 128, label %14
    i32 130, label %20
    i32 132, label %21
    i32 133, label %22
    i32 131, label %37
    i32 129, label %38
    i32 134, label %39
  ]

14:                                               ; preds = %10
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @ATTR_IND_SIMPLIFIED_P(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i32 1, i32* @must_constrain, align 4
  store i32 1, i32* @must_extract, align 4
  br label %19

19:                                               ; preds = %18, %14
  br label %84

20:                                               ; preds = %10
  store i32 1, i32* @must_extract, align 4
  br label %84

21:                                               ; preds = %10
  store i32 1, i32* @must_constrain, align 4
  store i32 1, i32* @must_extract, align 4
  br label %41

22:                                               ; preds = %10
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @XSTR(i32* %23, i32 0)
  %25 = load i32, i32* @alternative_name, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 1, i32* @must_constrain, align 4
  store i32 1, i32* @must_extract, align 4
  br label %36

28:                                               ; preds = %22
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @XSTR(i32* %29, i32 0)
  %31 = load i32, i32* @length_str, align 4
  %32 = call i32 @strcmp_check(i32 %30, i32 %31)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 1, i32* @length_used, align 4
  br label %35

35:                                               ; preds = %34, %28
  br label %36

36:                                               ; preds = %35, %27
  br label %84

37:                                               ; preds = %10
  store i32 1, i32* @must_extract, align 4
  store i32 1, i32* @address_used, align 4
  br label %84

38:                                               ; preds = %10
  store i32 1, i32* @address_used, align 4
  br label %84

39:                                               ; preds = %10
  br label %84

40:                                               ; preds = %10
  br label %41

41:                                               ; preds = %40, %21
  store i32 0, i32* %3, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i8* @GET_RTX_FORMAT(i32 %42)
  store i8* %43, i8** %5, align 8
  br label %44

44:                                               ; preds = %81, %41
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @GET_RTX_LENGTH(i32 %46)
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %84

49:                                               ; preds = %44
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %5, align 8
  %52 = load i8, i8* %50, align 1
  %53 = sext i8 %52 to i32
  switch i32 %53, label %80 [
    i32 101, label %54
    i32 117, label %54
    i32 69, label %58
  ]

54:                                               ; preds = %49, %49
  %55 = load i32*, i32** %2, align 8
  %56 = load i32, i32* %3, align 4
  %57 = call i32* @XEXP(i32* %55, i32 %56)
  call void @walk_attr_value(i32* %57)
  br label %80

58:                                               ; preds = %49
  %59 = load i32*, i32** %2, align 8
  %60 = load i32, i32* %3, align 4
  %61 = call i32* @XVEC(i32* %59, i32 %60)
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %79

63:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %75, %63
  %65 = load i32, i32* %4, align 4
  %66 = load i32*, i32** %2, align 8
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @XVECLEN(i32* %66, i32 %67)
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %64
  %71 = load i32*, i32** %2, align 8
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32* @XVECEXP(i32* %71, i32 %72, i32 %73)
  call void @walk_attr_value(i32* %74)
  br label %75

75:                                               ; preds = %70
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %64

78:                                               ; preds = %64
  br label %79

79:                                               ; preds = %78, %58
  br label %80

80:                                               ; preds = %49, %79, %54
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %3, align 4
  br label %44

84:                                               ; preds = %9, %19, %20, %36, %37, %38, %39, %44
  ret void
}

declare dso_local i32 @GET_CODE(i32*) #1

declare dso_local i32 @ATTR_IND_SIMPLIFIED_P(i32*) #1

declare dso_local i32 @XSTR(i32*, i32) #1

declare dso_local i32 @strcmp_check(i32, i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i32* @XEXP(i32*, i32) #1

declare dso_local i32* @XVEC(i32*, i32) #1

declare dso_local i32 @XVECLEN(i32*, i32) #1

declare dso_local i32* @XVECEXP(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
