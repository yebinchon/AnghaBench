; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macrocmd.c_macro_expand_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macrocmd.c_macro_expand_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macro_scope = type opaque
%struct.cleanup = type { i32 }

@free_current_contents = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"You must follow the `macro expand' command with the expression you\0Awant to expand.\00", align 1
@standard_macro_lookup = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"expands to: \00", align 1
@gdb_stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"GDB has no preprocessor macro information for that code.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @macro_expand_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macro_expand_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.macro_scope*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cleanup*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.macro_scope* null, %struct.macro_scope** %5, align 8
  store i8* null, i8** %6, align 8
  %8 = load i32, i32* @free_current_contents, align 4
  %9 = bitcast %struct.macro_scope** %5 to i8**
  %10 = call %struct.cleanup* @make_cleanup(i32 %8, i8** %9)
  store %struct.cleanup* %10, %struct.cleanup** %7, align 8
  %11 = load i32, i32* @free_current_contents, align 4
  %12 = call %struct.cleanup* @make_cleanup(i32 %11, i8** %6)
  %13 = load i8*, i8** %3, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i8*, i8** %3, align 8
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15, %2
  %20 = call i32 @error(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %15
  %22 = call i8* (...) @default_macro_scope()
  %23 = bitcast i8* %22 to %struct.macro_scope*
  store %struct.macro_scope* %23, %struct.macro_scope** %5, align 8
  %24 = load %struct.macro_scope*, %struct.macro_scope** %5, align 8
  %25 = icmp ne %struct.macro_scope* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load i8*, i8** %3, align 8
  %28 = load i32, i32* @standard_macro_lookup, align 4
  %29 = load %struct.macro_scope*, %struct.macro_scope** %5, align 8
  %30 = bitcast %struct.macro_scope* %29 to i8*
  %31 = call i8* @macro_expand(i8* %27, i32 %28, i8* %30)
  store i8* %31, i8** %6, align 8
  %32 = load i32, i32* @gdb_stdout, align 4
  %33 = call i32 @fputs_filtered(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* @gdb_stdout, align 4
  %36 = call i32 @fputs_filtered(i8* %34, i32 %35)
  %37 = load i32, i32* @gdb_stdout, align 4
  %38 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  br label %42

39:                                               ; preds = %21
  %40 = load i32, i32* @gdb_stdout, align 4
  %41 = call i32 @fputs_filtered(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %26
  %43 = load %struct.cleanup*, %struct.cleanup** %7, align 8
  %44 = call i32 @do_cleanups(%struct.cleanup* %43)
  ret void
}

declare dso_local %struct.cleanup* @make_cleanup(i32, i8**) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i8* @default_macro_scope(...) #1

declare dso_local i8* @macro_expand(i8*, i32, i8*) #1

declare dso_local i32 @fputs_filtered(i8*, i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
