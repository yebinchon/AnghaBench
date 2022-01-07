; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/test/tst/common/io/extr_tst.fds.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/test/tst/common/io/extr_tst.fds.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i64, i32 }

@.str = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Usage: %s\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@interrupt = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@env = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_NOCTTY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@O_NDELAY = common dso_local global i32 0, align 4
@O_SYNC = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [10 x i32], align 16
  %10 = alloca %struct.sigaction, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i32, i32* @stderr, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  %19 = load i32, i32* @EXIT_FAILURE, align 4
  ret i32 %19

20:                                               ; preds = %2
  %21 = load i32, i32* @interrupt, align 4
  %22 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %10, i32 0, i32 2
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %10, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %10, i32 0, i32 0
  %25 = call i32 @sigemptyset(i32* %24)
  %26 = load i32, i32* @SIGUSR1, align 4
  %27 = call i32 @sigaction(i32 %26, %struct.sigaction* %10, i32* null)
  %28 = call i32 @closefrom(i32 0)
  store i32 0, i32* %8, align 4
  %29 = load i32, i32* @env, align 4
  %30 = call i64 @sigsetjmp(i32 %29, i32 1) #4
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %33, %32
  %34 = call i32 @ioctl(i32 -1, i32 0, i32* null)
  br label %33

35:                                               ; preds = %20
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* @O_RDONLY, align 4
  %38 = call i32 @open(i8* %36, i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %41
  store i32 %38, i32* %42, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* @O_WRONLY, align 4
  %45 = call i32 @open(i8* %43, i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %48
  store i32 %45, i32* %49, align 4
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* @O_RDWR, align 4
  %52 = call i32 @open(i8* %50, i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %55
  store i32 %52, i32* %56, align 4
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* @O_RDWR, align 4
  %59 = load i32, i32* @O_APPEND, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @O_CREAT, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @O_NOCTTY, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @O_NONBLOCK, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @O_NDELAY, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @O_SYNC, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @O_TRUNC, align 4
  %72 = or i32 %70, %71
  %73 = or i32 %72, 438
  %74 = call i32 @open(i8* %57, i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %77
  store i32 %74, i32* %78, align 4
  %79 = load i8*, i8** %6, align 8
  %80 = load i32, i32* @O_RDWR, align 4
  %81 = call i32 @open(i8* %79, i32 %80)
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %84
  store i32 %81, i32* %85, align 4
  %86 = load i32, i32* %8, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @SEEK_SET, align 4
  %92 = call i32 @lseek(i32 %90, i32 123, i32 %91)
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %103, %35
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @ioctl(i32 %101, i32 0, i32* null)
  br label %103

103:                                              ; preds = %97
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %93

106:                                              ; preds = %93
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = icmp ule i64 %108, 10
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  %112 = call i32 @exit(i32 0) #5
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @closefrom(i32) #1

; Function Attrs: returns_twice
declare dso_local i64 @sigsetjmp(i32, i32) #2

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { returns_twice }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
