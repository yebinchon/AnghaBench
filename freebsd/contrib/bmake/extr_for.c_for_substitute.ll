; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_for.c_for_substitute.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_for.c_for_substitute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FOR_SUB_ESCAPE_BRACE = common dso_local global i32 0, align 4
@FOR_SUB_ESCAPE_PAREN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i8)* @for_substitute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @for_substitute(i32* %0, i32* %1, i32 %2, i8 signext %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8 %3, i8* %8, align 1
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i8* @strlist_str(i32* %12, i32 %13)
  store i8* %14, i8** %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @strlist_info(i32* %15, i32 %16)
  %18 = load i8, i8* %8, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 41
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @FOR_SUB_ESCAPE_BRACE, align 4
  %23 = xor i32 %22, -1
  br label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @FOR_SUB_ESCAPE_PAREN, align 4
  %26 = xor i32 %25, -1
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i32 [ %23, %21 ], [ %26, %24 ]
  %29 = and i32 %17, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = load i32*, i32** %5, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @Buf_AddBytes(i32* %32, i32 %34, i8* %35)
  br label %89

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %85, %53, %37
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %9, align 8
  %41 = load i8, i8* %39, align 1
  store i8 %41, i8* %11, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %89

44:                                               ; preds = %38
  %45 = load i8, i8* %11, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 36
  br i1 %47, label %48, label %67

48:                                               ; preds = %44
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @for_var_len(i8* %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %48
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  %57 = load i8*, i8** %9, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 -1
  %59 = call i32 @Buf_AddBytes(i32* %54, i32 %56, i8* %58)
  %60 = load i32, i32* %10, align 4
  %61 = load i8*, i8** %9, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %9, align 8
  br label %38

64:                                               ; preds = %48
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @Buf_AddByte(i32* %65, i8 signext 92)
  br label %85

67:                                               ; preds = %44
  %68 = load i8, i8* %11, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 58
  br i1 %70, label %81, label %71

71:                                               ; preds = %67
  %72 = load i8, i8* %11, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 92
  br i1 %74, label %81, label %75

75:                                               ; preds = %71
  %76 = load i8, i8* %11, align 1
  %77 = sext i8 %76 to i32
  %78 = load i8, i8* %8, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %75, %71, %67
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @Buf_AddByte(i32* %82, i8 signext 92)
  br label %84

84:                                               ; preds = %81, %75
  br label %85

85:                                               ; preds = %84, %64
  %86 = load i32*, i32** %5, align 8
  %87 = load i8, i8* %11, align 1
  %88 = call i32 @Buf_AddByte(i32* %86, i8 signext %87)
  br label %38

89:                                               ; preds = %31, %38
  ret void
}

declare dso_local i8* @strlist_str(i32*, i32) #1

declare dso_local i32 @strlist_info(i32*, i32) #1

declare dso_local i32 @Buf_AddBytes(i32*, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @for_var_len(i8*) #1

declare dso_local i32 @Buf_AddByte(i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
