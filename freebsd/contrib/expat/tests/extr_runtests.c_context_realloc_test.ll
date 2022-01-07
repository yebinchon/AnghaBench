; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/expat/tests/extr_runtests.c_context_realloc_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/expat/tests/extr_runtests.c_context_realloc_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32* }

@.str = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"<!ELEMENT e EMPTY>\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"<e/>\00", align 1
@reallocation_count = common dso_local global i32 0, align 4
@parser = common dso_local global i32 0, align 4
@XML_PARAM_ENTITY_PARSING_ALWAYS = common dso_local global i32 0, align 4
@external_entity_optioner = common dso_local global i32 0, align 4
@XML_TRUE = common dso_local global i32 0, align 4
@XML_STATUS_ERROR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [45 x i8] c"Parsing worked despite failing reallocations\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Parsing failed even at max reallocation count\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @context_realloc_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_realloc_test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [3 x %struct.TYPE_3__], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %3, i64 0, i64 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = call i32* @XCS(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %9 = bitcast i32* %8 to i8*
  store i8* %9, i8** %7, align 16
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store i32* bitcast ([19 x i8]* @.str.1 to i32*), i32** %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i64 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = call i32* @XCS(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %14 = bitcast i32* %13 to i8*
  store i8* %14, i8** %12, align 16
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  store i32* bitcast ([5 x i8]* @.str.3 to i32*), i32** %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i8* null, i8** %17, align 16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i32* null, i32** %18, align 8
  store i32 6, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %46, %1
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 6
  br i1 %21, label %22, label %49

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* @reallocation_count, align 4
  %24 = load i32, i32* @parser, align 4
  %25 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %3, i64 0, i64 0
  %26 = call i32 @XML_SetUserData(i32 %24, %struct.TYPE_3__* %25)
  %27 = load i32, i32* @parser, align 4
  %28 = load i32, i32* @XML_PARAM_ENTITY_PARSING_ALWAYS, align 4
  %29 = call i32 @XML_SetParamEntityParsing(i32 %27, i32 %28)
  %30 = load i32, i32* @parser, align 4
  %31 = load i32, i32* @external_entity_optioner, align 4
  %32 = call i32 @XML_SetExternalEntityRefHandler(i32 %30, i32 %31)
  %33 = load i32, i32* @parser, align 4
  %34 = load i8*, i8** %2, align 8
  %35 = load i8*, i8** %2, align 8
  %36 = call i64 @strlen(i8* %35)
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* @XML_TRUE, align 4
  %39 = call i64 @_XML_Parse_SINGLE_BYTES(i32 %33, i8* %34, i32 %37, i32 %38)
  %40 = load i64, i64* @XML_STATUS_ERROR, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %22
  br label %49

43:                                               ; preds = %22
  %44 = call i32 (...) @nsalloc_teardown()
  %45 = call i32 (...) @nsalloc_setup()
  br label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %19

49:                                               ; preds = %42, %19
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = call i32 @fail(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  br label %60

54:                                               ; preds = %49
  %55 = load i32, i32* %4, align 4
  %56 = icmp eq i32 %55, 6
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call i32 @fail(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %54
  br label %60

60:                                               ; preds = %59, %52
  ret void
}

declare dso_local i32* @XCS(i8*) #1

declare dso_local i32 @XML_SetUserData(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @XML_SetParamEntityParsing(i32, i32) #1

declare dso_local i32 @XML_SetExternalEntityRefHandler(i32, i32) #1

declare dso_local i64 @_XML_Parse_SINGLE_BYTES(i32, i8*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @nsalloc_teardown(...) #1

declare dso_local i32 @nsalloc_setup(...) #1

declare dso_local i32 @fail(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
