; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/expat/tests/extr_runtests.c__run_ext_character_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/expat/tests/extr_runtests.c__run_ext_character_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@parser = common dso_local global i32 0, align 4
@ext_accumulate_characters = common dso_local global i32 0, align 4
@XML_TRUE = common dso_local global i32 0, align 4
@XML_STATUS_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_4__*, i32*, i8*, i32)* @_run_ext_character_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_run_ext_character_check(i8* %0, %struct.TYPE_4__* %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = call i32 @CharData_Init(i32* %11)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32* %11, i32** %14, align 8
  %15 = load i32, i32* @parser, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = call i32 @XML_SetUserData(i32 %15, %struct.TYPE_4__* %16)
  %18 = load i32, i32* @parser, align 4
  %19 = load i32, i32* @ext_accumulate_characters, align 4
  %20 = call i32 @XML_SetCharacterDataHandler(i32 %18, i32 %19)
  %21 = load i32, i32* @parser, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @strlen(i8* %23)
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @XML_TRUE, align 4
  %27 = call i64 @_XML_Parse_SINGLE_BYTES(i32 %21, i8* %22, i32 %25, i32 %26)
  %28 = load i64, i64* @XML_STATUS_ERROR, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %5
  %31 = load i32, i32* @parser, align 4
  %32 = load i8*, i8** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @_xml_failure(i32 %31, i8* %32, i32 %33)
  br label %35

35:                                               ; preds = %30, %5
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @CharData_CheckXMLChars(i32* %11, i32* %36)
  ret void
}

declare dso_local i32 @CharData_Init(i32*) #1

declare dso_local i32 @XML_SetUserData(i32, %struct.TYPE_4__*) #1

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
