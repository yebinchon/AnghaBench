; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-i386.c_elf_i386_grok_prstatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-i386.c_elf_i386_grok_prstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i64, i32 }
%struct.TYPE_5__ = type { i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c".reg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*)* @elf_i386_grok_prstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_i386_grok_prstatus(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 8
  br i1 %12, label %13, label %56

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @strcmp(i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %56

19:                                               ; preds = %13
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = call i8* @bfd_get_32(i32* %20, i64 %23)
  %25 = ptrtoint i8* %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %3, align 4
  br label %92

30:                                               ; preds = %19
  %31 = load i32*, i32** %4, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 20
  %36 = call i8* @bfd_get_32(i32* %31, i64 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = call %struct.TYPE_5__* @elf_tdata(i32* %37)
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store i8* %36, i8** %39, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 24
  %45 = call i8* @bfd_get_32(i32* %40, i64 %44)
  %46 = load i32*, i32** %4, align 8
  %47 = call %struct.TYPE_5__* @elf_tdata(i32* %46)
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i8* %45, i8** %48, align 8
  store i32 28, i32* %6, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 8
  %54 = call i8* @bfd_get_32(i32* %49, i64 %53)
  %55 = ptrtoint i8* %54 to i64
  store i64 %55, i64* %7, align 8
  br label %82

56:                                               ; preds = %13, %2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  switch i32 %59, label %60 [
    i32 144, label %62
  ]

60:                                               ; preds = %56
  %61 = load i32, i32* @FALSE, align 4
  store i32 %61, i32* %3, align 4
  br label %92

62:                                               ; preds = %56
  %63 = load i32*, i32** %4, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 12
  %68 = call i8* @bfd_get_16(i32* %63, i64 %67)
  %69 = load i32*, i32** %4, align 8
  %70 = call %struct.TYPE_5__* @elf_tdata(i32* %69)
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i8* %68, i8** %71, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 24
  %77 = call i8* @bfd_get_32(i32* %72, i64 %76)
  %78 = load i32*, i32** %4, align 8
  %79 = call %struct.TYPE_5__* @elf_tdata(i32* %78)
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  store i8* %77, i8** %80, align 8
  store i32 72, i32* %6, align 4
  store i64 68, i64* %7, align 8
  br label %81

81:                                               ; preds = %62
  br label %82

82:                                               ; preds = %81, %30
  %83 = load i32*, i32** %4, align 8
  %84 = load i64, i64* %7, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %87, %89
  %91 = call i32 @_bfd_elfcore_make_pseudosection(i32* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %84, i64 %90)
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %82, %60, %28
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i8* @bfd_get_32(i32*, i64) #1

declare dso_local %struct.TYPE_5__* @elf_tdata(i32*) #1

declare dso_local i8* @bfd_get_16(i32*, i64) #1

declare dso_local i32 @_bfd_elfcore_make_pseudosection(i32*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
