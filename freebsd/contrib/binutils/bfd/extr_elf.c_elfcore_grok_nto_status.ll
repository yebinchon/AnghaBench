; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c_elfcore_grok_nto_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c_elfcore_grok_nto_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i8* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i16, i64, i8* }

@.str = private unnamed_addr constant [21 x i8] c".qnx_core_status/%ld\00", align 1
@FALSE = common dso_local global i32 0, align 4
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c".qnx_core_status\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*, i64*)* @elfcore_grok_nto_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elfcore_grok_nto_status(i32* %0, %struct.TYPE_8__* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [100 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %8, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to i32*
  %20 = call i8* @bfd_get_32(i32* %17, i32* %19)
  %21 = load i32*, i32** %5, align 8
  %22 = call %struct.TYPE_9__* @elf_tdata(i32* %21)
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  store i8* %20, i8** %23, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = bitcast i8* %25 to i32*
  %27 = getelementptr inbounds i32, i32* %26, i64 4
  %28 = call i8* @bfd_get_32(i32* %24, i32* %27)
  %29 = ptrtoint i8* %28 to i64
  %30 = load i64*, i64** %7, align 8
  store i64 %29, i64* %30, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = bitcast i8* %32 to i32*
  %34 = getelementptr inbounds i32, i32* %33, i64 8
  %35 = call i8* @bfd_get_32(i32* %31, i32* %34)
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* %13, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = getelementptr inbounds i32, i32* %39, i64 14
  %41 = call signext i16 @bfd_get_16(i32* %37, i32* %40)
  store i16 %41, i16* %12, align 2
  %42 = sext i16 %41 to i32
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %3
  %45 = load i16, i16* %12, align 2
  %46 = load i32*, i32** %5, align 8
  %47 = call %struct.TYPE_9__* @elf_tdata(i32* %46)
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store i16 %45, i16* %48, align 8
  %49 = load i64*, i64** %7, align 8
  %50 = load i64, i64* %49, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = call %struct.TYPE_9__* @elf_tdata(i32* %51)
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  store i64 %50, i64* %53, align 8
  br label %54

54:                                               ; preds = %44, %3
  %55 = load i32, i32* %13, align 4
  %56 = and i32 %55, 128
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i64*, i64** %7, align 8
  %60 = load i64, i64* %59, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = call %struct.TYPE_9__* @elf_tdata(i32* %61)
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  store i64 %60, i64* %63, align 8
  br label %64

64:                                               ; preds = %58, %54
  %65 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %66 = load i64*, i64** %7, align 8
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @sprintf(i8* %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %67)
  %69 = load i32*, i32** %5, align 8
  %70 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %71 = call i64 @strlen(i8* %70)
  %72 = add nsw i64 %71, 1
  %73 = call i8* @bfd_alloc(i32* %69, i64 %72)
  store i8* %73, i8** %10, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %64
  %77 = load i32, i32* @FALSE, align 4
  store i32 %77, i32* %4, align 4
  br label %106

78:                                               ; preds = %64
  %79 = load i8*, i8** %10, align 8
  %80 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %81 = call i32 @strcpy(i8* %79, i8* %80)
  %82 = load i32*, i32** %5, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %85 = call %struct.TYPE_7__* @bfd_make_section_anyway_with_flags(i32* %82, i8* %83, i32 %84)
  store %struct.TYPE_7__* %85, %struct.TYPE_7__** %11, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %87 = icmp eq %struct.TYPE_7__* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %78
  %89 = load i32, i32* @FALSE, align 4
  store i32 %89, i32* %4, align 4
  br label %106

90:                                               ; preds = %78
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  store i32 2, i32* %102, align 4
  %103 = load i32*, i32** %5, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %105 = call i32 @elfcore_maybe_make_sect(i32* %103, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_7__* %104)
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %90, %88, %76
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i8* @bfd_get_32(i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @elf_tdata(i32*) #1

declare dso_local signext i16 @bfd_get_16(i32*, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i8* @bfd_alloc(i32*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local %struct.TYPE_7__* @bfd_make_section_anyway_with_flags(i32*, i8*, i32) #1

declare dso_local i32 @elfcore_maybe_make_sect(i32*, i8*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
