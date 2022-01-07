; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_f-exp.c_match_string_literal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_f-exp.c_match_string_literal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i64 }

@lexptr = common dso_local global i8* null, align 8
@tempbufindex = common dso_local global i64 0, align 8
@tempbuf = common dso_local global i8* null, align 8
@yylval = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@STRING_LITERAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @match_string_literal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_string_literal() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = load i8*, i8** @lexptr, align 8
  store i8* %3, i8** %2, align 8
  store i64 0, i64* @tempbufindex, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %5, i8** %2, align 8
  br label %6

6:                                                ; preds = %41, %0
  %7 = load i8*, i8** %2, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %44

11:                                               ; preds = %6
  %12 = call i32 @CHECKBUF(i32 1)
  %13 = load i8*, i8** %2, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = load i8*, i8** @lexptr, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %15, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %11
  %21 = load i8*, i8** %2, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = load i8*, i8** @lexptr, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i8*, i8** %2, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %2, align 8
  br label %33

32:                                               ; preds = %20
  br label %44

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %33, %11
  %35 = load i8*, i8** %2, align 8
  %36 = load i8, i8* %35, align 1
  %37 = load i8*, i8** @tempbuf, align 8
  %38 = load i64, i64* @tempbufindex, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* @tempbufindex, align 8
  %40 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8 %36, i8* %40, align 1
  br label %41

41:                                               ; preds = %34
  %42 = load i8*, i8** %2, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %2, align 8
  br label %6

44:                                               ; preds = %32, %6
  %45 = load i8*, i8** %2, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i64, i64* @tempbufindex, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49, %44
  store i32 0, i32* %1, align 4
  br label %62

53:                                               ; preds = %49
  %54 = load i8*, i8** @tempbuf, align 8
  %55 = load i64, i64* @tempbufindex, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8 0, i8* %56, align 1
  %57 = load i8*, i8** @tempbuf, align 8
  store i8* %57, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @yylval, i32 0, i32 0, i32 0), align 8
  %58 = load i64, i64* @tempbufindex, align 8
  store i64 %58, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @yylval, i32 0, i32 0, i32 1), align 8
  %59 = load i8*, i8** %2, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %2, align 8
  store i8* %60, i8** @lexptr, align 8
  %61 = load i32, i32* @STRING_LITERAL, align 4
  store i32 %61, i32* %1, align 4
  br label %62

62:                                               ; preds = %53, %52
  %63 = load i32, i32* %1, align 4
  ret i32 %63
}

declare dso_local i32 @CHECKBUF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
