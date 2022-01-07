; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_lex.c_init_cp_pragma.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_lex.c_init_cp_pragma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"vtable\00", align 1
@handle_pragma_vtable = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"unit\00", align 1
@handle_pragma_unit = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"interface\00", align 1
@handle_pragma_interface = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"implementation\00", align 1
@handle_pragma_implementation = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"GCC\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"java_exceptions\00", align 1
@handle_pragma_java_exceptions = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_cp_pragma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_cp_pragma() #0 {
  %1 = load i32, i32* @handle_pragma_vtable, align 4
  %2 = call i32 @c_register_pragma(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %1)
  %3 = load i32, i32* @handle_pragma_unit, align 4
  %4 = call i32 @c_register_pragma(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %3)
  %5 = load i32, i32* @handle_pragma_interface, align 4
  %6 = call i32 @c_register_pragma(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* @handle_pragma_implementation, align 4
  %8 = call i32 @c_register_pragma(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @handle_pragma_interface, align 4
  %10 = call i32 @c_register_pragma(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @handle_pragma_implementation, align 4
  %12 = call i32 @c_register_pragma(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @handle_pragma_java_exceptions, align 4
  %14 = call i32 @c_register_pragma(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %13)
  ret void
}

declare dso_local i32 @c_register_pragma(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
