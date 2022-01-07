; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c_elfcore_grok_nto_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c_elfcore_grok_nto_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"%s/%ld\00", align 1
@FALSE = common dso_local global i32 0, align 4
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*, i64, i8*)* @elfcore_grok_nto_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elfcore_grok_nto_regs(i32* %0, %struct.TYPE_8__* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [100 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %14 = load i8*, i8** %9, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %14, i64 %15)
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %19 = call i64 @strlen(i8* %18)
  %20 = add nsw i64 %19, 1
  %21 = call i8* @bfd_alloc(i32* %17, i64 %20)
  store i8* %21, i8** %11, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %5, align 4
  br label %64

26:                                               ; preds = %4
  %27 = load i8*, i8** %11, align 8
  %28 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %29 = call i32 @strcpy(i8* %27, i8* %28)
  %30 = load i32*, i32** %6, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %33 = call %struct.TYPE_7__* @bfd_make_section_anyway_with_flags(i32* %30, i8* %31, i32 %32)
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %12, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %35 = icmp eq %struct.TYPE_7__* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %5, align 4
  br label %64

38:                                               ; preds = %26
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i32 2, i32* %50, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = call %struct.TYPE_9__* @elf_tdata(i32* %51)
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %38
  %58 = load i32*, i32** %6, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %61 = call i32 @elfcore_maybe_make_sect(i32* %58, i8* %59, %struct.TYPE_7__* %60)
  store i32 %61, i32* %5, align 4
  br label %64

62:                                               ; preds = %38
  %63 = load i32, i32* @TRUE, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %62, %57, %36, %24
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, i64) #1

declare dso_local i8* @bfd_alloc(i32*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local %struct.TYPE_7__* @bfd_make_section_anyway_with_flags(i32*, i8*, i32) #1

declare dso_local %struct.TYPE_9__* @elf_tdata(i32*) #1

declare dso_local i32 @elfcore_maybe_make_sect(i32*, i8*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
