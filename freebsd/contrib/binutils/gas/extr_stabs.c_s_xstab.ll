; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_stabs.c_s_xstab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_stabs.c_s_xstab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_xstab.saved_secname = internal global i8* null, align 8
@s_xstab.saved_strsecname = internal global i8* null, align 8
@input_line_pointer = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"comma missing in .xstabs\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"str\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s_xstab(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %6 = call i8* @demand_copy_C_string(i32* %3)
  store i8* %6, i8** %4, align 8
  %7 = call i32 (...) @SKIP_WHITESPACE()
  %8 = load i8*, i8** @input_line_pointer, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 44
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i8*, i8** @input_line_pointer, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** @input_line_pointer, align 8
  br label %19

15:                                               ; preds = %1
  %16 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @as_bad(i32 %16)
  %18 = call i32 (...) @ignore_rest_of_line()
  br label %53

19:                                               ; preds = %12
  %20 = load i8*, i8** @s_xstab.saved_secname, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = load i8*, i8** @s_xstab.saved_secname, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i64 @strcmp(i8* %23, i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %22, %19
  %28 = load i8*, i8** %4, align 8
  %29 = call i64 @strlen(i8* %28)
  %30 = add nsw i64 %29, 4
  %31 = call i64 @xmalloc(i64 %30)
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %5, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @strcpy(i8* %33, i8* %34)
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @strcat(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i8*, i8** @s_xstab.saved_secname, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %27
  %41 = load i8*, i8** @s_xstab.saved_secname, align 8
  %42 = call i32 @free(i8* %41)
  %43 = load i8*, i8** @s_xstab.saved_strsecname, align 8
  %44 = call i32 @free(i8* %43)
  br label %45

45:                                               ; preds = %40, %27
  %46 = load i8*, i8** %4, align 8
  store i8* %46, i8** @s_xstab.saved_secname, align 8
  %47 = load i8*, i8** %5, align 8
  store i8* %47, i8** @s_xstab.saved_strsecname, align 8
  br label %48

48:                                               ; preds = %45, %22
  %49 = load i32, i32* %2, align 4
  %50 = load i8*, i8** @s_xstab.saved_secname, align 8
  %51 = load i8*, i8** @s_xstab.saved_strsecname, align 8
  %52 = call i32 @s_stab_generic(i32 %49, i8* %50, i8* %51)
  br label %53

53:                                               ; preds = %48, %15
  ret void
}

declare dso_local i8* @demand_copy_C_string(i32*) #1

declare dso_local i32 @SKIP_WHITESPACE(...) #1

declare dso_local i32 @as_bad(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @ignore_rest_of_line(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @xmalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @s_stab_generic(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
