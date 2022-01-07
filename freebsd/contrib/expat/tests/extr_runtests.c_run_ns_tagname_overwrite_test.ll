; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/expat/tests/extr_runtests.c_run_ns_tagname_overwrite_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/expat/tests/extr_runtests.c_run_ns_tagname_overwrite_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@parser = common dso_local global i32 0, align 4
@overwrite_start_checker = common dso_local global i32 0, align 4
@overwrite_end_checker = common dso_local global i32 0, align 4
@XML_TRUE = common dso_local global i32 0, align 4
@XML_STATUS_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @run_ns_tagname_overwrite_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_ns_tagname_overwrite_test(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = call i32 @CharData_Init(i32* %5)
  %7 = load i32, i32* @parser, align 4
  %8 = call i32 @XML_SetUserData(i32 %7, i32* %5)
  %9 = load i32, i32* @parser, align 4
  %10 = load i32, i32* @overwrite_start_checker, align 4
  %11 = load i32, i32* @overwrite_end_checker, align 4
  %12 = call i32 @XML_SetElementHandler(i32 %9, i32 %10, i32 %11)
  %13 = load i32, i32* @parser, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @strlen(i8* %15)
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @XML_TRUE, align 4
  %19 = call i64 @_XML_Parse_SINGLE_BYTES(i32 %13, i8* %14, i32 %17, i32 %18)
  %20 = load i64, i64* @XML_STATUS_ERROR, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @parser, align 4
  %24 = call i32 @xml_failure(i32 %23)
  br label %25

25:                                               ; preds = %22, %2
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @CharData_CheckXMLChars(i32* %5, i32* %26)
  ret void
}

declare dso_local i32 @CharData_Init(i32*) #1

declare dso_local i32 @XML_SetUserData(i32, i32*) #1

declare dso_local i32 @XML_SetElementHandler(i32, i32, i32) #1

declare dso_local i64 @_XML_Parse_SINGLE_BYTES(i32, i8*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @xml_failure(i32) #1

declare dso_local i32 @CharData_CheckXMLChars(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
