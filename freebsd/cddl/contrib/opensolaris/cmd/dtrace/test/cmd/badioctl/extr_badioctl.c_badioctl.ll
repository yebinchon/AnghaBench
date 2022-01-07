; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/test/cmd/badioctl/extr_badioctl.c_badioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/test/cmd/badioctl/extr_badioctl.c_badioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_SC_PAGESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"/dev/random\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"couldn't open /dev/random\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_ANON = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"mmap\00", align 1
@NANOSEC = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"/devices/pseudo/dtrace@0:dtrace\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"couldn't open DTrace pseudo device\00", align 1
@DTRACEIOC_MAX = common dso_local global i32 0, align 4
@DTRACEIOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badioctl(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 -1, i32* %3, align 4
  %13 = load i32, i32* @_SC_PAGESIZE, align 4
  %14 = call i32 @sysconf(i32 %13)
  store i32 %14, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i64 0, i64* %10, align 8
  %15 = load i32, i32* @O_RDONLY, align 4
  %16 = call i32 @open(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = call i32 @fatal(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @PROT_READ, align 4
  %23 = load i32, i32* @PROT_WRITE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @MAP_ANON, align 4
  %26 = load i32, i32* @MAP_PRIVATE, align 4
  %27 = or i32 %25, %26
  %28 = call i32* @mmap(i32 0, i32 %21, i32 %24, i32 %27, i32 -1, i32 0)
  store i32* %28, i32** %8, align 8
  %29 = icmp eq i32* %28, inttoptr (i64 -1 to i32*)
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = call i32 @fatal(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %20
  br label %33

33:                                               ; preds = %74, %32
  %34 = call i64 (...) @gethrtime()
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = sub nsw i64 %34, %35
  %37 = load i64, i64* @NANOSEC, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %64

39:                                               ; preds = %33
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @kill(i32 %40, i32 0)
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i64, i64* @errno, align 8
  %45 = load i64, i64* @ESRCH, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = call i32 @exit(i32 0) #3
  unreachable

49:                                               ; preds = %43, %39
  %50 = load i32, i32* %3, align 4
  %51 = icmp ne i32 %50, -1
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @close(i32 %53)
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i32, i32* @O_RDONLY, align 4
  %57 = call i32 @open(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = call i32 @fatal(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %55
  %63 = load i64, i64* %9, align 8
  store i64 %63, i64* %10, align 8
  br label %64

64:                                               ; preds = %62, %33
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  %67 = srem i32 %65, 1000
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load i32, i32* %4, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @read(i32 %70, i32* %71, i32 %72)
  br label %74

74:                                               ; preds = %69, %64
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @read(i32 %75, i32* %12, i32 4)
  %77 = load i32, i32* @DTRACEIOC_MAX, align 4
  %78 = load i32, i32* %12, align 4
  %79 = urem i32 %78, %77
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @DTRACEIOC, align 4
  %84 = load i32, i32* %12, align 4
  %85 = or i32 %83, %84
  %86 = load i32*, i32** %8, align 8
  %87 = call i32 @ioctl(i32 %82, i32 %85, i32* %86)
  br label %33
}

declare dso_local i32 @sysconf(i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32* @mmap(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @gethrtime(...) #1

declare dso_local i32 @kill(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @close(i32) #1

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @ioctl(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
