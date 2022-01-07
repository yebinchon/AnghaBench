; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-dump.c_scan_filename_with_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-dump.c_scan_filename_with_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"Missing filename.\00", align 1
@xfree = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c" \09\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @scan_filename_with_cleanup(i8** %0, i8* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8**, i8*** %3, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 @error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %11
  %17 = load i8*, i8** %4, align 8
  %18 = call i8* @xstrdup(i8* %17)
  store i8* %18, i8** %5, align 8
  %19 = load i32, i32* @xfree, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @make_cleanup(i32 %19, i8* %20)
  br label %50

22:                                               ; preds = %2
  %23 = load i8**, i8*** %3, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @skip_spaces(i8* %24)
  %26 = load i8**, i8*** %3, align 8
  store i8* %25, i8** %26, align 8
  %27 = load i8**, i8*** %3, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = load i8**, i8*** %3, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @strcspn(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %28, i64 %32
  store i8* %33, i8** %7, align 8
  %34 = load i8**, i8*** %3, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i8**, i8*** %3, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = ptrtoint i8* %36 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = trunc i64 %41 to i32
  %43 = call i8* @savestring(i8* %35, i32 %42)
  store i8* %43, i8** %5, align 8
  %44 = load i32, i32* @xfree, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @make_cleanup(i32 %44, i8* %45)
  %47 = load i8*, i8** %7, align 8
  %48 = call i8* @skip_spaces(i8* %47)
  %49 = load i8**, i8*** %3, align 8
  store i8* %48, i8** %49, align 8
  br label %50

50:                                               ; preds = %22, %16
  %51 = load i8*, i8** %5, align 8
  %52 = icmp ne i8* %51, null
  %53 = zext i1 %52 to i32
  %54 = call i32 @gdb_assert(i32 %53)
  %55 = load i8*, i8** %5, align 8
  %56 = call i8* @tilde_expand(i8* %55)
  store i8* %56, i8** %6, align 8
  %57 = load i32, i32* @xfree, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @make_cleanup(i32 %57, i8* %58)
  %60 = load i8*, i8** %6, align 8
  ret i8* %60
}

declare dso_local i32 @error(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @make_cleanup(i32, i8*) #1

declare dso_local i8* @skip_spaces(i8*) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i8* @savestring(i8*, i32) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i8* @tilde_expand(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
