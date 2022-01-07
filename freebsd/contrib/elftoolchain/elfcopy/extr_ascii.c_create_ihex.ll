; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_ascii.c_create_ihex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_ascii.c_create_ihex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i64, i64, i32 }

@ELF_C_READ = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"elf_begin() failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"gelf_getshdr failed: %s\00", align 1
@SHF_ALLOC = common dso_local global i32 0, align 4
@SHT_NOBITS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"address space too big for Intel Hex file\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"elf_getdata failed: %s\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"elf_nextscn failed: %s\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"gelf_getehdr() failed: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @create_ihex(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_8__, align 4
  %9 = alloca %struct.TYPE_7__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @ELF_C_READ, align 4
  %15 = call i32* @elf_begin(i32 %13, i32 %14, i32* null)
  store i32* %15, i32** %5, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @EXIT_FAILURE, align 4
  %19 = call i32 @elf_errmsg(i32 -1)
  %20 = call i32 @errx(i32 %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %17, %2
  store i32 0, i32* %12, align 4
  store i32* null, i32** %6, align 8
  br label %22

22:                                               ; preds = %97, %80, %69, %55, %50, %31, %21
  %23 = load i32*, i32** %5, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i32* @elf_nextscn(i32* %23, i32* %24)
  store i32* %25, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %108

27:                                               ; preds = %22
  %28 = load i32*, i32** %6, align 8
  %29 = call i32* @gelf_getshdr(i32* %28, %struct.TYPE_7__* %9)
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = call i32 @elf_errmsg(i32 -1)
  %33 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = call i32 (...) @elf_errno()
  br label %22

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @SHF_ALLOC, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SHT_NOBITS, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46, %41, %35
  br label %22

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = icmp ugt i32 %53, -1
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %22

57:                                               ; preds = %51
  %58 = call i32 (...) @elf_errno()
  %59 = load i32*, i32** %6, align 8
  %60 = call %struct.TYPE_9__* @elf_getdata(i32* %59, i32* null)
  store %struct.TYPE_9__* %60, %struct.TYPE_9__** %7, align 8
  %61 = icmp eq %struct.TYPE_9__* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = call i32 (...) @elf_errno()
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = call i32 @elf_errmsg(i32 -1)
  %68 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %66, %62
  br label %22

70:                                               ; preds = %57
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75, %70
  br label %22

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = ashr i32 %83, 16
  %85 = and i32 %84, 65535
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %81
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @ihex_write_04(i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %92, %88, %81
  %98 = load i32, i32* %4, align 4
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @ihex_write_00(i32 %98, i32 %100, i32* %103, i64 %106)
  br label %22

108:                                              ; preds = %22
  %109 = call i32 (...) @elf_errno()
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @elf_errmsg(i32 %113)
  %115 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %112, %108
  %117 = load i32*, i32** %5, align 8
  %118 = call i32* @gelf_getehdr(i32* %117, %struct.TYPE_8__* %8)
  %119 = icmp eq i32* %118, null
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load i32, i32* @EXIT_FAILURE, align 4
  %122 = call i32 @elf_errmsg(i32 -1)
  %123 = call i32 @errx(i32 %121, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %120, %116
  %125 = load i32, i32* %4, align 4
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @ihex_write_05(i32 %125, i32 %127)
  %129 = load i32, i32* %4, align 4
  %130 = call i32 @ihex_write_01(i32 %129)
  ret void
}

declare dso_local i32* @elf_begin(i32, i32, i32*) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32* @elf_nextscn(i32*, i32*) #1

declare dso_local i32* @gelf_getshdr(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @elf_errno(...) #1

declare dso_local %struct.TYPE_9__* @elf_getdata(i32*, i32*) #1

declare dso_local i32 @ihex_write_04(i32, i32) #1

declare dso_local i32 @ihex_write_00(i32, i32, i32*, i64) #1

declare dso_local i32* @gelf_getehdr(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @ihex_write_05(i32, i32) #1

declare dso_local i32 @ihex_write_01(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
