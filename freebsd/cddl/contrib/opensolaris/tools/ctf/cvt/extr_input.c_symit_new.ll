; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_input.c_symit_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_input.c_symit_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__, i32*, i32* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c".symtab\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Cannot read .symtab\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Cannot read strings for .symtab\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @symit_new(i32* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @findelfsecidx(i32* %9, i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %8, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %67

14:                                               ; preds = %2
  %15 = call %struct.TYPE_5__* @xcalloc(i32 32)
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %6, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32* @elf_getscn(i32* %16, i32 %17)
  store i32* %18, i32** %7, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %14
  %21 = load i32*, i32** %7, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = call i32* @gelf_getshdr(i32* %21, %struct.TYPE_6__* %23)
  %25 = icmp eq i32* %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %20
  %27 = load i32*, i32** %7, align 8
  %28 = call i8* @elf_getdata(i32* %27, i32* null)
  %29 = bitcast i8* %28 to i32*
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 3
  store i32* %29, i32** %31, align 8
  %32 = icmp eq i32* %29, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %26, %20, %14
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @elfterminate(i8* %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %26
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32* @elf_getscn(i32* %37, i32 %41)
  store i32* %42, i32** %7, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %36
  %45 = load i32*, i32** %7, align 8
  %46 = call i8* @elf_getdata(i32* %45, i32* null)
  %47 = bitcast i8* %46 to i32*
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  store i32* %47, i32** %49, align 8
  %50 = icmp eq i32* %47, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %44, %36
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @elfterminate(i8* %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %44
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = sdiv i32 %58, %62
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %66, %struct.TYPE_5__** %3, align 8
  br label %67

67:                                               ; preds = %54, %13
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %68
}

declare dso_local i32 @findelfsecidx(i32*, i8*, i8*) #1

declare dso_local %struct.TYPE_5__* @xcalloc(i32) #1

declare dso_local i32* @elf_getscn(i32*, i32) #1

declare dso_local i32* @gelf_getshdr(i32*, %struct.TYPE_6__*) #1

declare dso_local i8* @elf_getdata(i32*, i32*) #1

declare dso_local i32 @elfterminate(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
