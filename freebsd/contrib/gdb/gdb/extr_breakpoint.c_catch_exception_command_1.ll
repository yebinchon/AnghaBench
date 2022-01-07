; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_catch_exception_command_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_catch_exception_command_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab_and_line = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Junk at end of arguments.\00", align 1
@EX_EVENT_THROW = common dso_local global i32 0, align 4
@EX_EVENT_CATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Unsupported or unknown exception event; cannot catch it\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Unsupported with this platform/compiler combination.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32, i32)* @catch_exception_command_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @catch_exception_command_1(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.symtab_and_line*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i8* null, i8** %9, align 8
  store %struct.symtab_and_line* null, %struct.symtab_and_line** %10, align 8
  %11 = call i32 @ep_skip_leading_whitespace(i8** %6)
  %12 = call i8* @ep_parse_optional_if_clause(i8** %6)
  store i8* %12, i8** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %4
  %18 = load i8*, i8** %6, align 8
  %19 = load i8, i8* %18, align 1
  %20 = call i32 @isspace(i8 signext %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = call i32 @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %17, %4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @EX_EVENT_THROW, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @EX_EVENT_CATCH, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 @error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %28, %24
  %35 = load i32, i32* %7, align 4
  %36 = load i8*, i8** %9, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i64 @handle_gnu_v3_exceptions(i32 %35, i8* %36, i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %60

42:                                               ; preds = %34
  %43 = load i32, i32* %5, align 4
  %44 = call %struct.symtab_and_line* @target_enable_exception_callback(i32 %43, i32 1)
  store %struct.symtab_and_line* %44, %struct.symtab_and_line** %10, align 8
  %45 = load %struct.symtab_and_line*, %struct.symtab_and_line** %10, align 8
  %46 = icmp ne %struct.symtab_and_line* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = load %struct.symtab_and_line*, %struct.symtab_and_line** %10, align 8
  %49 = icmp ne %struct.symtab_and_line* %48, inttoptr (i64 -1 to %struct.symtab_and_line*)
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.symtab_and_line*, %struct.symtab_and_line** %10, align 8
  %55 = call i32 @create_exception_catchpoint(i32 %51, i8* %52, i32 %53, %struct.symtab_and_line* %54)
  br label %57

56:                                               ; preds = %47
  br label %60

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %42
  %59 = call i32 @warning(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %56, %41
  ret void
}

declare dso_local i32 @ep_skip_leading_whitespace(i8**) #1

declare dso_local i8* @ep_parse_optional_if_clause(i8**) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @handle_gnu_v3_exceptions(i32, i8*, i32, i32) #1

declare dso_local %struct.symtab_and_line* @target_enable_exception_callback(i32, i32) #1

declare dso_local i32 @create_exception_catchpoint(i32, i8*, i32, %struct.symtab_and_line*) #1

declare dso_local i32 @warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
