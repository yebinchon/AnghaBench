; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_set_dll_name_from_def.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_set_dll_name_from_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [52 x i8] c"%s: Path components stripped from image name, '%s'.\00", align 1
@def_file = common dso_local global i32 0, align 4
@dll_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @set_dll_name_from_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_dll_name_from_def(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i8* @lbasename(i8* %4)
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = icmp ne i8* %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @def_file, align 4
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @non_fatal(i32 %10, i32 %11, i8* %12)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @xstrdup(i8* %15)
  store i32 %16, i32* @dll_name, align 4
  ret void
}

declare dso_local i8* @lbasename(i8*) #1

declare dso_local i32 @non_fatal(i32, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
