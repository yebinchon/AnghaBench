; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bzip2/extr_bzip2.c_copyFileName.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bzip2/extr_bzip2.c_copyFileName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FILE_NAME_LEN = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [120 x i8] c"bzip2: file name\0A`%s'\0Ais suspiciously (more than %d chars) long.\0ATry using a reasonable file name instead.  Sorry! :-)\0A\00", align 1
@exitValue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @copyFileName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copyFileName(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = call i32 @strlen(i8* %5)
  %7 = load i32, i32* @FILE_NAME_LEN, align 4
  %8 = sub nsw i32 %7, 10
  %9 = icmp sgt i32 %6, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load i32, i32* @stderr, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* @FILE_NAME_LEN, align 4
  %14 = sub nsw i32 %13, 10
  %15 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str, i64 0, i64 0), i8* %12, i32 %14)
  %16 = call i32 @setExit(i32 1)
  %17 = load i32, i32* @exitValue, align 4
  %18 = call i32 @exit(i32 %17) #3
  unreachable

19:                                               ; preds = %2
  %20 = load i8*, i8** %3, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* @FILE_NAME_LEN, align 4
  %23 = sub nsw i32 %22, 10
  %24 = call i32 @strncpy(i8* %20, i8* %21, i32 %23)
  %25 = load i8*, i8** %3, align 8
  %26 = load i32, i32* @FILE_NAME_LEN, align 4
  %27 = sub nsw i32 %26, 10
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  store i8 0, i8* %29, align 1
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @setExit(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
