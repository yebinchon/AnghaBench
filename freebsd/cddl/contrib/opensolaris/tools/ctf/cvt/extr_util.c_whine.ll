; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_util.c_whine.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_util.c_whine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s: %s: \00", align 1
@progname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c": %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @whine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @whine(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @errno, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* @stderr, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = load i8*, i8** @progname, align 8
  %12 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %10, i8* %11)
  %13 = load i32, i32* @stderr, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @vfprintf(i32 %13, i8* %14, i32 %15)
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %17, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 10
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load i32, i32* @stderr, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i8* @strerror(i32 %28)
  %30 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %26, %3
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @vfprintf(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
