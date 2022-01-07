; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_obj-elf.c_obj_elf_section_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_obj-elf.c_obj_elf_section_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input_line_pointer = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"\0A\09,; \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"missing name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @obj_elf_section_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @obj_elf_section_name() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = call i32 (...) @SKIP_WHITESPACE()
  %6 = load i8*, i8** @input_line_pointer, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 34
  br i1 %9, label %10, label %17

10:                                               ; preds = %0
  %11 = call i8* @demand_copy_C_string(i32* %3)
  store i8* %11, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 (...) @ignore_rest_of_line()
  store i8* null, i8** %1, align 8
  br label %64

16:                                               ; preds = %10
  br label %61

17:                                               ; preds = %0
  %18 = load i8*, i8** @input_line_pointer, align 8
  store i8* %18, i8** %4, align 8
  br label %19

19:                                               ; preds = %24, %17
  %20 = load i8*, i8** %4, align 8
  %21 = load i8, i8* %20, align 1
  %22 = call i64 @strchr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8 signext %21)
  %23 = icmp eq i64 0, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %4, align 8
  br label %19

27:                                               ; preds = %19
  %28 = load i8*, i8** %4, align 8
  %29 = load i8*, i8** @input_line_pointer, align 8
  %30 = icmp eq i8* %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = call i32 @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 @as_bad(i32 %32)
  %34 = call i32 (...) @ignore_rest_of_line()
  store i8* null, i8** %1, align 8
  br label %64

35:                                               ; preds = %27
  %36 = load i8*, i8** %4, align 8
  %37 = load i8*, i8** @input_line_pointer, align 8
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = add nsw i64 %40, 1
  %42 = trunc i64 %41 to i32
  %43 = call i8* @xmalloc(i32 %42)
  store i8* %43, i8** %2, align 8
  %44 = load i8*, i8** %2, align 8
  %45 = load i8*, i8** @input_line_pointer, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = load i8*, i8** @input_line_pointer, align 8
  %48 = ptrtoint i8* %46 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = trunc i64 %50 to i32
  %52 = call i32 @memcpy(i8* %44, i8* %45, i32 %51)
  %53 = load i8*, i8** %2, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = load i8*, i8** @input_line_pointer, align 8
  %56 = ptrtoint i8* %54 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = getelementptr inbounds i8, i8* %53, i64 %58
  store i8 0, i8* %59, align 1
  %60 = load i8*, i8** %4, align 8
  store i8* %60, i8** @input_line_pointer, align 8
  br label %61

61:                                               ; preds = %35, %16
  %62 = call i32 (...) @SKIP_WHITESPACE()
  %63 = load i8*, i8** %2, align 8
  store i8* %63, i8** %1, align 8
  br label %64

64:                                               ; preds = %61, %31, %14
  %65 = load i8*, i8** %1, align 8
  ret i8* %65
}

declare dso_local i32 @SKIP_WHITESPACE(...) #1

declare dso_local i8* @demand_copy_C_string(i32*) #1

declare dso_local i32 @ignore_rest_of_line(...) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @as_bad(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
