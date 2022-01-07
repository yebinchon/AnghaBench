; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_print_ar_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_print_ar_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i64, i8* }

@.str = private unnamed_addr constant [17 x i8] c"\0AArchive index:\0A\00", align 1
@ELF_C_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"%s in %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @print_ar_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_ar_index(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %79

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = call %struct.TYPE_5__* @elf_getarsym(i32* %15, i64* %10)
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %7, align 8
  %17 = icmp eq %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %79

19:                                               ; preds = %14
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  %24 = load i32, i32* @ELF_C_READ, align 4
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %70, %19
  %26 = load i64, i64* %10, align 8
  %27 = icmp ugt i64 %26, 1
  br i1 %27, label %28, label %75

28:                                               ; preds = %25
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @elf_rand(i32* %29, i64 %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %70

38:                                               ; preds = %28
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = call i32* @elf_begin(i32 %39, i32 %40, i32* %41)
  store i32* %42, i32** %5, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %70

44:                                               ; preds = %38
  %45 = load i32*, i32** %5, align 8
  %46 = call %struct.TYPE_6__* @elf_getarhdr(i32* %45)
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %6, align 8
  %47 = icmp ne %struct.TYPE_6__* %46, null
  br i1 %47, label %48, label %67

48:                                               ; preds = %44
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  br label %64

60:                                               ; preds = %48
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  br label %64

64:                                               ; preds = %60, %56
  %65 = phi i8* [ %59, %56 ], [ %63, %60 ]
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %51, i8* %65)
  br label %67

67:                                               ; preds = %64, %44
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @elf_end(i32* %68)
  br label %70

70:                                               ; preds = %67, %38, %28
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 1
  store %struct.TYPE_5__* %72, %struct.TYPE_5__** %7, align 8
  %73 = load i64, i64* %10, align 8
  %74 = add i64 %73, -1
  store i64 %74, i64* %10, align 8
  br label %25

75:                                               ; preds = %25
  %76 = load i32*, i32** %4, align 8
  %77 = load i64, i64* %9, align 8
  %78 = call i64 @elf_rand(i32* %76, i64 %77)
  br label %79

79:                                               ; preds = %75, %18, %13
  ret void
}

declare dso_local %struct.TYPE_5__* @elf_getarsym(i32*, i64*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @elf_rand(i32*, i64) #1

declare dso_local i32* @elf_begin(i32, i32, i32*) #1

declare dso_local %struct.TYPE_6__* @elf_getarhdr(i32*) #1

declare dso_local i32 @elf_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
