; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcov.c_print_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcov.c_print_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"gcov (GCC) %s\0A\00", align 1
@version_string = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"Copyright %s 2006 Free Software Foundation, Inc.\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [153 x i8] c"This is free software; see the source for copying conditions.\0AThere is NO warranty; not even for MERCHANTABILITY or \0AFITNESS FOR A PARTICULAR PURPOSE.\0A\0A\00", align 1
@SUCCESS_EXIT_CODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_version() #0 {
  %1 = load i32, i32* @stdout, align 4
  %2 = load i8*, i8** @version_string, align 8
  %3 = call i32 @fnotice(i32 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %2)
  %4 = load i32, i32* @stdout, align 4
  %5 = call i8* @_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %6 = call i32 @fprintf(i32 %4, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %5)
  %7 = load i32, i32* @stdout, align 4
  %8 = call i8* @_(i8* getelementptr inbounds ([153 x i8], [153 x i8]* @.str.4, i64 0, i64 0))
  %9 = call i32 @fnotice(i32 %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %8)
  %10 = load i32, i32* @SUCCESS_EXIT_CODE, align 4
  %11 = call i32 @exit(i32 %10) #3
  unreachable
}

declare dso_local i32 @fnotice(i32, i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
