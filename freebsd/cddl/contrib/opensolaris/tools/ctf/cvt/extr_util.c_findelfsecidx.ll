; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_util.c_findelfsecidx.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_util.c_findelfsecidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"Couldn't read ehdr\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Couldn't read header for section %d\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Couldn't get name for section %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @findelfsecidx(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__, align 4
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* null, i32** %8, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32* @gelf_getehdr(i32* %12, %struct.TYPE_6__* %9)
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 (i8*, i8*, ...) @elfterminate(i8* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %3
  br label %19

19:                                               ; preds = %54, %18
  %20 = load i32*, i32** %5, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i32* @elf_nextscn(i32* %20, i32* %21)
  store i32* %22, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %55

24:                                               ; preds = %19
  %25 = load i32*, i32** %8, align 8
  %26 = call i32* @gelf_getshdr(i32* %25, %struct.TYPE_5__* %10)
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i8*, i8** %6, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @elf_ndxscn(i32* %30)
  %32 = call i32 (i8*, i8*, ...) @elfterminate(i8* %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %28, %24
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i8* @elf_strptr(i32* %34, i32 %36, i64 %38)
  store i8* %39, i8** %11, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load i8*, i8** %6, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @elf_ndxscn(i32* %43)
  %45 = call i32 (i8*, i8*, ...) @elfterminate(i8* %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %41, %33
  %47 = load i8*, i8** %11, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call i64 @strcmp(i8* %47, i8* %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @elf_ndxscn(i32* %52)
  store i32 %53, i32* %4, align 4
  br label %56

54:                                               ; preds = %46
  br label %19

55:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %51
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32* @gelf_getehdr(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @elfterminate(i8*, i8*, ...) #1

declare dso_local i32* @elf_nextscn(i32*, i32*) #1

declare dso_local i32* @gelf_getshdr(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @elf_ndxscn(i32*) #1

declare dso_local i8* @elf_strptr(i32*, i32, i64) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
