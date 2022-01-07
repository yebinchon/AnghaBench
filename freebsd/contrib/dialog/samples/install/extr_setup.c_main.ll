; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/samples/install/extr_setup.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/samples/install/extr_setup.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Display a help text\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Start an installation\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Exit to the shell\00", align 1
@progname = common dso_local global i8* null, align 8
@num_linux = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [94 x i8] c"\0A\0APlease start \22fdisk\22 or \22cfdisk\22 and create a\0Anative Linux-partition to install Linux on.\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Linux Install Utility\00", align 1
@.str.8 = private unnamed_addr constant [148 x i8] c"\\nCopyright (C) 1995 Florian La Roche\\n\\nPre-Alpha version, be careful, read the doc!!!\\nemail: florian@jurix.jura.uni-sb.de, flla@stud.uni-sb.de\\n\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"Help Text\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"setup.help\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"\0AExecute \22reboot\22 to restart your computer...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [6 x i8*], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = bitcast [6 x i8*]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 48, i1 false)
  %10 = bitcast i8* %9 to [6 x i8*]*
  %11 = getelementptr inbounds [6 x i8*], [6 x i8*]* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8** %11, align 16
  %12 = getelementptr inbounds [6 x i8*], [6 x i8*]* %10, i32 0, i32 1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i8** %12, align 8
  %13 = getelementptr inbounds [6 x i8*], [6 x i8*]* %10, i32 0, i32 2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8** %13, align 16
  %14 = getelementptr inbounds [6 x i8*], [6 x i8*]* %10, i32 0, i32 3
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i8** %14, align 8
  %15 = getelementptr inbounds [6 x i8*], [6 x i8*]* %10, i32 0, i32 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8** %15, align 16
  %16 = getelementptr inbounds [6 x i8*], [6 x i8*]* %10, i32 0, i32 5
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i8** %16, align 8
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** @progname, align 8
  %20 = call i32 (...) @read_partitions()
  %21 = load i64, i64* @num_linux, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = call i32 @printf(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.6, i64 0, i64 0))
  %25 = call i32 @exit(i32 1) #4
  unreachable

26:                                               ; preds = %2
  %27 = call i32 (...) @init_dialog()
  br label %28

28:                                               ; preds = %44, %26
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i64 0, i64 0
  %34 = call i32 @dialog_menu(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([148 x i8], [148 x i8]* @.str.8, i64 0, i64 0), i32 15, i32 64, i32 3, i32 3, i8** %33)
  store i32 %34, i32* %7, align 4
  %35 = call i32 (...) @dialog_clear()
  %36 = load i32, i32* %7, align 4
  switch i32 %36, label %44 [
    i32 0, label %37
    i32 1, label %40
    i32 2, label %42
    i32 -2, label %43
    i32 -1, label %43
  ]

37:                                               ; preds = %32
  %38 = call i32 @dialog_textbox(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 20, i32 70)
  store i32 %38, i32* %7, align 4
  %39 = call i32 (...) @dialog_clear()
  br label %44

40:                                               ; preds = %32
  %41 = call i32 (...) @main_install()
  br label %44

42:                                               ; preds = %32
  store i32 1, i32* %6, align 4
  br label %44

43:                                               ; preds = %32, %32
  store i32 1, i32* %6, align 4
  br label %44

44:                                               ; preds = %43, %32, %42, %40, %37
  br label %28

45:                                               ; preds = %28
  %46 = call i32 (...) @end_dialog()
  %47 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0))
  %48 = call i32 @exit(i32 0) #4
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @read_partitions(...) #2

declare dso_local i32 @printf(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @init_dialog(...) #2

declare dso_local i32 @dialog_menu(i8*, i8*, i32, i32, i32, i32, i8**) #2

declare dso_local i32 @dialog_clear(...) #2

declare dso_local i32 @dialog_textbox(i8*, i8*, i32, i32) #2

declare dso_local i32 @main_install(...) #2

declare dso_local i32 @end_dialog(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
