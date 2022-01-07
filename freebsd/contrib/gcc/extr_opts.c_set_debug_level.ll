; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_opts.c_set_debug_level.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_opts.c_set_debug_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@set_debug_level.type_explicit = internal global i32 0, align 4
@use_gnu_debug_info_extensions = common dso_local global i32 0, align 4
@NO_DEBUG = common dso_local global i32 0, align 4
@write_symbols = common dso_local global i32 0, align 4
@PREFERRED_DEBUGGING_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"target system does not support debug output\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"debug format \22%s\22 conflicts with prior selection\00", align 1
@debug_type_names = common dso_local global i8** null, align 8
@debug_info_level = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"unrecognised debug output level \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"debug output level %s is too high\00", align 1
@DBX_DEBUG = common dso_local global i32 0, align 4
@DWARF2_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @set_debug_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_debug_level(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* %5, align 4
  store i32 %7, i32* @use_gnu_debug_info_extensions, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @NO_DEBUG, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %3
  %12 = load i32, i32* @write_symbols, align 4
  %13 = load i32, i32* @NO_DEBUG, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = load i32, i32* @PREFERRED_DEBUGGING_TYPE, align 4
  store i32 %16, i32* @write_symbols, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %19, %15
  %21 = load i32, i32* @write_symbols, align 4
  %22 = load i32, i32* @NO_DEBUG, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 @warning(i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %20
  br label %27

27:                                               ; preds = %26, %11
  br label %48

28:                                               ; preds = %3
  %29 = load i32, i32* @set_debug_level.type_explicit, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = load i32, i32* @write_symbols, align 4
  %33 = load i32, i32* @NO_DEBUG, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @write_symbols, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load i8**, i8*** @debug_type_names, align 8
  %41 = load i32, i32* %4, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %39, %35, %31, %28
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* @write_symbols, align 4
  store i32 1, i32* @set_debug_level.type_explicit, align 4
  br label %48

48:                                               ; preds = %46, %27
  %49 = load i8*, i8** %6, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i32, i32* @debug_info_level, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  store i32 2, i32* @debug_info_level, align 4
  br label %57

57:                                               ; preds = %56, %53
  br label %74

58:                                               ; preds = %48
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @integral_argument(i8* %59)
  store i32 %60, i32* @debug_info_level, align 4
  %61 = load i32, i32* @debug_info_level, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %64)
  br label %73

66:                                               ; preds = %58
  %67 = load i32, i32* @debug_info_level, align 4
  %68 = icmp ugt i32 %67, 3
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %69, %66
  br label %73

73:                                               ; preds = %72, %63
  br label %74

74:                                               ; preds = %73, %57
  ret void
}

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @integral_argument(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
