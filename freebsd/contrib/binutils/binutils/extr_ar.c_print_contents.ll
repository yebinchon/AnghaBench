; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ar.c_print_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ar.c_print_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@BUFSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"internal stat error on %s\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"\0A<%s>\0A\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"%s is not a valid archive\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"stdout: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @print_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_contents(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stat, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  store i64 0, i64* %3, align 8
  %9 = load i64, i64* @BUFSIZE, align 8
  %10 = call i8* @xmalloc(i64 %9)
  store i8* %10, i8** %4, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i64 @bfd_stat_arch_elt(i32* %11, %struct.stat* %5)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %16 = load i32*, i32** %2, align 8
  %17 = call i8* @bfd_get_filename(i32* %16)
  %18 = call i32 @fatal(i8* %15, i8* %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load i64, i64* @verbose, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = call i8* @_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32*, i32** %2, align 8
  %25 = call i8* @bfd_get_filename(i32* %24)
  %26 = call i32 @printf(i8* %23, i8* %25)
  br label %27

27:                                               ; preds = %22, %19
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* @SEEK_SET, align 4
  %30 = call i32 @bfd_seek(i32* %28, i32 0, i32 %29)
  %31 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %6, align 8
  br label %33

33:                                               ; preds = %72, %27
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %76

37:                                               ; preds = %33
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %3, align 8
  %40 = sub i64 %38, %39
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @BUFSIZE, align 8
  %43 = icmp ugt i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i64, i64* @BUFSIZE, align 8
  store i64 %45, i64* %8, align 8
  br label %46

46:                                               ; preds = %44, %37
  %47 = load i8*, i8** %4, align 8
  %48 = load i64, i64* %8, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i32*, i32** %2, align 8
  %51 = call i64 @bfd_bread(i8* %47, i32 %49, i32* %50)
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %46
  %56 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i32*, i32** %2, align 8
  %58 = call i32* @bfd_my_archive(i32* %57)
  %59 = call i8* @bfd_get_filename(i32* %58)
  %60 = call i32 @fatal(i8* %56, i8* %59)
  br label %61

61:                                               ; preds = %55, %46
  %62 = load i8*, i8** %4, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i32, i32* @stdout, align 4
  %65 = call i64 @fwrite(i8* %62, i32 1, i64 %63, i32 %64)
  %66 = load i64, i64* %7, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load i32, i32* @errno, align 4
  %70 = call i8* @strerror(i32 %69)
  %71 = call i32 @fatal(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %68, %61
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* %3, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %3, align 8
  br label %33

76:                                               ; preds = %33
  %77 = load i8*, i8** %4, align 8
  %78 = call i32 @free(i8* %77)
  ret void
}

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i64 @bfd_stat_arch_elt(i32*, %struct.stat*) #1

declare dso_local i32 @fatal(i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i8* @bfd_get_filename(i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @bfd_seek(i32*, i32, i32) #1

declare dso_local i64 @bfd_bread(i8*, i32, i32*) #1

declare dso_local i32* @bfd_my_archive(i32*) #1

declare dso_local i64 @fwrite(i8*, i32, i64, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
