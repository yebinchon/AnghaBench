; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_gconf.c_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_gconf.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PACKAGE = common dso_local global i32 0, align 4
@LOCALEDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@SRCTREE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"/scripts/kconfig/gconf.glade\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c".glade\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"%s <config>\0A\00", align 1
@rootmenu = common dso_local global i32 0, align 4
@view_mode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call i32 (...) @kconfig_load()
  %10 = load i32, i32* @PACKAGE, align 4
  %11 = load i32, i32* @LOCALEDIR, align 4
  %12 = call i32 @bindtextdomain(i32 %10, i32 %11)
  %13 = load i32, i32* @PACKAGE, align 4
  %14 = call i32 @bind_textdomain_codeset(i32 %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @PACKAGE, align 4
  %16 = call i32 @textdomain(i32 %15)
  %17 = call i32 (...) @gtk_set_locale()
  %18 = call i32 @gtk_init(i32* %4, i8*** %5)
  %19 = call i32 (...) @glade_init()
  %20 = load i32, i32* @SRCTREE, align 4
  %21 = call i8* @getenv(i32 %20)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i8*, i8** %7, align 8
  %26 = call i32* (i8*, i8*, i8*, ...) @g_strconcat(i8* %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* null)
  store i32* %26, i32** %8, align 8
  br label %49

27:                                               ; preds = %2
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 47
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32* (i8*, i8*, i8*, ...) @g_strconcat(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* null)
  store i32* %39, i32** %8, align 8
  br label %48

40:                                               ; preds = %27
  %41 = call i32 (...) @g_get_current_dir()
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32* (i8*, i8*, i8*, ...) @g_strconcat(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* null)
  store i32* %47, i32** %8, align 8
  br label %48

48:                                               ; preds = %40, %35
  br label %49

49:                                               ; preds = %48, %24
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @init_main_window(i32* %50)
  %52 = call i32 (...) @init_tree_model()
  %53 = call i32 (...) @init_left_tree()
  %54 = call i32 (...) @init_right_tree()
  %55 = load i32, i32* %4, align 4
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %83

57:                                               ; preds = %49
  %58 = load i8**, i8*** %5, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 1
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 45
  br i1 %64, label %65, label %83

65:                                               ; preds = %57
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 1
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  switch i32 %71, label %79 [
    i32 97, label %72
    i32 104, label %73
    i32 63, label %73
  ]

72:                                               ; preds = %65
  br label %79

73:                                               ; preds = %65, %65
  %74 = load i8**, i8*** %5, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %76)
  %78 = call i32 @exit(i32 0) #3
  unreachable

79:                                               ; preds = %65, %72
  %80 = load i8**, i8*** %5, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 2
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %6, align 8
  br label %87

83:                                               ; preds = %57, %49
  %84 = load i8**, i8*** %5, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 1
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** %6, align 8
  br label %87

87:                                               ; preds = %83, %79
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 @conf_parse(i8* %88)
  %90 = call i32 @fixup_rootmenu(i32* @rootmenu)
  %91 = call i32 @conf_read(i32* null)
  %92 = load i32, i32* @view_mode, align 4
  switch i32 %92, label %99 [
    i32 129, label %93
    i32 128, label %95
    i32 130, label %97
  ]

93:                                               ; preds = %87
  %94 = call i32 (...) @display_tree_part()
  br label %99

95:                                               ; preds = %87
  %96 = call i32 (...) @display_list()
  br label %99

97:                                               ; preds = %87
  %98 = call i32 @display_tree(i32* @rootmenu)
  br label %99

99:                                               ; preds = %87, %97, %95, %93
  %100 = call i32 (...) @gtk_main()
  ret i32 0
}

declare dso_local i32 @kconfig_load(...) #1

declare dso_local i32 @bindtextdomain(i32, i32) #1

declare dso_local i32 @bind_textdomain_codeset(i32, i8*) #1

declare dso_local i32 @textdomain(i32) #1

declare dso_local i32 @gtk_set_locale(...) #1

declare dso_local i32 @gtk_init(i32*, i8***) #1

declare dso_local i32 @glade_init(...) #1

declare dso_local i8* @getenv(i32) #1

declare dso_local i32* @g_strconcat(i8*, i8*, i8*, ...) #1

declare dso_local i32 @g_get_current_dir(...) #1

declare dso_local i32 @init_main_window(i32*) #1

declare dso_local i32 @init_tree_model(...) #1

declare dso_local i32 @init_left_tree(...) #1

declare dso_local i32 @init_right_tree(...) #1

declare dso_local i32 @printf(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @conf_parse(i8*) #1

declare dso_local i32 @fixup_rootmenu(i32*) #1

declare dso_local i32 @conf_read(i32*) #1

declare dso_local i32 @display_tree_part(...) #1

declare dso_local i32 @display_list(...) #1

declare dso_local i32 @display_tree(i32*) #1

declare dso_local i32 @gtk_main(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
