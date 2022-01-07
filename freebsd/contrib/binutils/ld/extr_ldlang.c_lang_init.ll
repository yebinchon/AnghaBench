; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@stat_obstack = common dso_local global i32 0, align 4
@statement_list = common dso_local global i32 0, align 4
@stat_ptr = common dso_local global i32* null, align 8
@input_file_chain = common dso_local global i32 0, align 4
@lang_output_section_statement = common dso_local global i32 0, align 4
@file_chain = common dso_local global i32 0, align 4
@lang_input_file_is_marker_enum = common dso_local global i32 0, align 4
@first_file = common dso_local global i32 0, align 4
@BFD_ABS_SECTION_NAME = common dso_local global i32 0, align 4
@abs_output_section = common dso_local global %struct.TYPE_3__* null, align 8
@bfd_abs_section_ptr = common dso_local global i32 0, align 4
@lang_definedness_table = common dso_local global i32 0, align 4
@lang_definedness_newfunc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%P%F: can not create hash table: %E\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lang_init() #0 {
  %1 = call i32 @obstack_begin(i32* @stat_obstack, i32 1000)
  store i32* @statement_list, i32** @stat_ptr, align 8
  %2 = call i32 (...) @output_section_statement_table_init()
  %3 = load i32*, i32** @stat_ptr, align 8
  %4 = call i32 @lang_list_init(i32* %3)
  %5 = call i32 @lang_list_init(i32* @input_file_chain)
  %6 = call i32 @lang_list_init(i32* @lang_output_section_statement)
  %7 = call i32 @lang_list_init(i32* @file_chain)
  %8 = load i32, i32* @lang_input_file_is_marker_enum, align 4
  %9 = call i32 @lang_add_input_file(i32* null, i32 %8, i32* null)
  store i32 %9, i32* @first_file, align 4
  %10 = load i32, i32* @BFD_ABS_SECTION_NAME, align 4
  %11 = call %struct.TYPE_3__* @lang_output_section_statement_lookup(i32 %10)
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** @abs_output_section, align 8
  %12 = load i32, i32* @bfd_abs_section_ptr, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @abs_output_section, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @lang_definedness_newfunc, align 4
  %16 = call i32 @bfd_hash_table_init_n(i32* @lang_definedness_table, i32 %15, i32 4, i32 3)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %0
  %19 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @einfo(i32 %19)
  br label %21

21:                                               ; preds = %18, %0
  ret void
}

declare dso_local i32 @obstack_begin(i32*, i32) #1

declare dso_local i32 @output_section_statement_table_init(...) #1

declare dso_local i32 @lang_list_init(i32*) #1

declare dso_local i32 @lang_add_input_file(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_3__* @lang_output_section_statement_lookup(i32) #1

declare dso_local i32 @bfd_hash_table_init_n(i32*, i32, i32, i32) #1

declare dso_local i32 @einfo(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
