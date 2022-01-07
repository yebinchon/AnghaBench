; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/expat/xmlwf/extr_win32filemap.c_win32perror.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/expat/xmlwf/extr_win32filemap.c_win32perror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FORMAT_MESSAGE_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_FROM_SYSTEM = common dso_local global i32 0, align 4
@LANG_NEUTRAL = common dso_local global i32 0, align 4
@SUBLANG_DEFAULT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%s: unknown Windows error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @win32perror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @win32perror(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32, i32* @FORMAT_MESSAGE_ALLOCATE_BUFFER, align 4
  %5 = load i32, i32* @FORMAT_MESSAGE_FROM_SYSTEM, align 4
  %6 = or i32 %4, %5
  %7 = call i32 (...) @GetLastError()
  %8 = load i32, i32* @LANG_NEUTRAL, align 4
  %9 = load i32, i32* @SUBLANG_DEFAULT, align 4
  %10 = call i32 @MAKELANGID(i32 %8, i32 %9)
  %11 = ptrtoint i32* %3 to i32
  %12 = call i64 @FormatMessage(i32 %6, i32* null, i32 %7, i32 %10, i32 %11, i32 0, i32* null)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 @_T(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 (i32, i32, i32*, ...) @_ftprintf(i32 %15, i32 %16, i32* %17, i32 %18)
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 @fflush(i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @LocalFree(i32 %22)
  br label %29

24:                                               ; preds = %1
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 @_T(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 (i32, i32, i32*, ...) @_ftprintf(i32 %25, i32 %26, i32* %27)
  br label %29

29:                                               ; preds = %24, %14
  ret void
}

declare dso_local i64 @FormatMessage(i32, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @MAKELANGID(i32, i32) #1

declare dso_local i32 @_ftprintf(i32, i32, i32*, ...) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @LocalFree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
