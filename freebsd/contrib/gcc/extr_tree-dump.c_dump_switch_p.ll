; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-dump.c_dump_switch_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-dump.c_dump_switch_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TDI_none = common dso_local global i32 0, align 4
@TDI_end = common dso_local global i64 0, align 8
@dump_files = common dso_local global i32* null, align 8
@extra_dump_files_in_use = common dso_local global i64 0, align 8
@extra_dump_files = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dump_switch_p(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @TDI_none, align 4
  %6 = add nsw i32 %5, 1
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %3, align 8
  br label %8

8:                                                ; preds = %20, %1
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @TDI_end, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = load i8*, i8** %2, align 8
  %14 = load i32*, i32** @dump_files, align 8
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = call i32 @dump_switch_p_1(i8* %13, i32* %16, i32 0)
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %12
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %3, align 8
  br label %8

23:                                               ; preds = %8
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %46, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @TDI_none, align 4
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %3, align 8
  br label %30

30:                                               ; preds = %42, %26
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @TDI_end, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load i8*, i8** %2, align 8
  %36 = load i32*, i32** @dump_files, align 8
  %37 = load i64, i64* %3, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = call i32 @dump_switch_p_1(i8* %35, i32* %38, i32 1)
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %34
  %43 = load i64, i64* %3, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %3, align 8
  br label %30

45:                                               ; preds = %30
  br label %46

46:                                               ; preds = %45, %23
  store i64 0, i64* %3, align 8
  br label %47

47:                                               ; preds = %59, %46
  %48 = load i64, i64* %3, align 8
  %49 = load i64, i64* @extra_dump_files_in_use, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load i8*, i8** %2, align 8
  %53 = load i32*, i32** @extra_dump_files, align 8
  %54 = load i64, i64* %3, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = call i32 @dump_switch_p_1(i8* %52, i32* %55, i32 0)
  %57 = load i32, i32* %4, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %51
  %60 = load i64, i64* %3, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %3, align 8
  br label %47

62:                                               ; preds = %47
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %82, label %65

65:                                               ; preds = %62
  store i64 0, i64* %3, align 8
  br label %66

66:                                               ; preds = %78, %65
  %67 = load i64, i64* %3, align 8
  %68 = load i64, i64* @extra_dump_files_in_use, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %66
  %71 = load i8*, i8** %2, align 8
  %72 = load i32*, i32** @extra_dump_files, align 8
  %73 = load i64, i64* %3, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = call i32 @dump_switch_p_1(i8* %71, i32* %74, i32 1)
  %76 = load i32, i32* %4, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %70
  %79 = load i64, i64* %3, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %3, align 8
  br label %66

81:                                               ; preds = %66
  br label %82

82:                                               ; preds = %81, %62
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @dump_switch_p_1(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
