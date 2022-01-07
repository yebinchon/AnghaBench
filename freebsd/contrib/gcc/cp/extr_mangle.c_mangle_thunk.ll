; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_mangle_thunk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_mangle_thunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"_Z\00", align 1
@integer_zero_node = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@DEBUG_MANGLE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"mangle_thunk = %s\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mangle_thunk(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @start_mangling(i32 %10, i32 1)
  %12 = call i32 @write_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @write_char(i8 signext 84)
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %4
  %17 = call i32 @write_char(i8 signext 99)
  %18 = load i32, i32* @integer_zero_node, align 4
  %19 = load i32, i32* @NULL_TREE, align 4
  %20 = call i32 @mangle_call_offset(i32 %18, i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @mangle_call_offset(i32 %21, i32 %22)
  br label %54

24:                                               ; preds = %4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @DECL_THUNK_P(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @mangle_call_offset(i32 %29, i32 %30)
  br label %53

32:                                               ; preds = %24
  %33 = call i32 @write_char(i8 signext 99)
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @mangle_call_offset(i32 %34, i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @THUNK_FIXED_OFFSET(i32 %37)
  %39 = call i32 @ssize_int(i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @THUNK_VIRTUAL_OFFSET(i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %32
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @BINFO_VPTR_FIELD(i32 %45)
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %44, %32
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @mangle_call_offset(i32 %48, i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @THUNK_TARGET(i32 %51)
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %47, %28
  br label %54

54:                                               ; preds = %53, %16
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @write_encoding(i32 %55)
  %57 = call i8* @finish_mangling(i32 0)
  store i8* %57, i8** %9, align 8
  %58 = load i64, i64* @DEBUG_MANGLE, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i32, i32* @stderr, align 4
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @fprintf(i32 %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %60, %54
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 @get_identifier_nocopy(i8* %65)
  ret i32 %66
}

declare dso_local i32 @start_mangling(i32, i32) #1

declare dso_local i32 @write_string(i8*) #1

declare dso_local i32 @write_char(i8 signext) #1

declare dso_local i32 @mangle_call_offset(i32, i32) #1

declare dso_local i32 @DECL_THUNK_P(i32) #1

declare dso_local i32 @ssize_int(i32) #1

declare dso_local i32 @THUNK_FIXED_OFFSET(i32) #1

declare dso_local i32 @THUNK_VIRTUAL_OFFSET(i32) #1

declare dso_local i32 @BINFO_VPTR_FIELD(i32) #1

declare dso_local i32 @THUNK_TARGET(i32) #1

declare dso_local i32 @write_encoding(i32) #1

declare dso_local i8* @finish_mangling(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @get_identifier_nocopy(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
