; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_exec.c_exec_file_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_exec.c_exec_file_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"No executable file name was specified\00", align 1
@xfree = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @exec_file_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exec_file_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @target_preopen(i32 %7)
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %53

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = call i8** @buildargv(i8* %12)
  store i8** %13, i8*** %5, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = icmp eq i8** %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = call i32 @nomem(i32 0)
  br label %18

18:                                               ; preds = %16, %11
  %19 = load i8**, i8*** %5, align 8
  %20 = call i32 @make_cleanup_freeargv(i8** %19)
  br label %21

21:                                               ; preds = %34, %18
  %22 = load i8**, i8*** %5, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i8**, i8*** %5, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 45
  br label %31

31:                                               ; preds = %25, %21
  %32 = phi i1 [ false, %21 ], [ %30, %25 ]
  br i1 %32, label %33, label %37

33:                                               ; preds = %31
  br label %34

34:                                               ; preds = %33
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i32 1
  store i8** %36, i8*** %5, align 8
  br label %21

37:                                               ; preds = %31
  %38 = load i8**, i8*** %5, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i8**, i8*** %5, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = call i8* @tilde_expand(i8* %45)
  store i8* %46, i8** %6, align 8
  %47 = load i32, i32* @xfree, align 4
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @make_cleanup(i32 %47, i8* %48)
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @exec_file_attach(i8* %50, i32 %51)
  br label %56

53:                                               ; preds = %2
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @exec_file_attach(i8* null, i32 %54)
  br label %56

56:                                               ; preds = %53, %43
  ret void
}

declare dso_local i32 @target_preopen(i32) #1

declare dso_local i8** @buildargv(i8*) #1

declare dso_local i32 @nomem(i32) #1

declare dso_local i32 @make_cleanup_freeargv(i8**) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i8* @tilde_expand(i8*) #1

declare dso_local i32 @make_cleanup(i32, i8*) #1

declare dso_local i32 @exec_file_attach(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
