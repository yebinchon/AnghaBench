; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_mconf.c_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_mconf.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PACKAGE = common dso_local global i32 0, align 4
@LOCALEDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"MENUCONFIG_MODE\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"single_menu\00", align 1
@single_menu_mode = common dso_local global i32 0, align 4
@stdscr = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Your display is too small to run Menuconfig!\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"It must be at least 19 lines by 80 columns.\0A\00", align 1
@rootmenu = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [75 x i8] c"Do you wish to save your new kernel configuration?\0A<ESC><ESC> to continue.\00", align 1
@KEY_ESC = common dso_local global i32 0, align 4
@filename = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [104 x i8] c"\0A\0AError during writing of the kernel configuration.\0AYour kernel configuration changes were NOT saved.\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [102 x i8] c"\0A\0A*** End of Linux kernel configuration.\0A*** Execute 'make' to build the kernel or try 'make help'.\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"\0A\0AYour kernel configuration changes were NOT saved.\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* @LC_ALL, align 4
  %11 = call i32 @setlocale(i32 %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @PACKAGE, align 4
  %13 = load i32, i32* @LOCALEDIR, align 4
  %14 = call i32 @bindtextdomain(i32 %12, i32 %13)
  %15 = load i32, i32* @PACKAGE, align 4
  %16 = call i32 @textdomain(i32 %15)
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @conf_parse(i8* %19)
  %21 = call i32 @conf_read(i32* null)
  %22 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store i32 1, i32* @single_menu_mode, align 4
  br label %30

30:                                               ; preds = %29, %25
  br label %31

31:                                               ; preds = %30, %2
  %32 = call i32 (...) @initscr()
  %33 = load i32, i32* @stdscr, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @getyx(i32 %33, i32 %34, i32 %35)
  %37 = call i64 @init_dialog(i32* null)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %31
  %40 = load i32, i32* @stderr, align 4
  %41 = call i8* @N_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %42 = call i32 @fprintf(i32 %40, i8* %41)
  %43 = load i32, i32* @stderr, align 4
  %44 = call i8* @N_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %45 = call i32 @fprintf(i32 %43, i8* %44)
  store i32 1, i32* %3, align 4
  br label %85

46:                                               ; preds = %31
  %47 = call i32 (...) @conf_get_configname()
  %48 = call i32 @set_config_filename(i32 %47)
  br label %49

49:                                               ; preds = %59, %46
  %50 = call i32 @conf(i32* @rootmenu)
  %51 = call i32 (...) @dialog_clear()
  %52 = call i64 (...) @conf_get_changed()
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = call i8* @_(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i64 0, i64 0))
  %56 = call i32 @dialog_yesno(i32* null, i8* %55, i32 6, i32 60)
  store i32 %56, i32* %9, align 4
  br label %58

57:                                               ; preds = %49
  store i32 -1, i32* %9, align 4
  br label %58

58:                                               ; preds = %57, %54
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @KEY_ESC, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %49, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @end_dialog(i32 %64, i32 %65)
  %67 = load i32, i32* %9, align 4
  switch i32 %67, label %80 [
    i32 0, label %68
    i32 -1, label %77
  ]

68:                                               ; preds = %63
  %69 = load i32, i32* @filename, align 4
  %70 = call i32 @conf_write(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i32, i32* @stderr, align 4
  %74 = call i8* @_(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.6, i64 0, i64 0))
  %75 = call i32 @fprintf(i32 %73, i8* %74)
  store i32 1, i32* %3, align 4
  br label %85

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %63, %76
  %78 = call i8* @_(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.7, i64 0, i64 0))
  %79 = call i32 @printf(i8* %78)
  br label %84

80:                                               ; preds = %63
  %81 = load i32, i32* @stderr, align 4
  %82 = call i8* @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0))
  %83 = call i32 @fprintf(i32 %81, i8* %82)
  br label %84

84:                                               ; preds = %80, %77
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %72, %39
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @bindtextdomain(i32, i32) #1

declare dso_local i32 @textdomain(i32) #1

declare dso_local i32 @conf_parse(i8*) #1

declare dso_local i32 @conf_read(i32*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @initscr(...) #1

declare dso_local i32 @getyx(i32, i32, i32) #1

declare dso_local i64 @init_dialog(i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i8* @N_(i8*) #1

declare dso_local i32 @set_config_filename(i32) #1

declare dso_local i32 @conf_get_configname(...) #1

declare dso_local i32 @conf(i32*) #1

declare dso_local i32 @dialog_clear(...) #1

declare dso_local i64 @conf_get_changed(...) #1

declare dso_local i32 @dialog_yesno(i32*, i8*, i32, i32) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @end_dialog(i32, i32) #1

declare dso_local i32 @conf_write(i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
