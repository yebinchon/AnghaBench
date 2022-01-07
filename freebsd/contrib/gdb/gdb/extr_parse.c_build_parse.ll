; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_parse.c_build_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_parse.c_build_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TYPE_CODE_FUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"<text variable, no debug info>\00", align 1
@msym_text_symbol_type = common dso_local global i32 0, align 4
@builtin_type_int = common dso_local global i32 0, align 4
@TYPE_CODE_INT = common dso_local global i32 0, align 4
@TARGET_INT_BIT = common dso_local global i32 0, align 4
@HOST_CHAR_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"<data variable, no debug info>\00", align 1
@msym_data_symbol_type = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"<variable (not text or data), no debug info>\00", align 1
@msym_unknown_symbol_type = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @build_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_parse() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @TYPE_CODE_FUNC, align 4
  %4 = call i8* @init_type(i32 %3, i32 1, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32* null)
  %5 = ptrtoint i8* %4 to i32
  store i32 %5, i32* @msym_text_symbol_type, align 4
  %6 = load i32, i32* @builtin_type_int, align 4
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* @TYPE_CODE_INT, align 4
  %8 = load i32, i32* @TARGET_INT_BIT, align 4
  %9 = load i32, i32* @HOST_CHAR_BIT, align 4
  %10 = sdiv i32 %8, %9
  %11 = call i8* @init_type(i32 %7, i32 %10, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i8* %11, i8** @msym_data_symbol_type, align 8
  %12 = load i32, i32* @TYPE_CODE_INT, align 4
  %13 = call i8* @init_type(i32 %12, i32 1, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i8* %13, i8** @msym_unknown_symbol_type, align 8
  ret void
}

declare dso_local i8* @init_type(i32, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
