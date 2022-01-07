; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldmain.c_set_scripts_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldmain.c_set_scripts_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@program_name = common dso_local global i8* null, align 8
@BINDIR = common dso_local global i32 0, align 4
@SCRIPTDIR = common dso_local global i8* null, align 8
@TOOLBINDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"/../lib\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_scripts_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_scripts_dir() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i8*, i8** @program_name, align 8
  %6 = load i32, i32* @BINDIR, align 4
  %7 = load i8*, i8** @SCRIPTDIR, align 8
  %8 = call i8* @make_relative_prefix(i8* %5, i32 %6, i8* %7)
  store i8* %8, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %0
  %12 = load i8*, i8** %2, align 8
  %13 = call i64 @check_for_scripts_dir(i8* %12)
  store i64 %13, i64* %4, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @free(i8* %14)
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %78

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %19, %0
  %21 = load i8*, i8** @program_name, align 8
  %22 = load i32, i32* @TOOLBINDIR, align 4
  %23 = load i8*, i8** @SCRIPTDIR, align 8
  %24 = call i8* @make_relative_prefix(i8* %21, i32 %22, i8* %23)
  store i8* %24, i8** %2, align 8
  %25 = load i8*, i8** %2, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load i8*, i8** %2, align 8
  %29 = call i64 @check_for_scripts_dir(i8* %28)
  store i64 %29, i64* %4, align 8
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 @free(i8* %30)
  %32 = load i64, i64* %4, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %78

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %20
  %37 = load i8*, i8** @SCRIPTDIR, align 8
  %38 = call i64 @check_for_scripts_dir(i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %78

41:                                               ; preds = %36
  %42 = load i8*, i8** @program_name, align 8
  %43 = call i8* @strrchr(i8* %42, i8 signext 47)
  store i8* %43, i8** %1, align 8
  %44 = load i8*, i8** %1, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %78

47:                                               ; preds = %41
  %48 = load i8*, i8** %1, align 8
  %49 = load i8*, i8** @program_name, align 8
  %50 = ptrtoint i8* %48 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  store i64 %52, i64* %3, align 8
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 8
  %55 = call i8* @xmalloc(i64 %54)
  store i8* %55, i8** %2, align 8
  %56 = load i8*, i8** %2, align 8
  %57 = load i8*, i8** @program_name, align 8
  %58 = load i64, i64* %3, align 8
  %59 = call i32 @strncpy(i8* %56, i8* %57, i64 %58)
  %60 = load i8*, i8** %2, align 8
  %61 = load i64, i64* %3, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8 0, i8* %62, align 1
  %63 = load i8*, i8** %2, align 8
  %64 = call i64 @check_for_scripts_dir(i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %47
  %67 = load i8*, i8** %2, align 8
  %68 = call i32 @free(i8* %67)
  br label %78

69:                                               ; preds = %47
  %70 = load i8*, i8** %2, align 8
  %71 = load i64, i64* %3, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = call i32 @strcpy(i8* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %74 = load i8*, i8** %2, align 8
  %75 = call i64 @check_for_scripts_dir(i8* %74)
  %76 = load i8*, i8** %2, align 8
  %77 = call i32 @free(i8* %76)
  br label %78

78:                                               ; preds = %69, %66, %46, %40, %34, %18
  ret void
}

declare dso_local i8* @make_relative_prefix(i8*, i32, i8*) #1

declare dso_local i64 @check_for_scripts_dir(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
