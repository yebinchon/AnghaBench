; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_init_mangle.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_init_mangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@name_obstack = common dso_local global i32 0, align 4
@name_base = common dso_local global i32 0, align 4
@G = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [10 x i8] c"allocator\00", align 1
@subst_identifiers = common dso_local global i32* null, align 8
@SUBID_ALLOCATOR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"basic_string\00", align 1
@SUBID_BASIC_STRING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"char_traits\00", align 1
@SUBID_CHAR_TRAITS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"basic_istream\00", align 1
@SUBID_BASIC_ISTREAM = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"basic_ostream\00", align 1
@SUBID_BASIC_OSTREAM = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"basic_iostream\00", align 1
@SUBID_BASIC_IOSTREAM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_mangle() #0 {
  %1 = call i32 @gcc_obstack_init(i32* @name_obstack)
  %2 = call i32 @obstack_alloc(i32* @name_obstack, i32 0)
  store i32 %2, i32* @name_base, align 4
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G, i32 0, i32 0), align 8
  %3 = call i32 @get_identifier(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %4 = load i32*, i32** @subst_identifiers, align 8
  %5 = load i64, i64* @SUBID_ALLOCATOR, align 8
  %6 = getelementptr inbounds i32, i32* %4, i64 %5
  store i32 %3, i32* %6, align 4
  %7 = call i32 @get_identifier(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32*, i32** @subst_identifiers, align 8
  %9 = load i64, i64* @SUBID_BASIC_STRING, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  store i32 %7, i32* %10, align 4
  %11 = call i32 @get_identifier(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %12 = load i32*, i32** @subst_identifiers, align 8
  %13 = load i64, i64* @SUBID_CHAR_TRAITS, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  store i32 %11, i32* %14, align 4
  %15 = call i32 @get_identifier(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %16 = load i32*, i32** @subst_identifiers, align 8
  %17 = load i64, i64* @SUBID_BASIC_ISTREAM, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  store i32 %15, i32* %18, align 4
  %19 = call i32 @get_identifier(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %20 = load i32*, i32** @subst_identifiers, align 8
  %21 = load i64, i64* @SUBID_BASIC_OSTREAM, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32 %19, i32* %22, align 4
  %23 = call i32 @get_identifier(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %24 = load i32*, i32** @subst_identifiers, align 8
  %25 = load i64, i64* @SUBID_BASIC_IOSTREAM, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32 %23, i32* %26, align 4
  ret void
}

declare dso_local i32 @gcc_obstack_init(i32*) #1

declare dso_local i32 @obstack_alloc(i32*, i32) #1

declare dso_local i32 @get_identifier(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
