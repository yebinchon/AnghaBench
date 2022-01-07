; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/expat/tests/extr_runtests.c__run_character_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/expat/tests/extr_runtests.c__run_character_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@parser = common dso_local global i32 0, align 4
@accumulate_characters = common dso_local global i32 0, align 4
@XML_TRUE = common dso_local global i32 0, align 4
@XML_STATUS_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i8*, i32)* @_run_character_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_run_character_check(i8* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = call i32 @CharData_Init(i32* %9)
  %11 = load i32, i32* @parser, align 4
  %12 = call i32 @XML_SetUserData(i32 %11, i32* %9)
  %13 = load i32, i32* @parser, align 4
  %14 = load i32, i32* @accumulate_characters, align 4
  %15 = call i32 @XML_SetCharacterDataHandler(i32 %13, i32 %14)
  %16 = load i32, i32* @parser, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @strlen(i8* %18)
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @XML_TRUE, align 4
  %22 = call i64 @_XML_Parse_SINGLE_BYTES(i32 %16, i8* %17, i32 %20, i32 %21)
  %23 = load i64, i64* @XML_STATUS_ERROR, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %4
  %26 = load i32, i32* @parser, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @_xml_failure(i32 %26, i8* %27, i32 %28)
  br label %30

30:                                               ; preds = %25, %4
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @CharData_CheckXMLChars(i32* %9, i32* %31)
  ret void
}

declare dso_local i32 @CharData_Init(i32*) #1

declare dso_local i32 @XML_SetUserData(i32, i32*) #1

declare dso_local i32 @XML_SetCharacterDataHandler(i32, i32) #1

declare dso_local i64 @_XML_Parse_SINGLE_BYTES(i32, i8*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @_xml_failure(i32, i8*, i32) #1

declare dso_local i32 @CharData_CheckXMLChars(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
