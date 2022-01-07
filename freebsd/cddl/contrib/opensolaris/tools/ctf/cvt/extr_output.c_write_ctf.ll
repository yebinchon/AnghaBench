; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_output.c_write_ctf.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_output.c_write_ctf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.TYPE_3__ = type { i32* }

@EV_CURRENT = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: Cannot open for re-reading\00", align 1
@ELF_C_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Cannot re-read\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Cannot open temp file %s for writing\00", align 1
@ELF_C_WRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"Cannot write\00", align 1
@ELFDATA2MSB = common dso_local global i32 0, align 4
@EI_DATA = common dso_local global i64 0, align 8
@CTF_SWAP_BYTES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"Failed to get EHDR\00", align 1
@ELFDATA2LSB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_ctf(i32* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_3__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32 -1, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  %18 = load i32, i32* @EV_CURRENT, align 4
  %19 = call i32 @elf_version(i32 %18)
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* @O_RDONLY, align 4
  %22 = call i32 (i8*, i32, ...) @open(i8* %20, i32 %21)
  store i32 %22, i32* %15, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* %15, align 4
  %26 = call i64 @fstat(i32 %25, %struct.stat* %9)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %4
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @terminate(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %28, %24
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* @ELF_C_READ, align 4
  %34 = call i32* @elf_begin(i32 %32, i32 %33, i32* null)
  store i32* %34, i32** %10, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @elfterminate(i8* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* @O_RDWR, align 4
  %42 = load i32, i32* @O_CREAT, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @O_TRUNC, align 4
  %45 = or i32 %43, %44
  %46 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, i32, ...) @open(i8* %40, i32 %45, i32 %47)
  store i32 %48, i32* %16, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @terminate(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %50, %39
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* @ELF_C_WRITE, align 4
  %56 = call i32* @elf_begin(i32 %54, i32 %55, i32* null)
  store i32* %56, i32** %11, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @elfterminate(i8* %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %53
  %62 = load i32*, i32** %10, align 8
  %63 = call i64 @gelf_getehdr(i32* %62, %struct.TYPE_3__* %12)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %61
  %66 = load i32, i32* @ELFDATA2MSB, align 4
  store i32 %66, i32* %17, align 4
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* @EI_DATA, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %17, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %65
  %75 = load i32, i32* @CTF_SWAP_BYTES, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %8, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %74, %65
  br label %83

80:                                               ; preds = %61
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @elfterminate(i8* %81, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %79
  %84 = load i32*, i32** %5, align 8
  %85 = load i32*, i32** %10, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @make_ctf_data(i32* %84, i32* %85, i8* %86, i64* %14, i32 %87)
  store i32 %88, i32* %13, align 4
  %89 = load i32*, i32** %10, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = load i32*, i32** %11, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = load i32, i32* %13, align 4
  %94 = load i64, i64* %14, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @write_file(i32* %89, i8* %90, i32* %91, i8* %92, i32 %93, i64 %94, i32 %95)
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @free(i32 %97)
  %99 = load i32*, i32** %11, align 8
  %100 = call i32 @elf_end(i32* %99)
  %101 = load i32*, i32** %10, align 8
  %102 = call i32 @elf_end(i32* %101)
  %103 = load i32, i32* %15, align 4
  %104 = call i32 @close(i32 %103)
  %105 = load i32, i32* %16, align 4
  %106 = call i32 @close(i32 %105)
  ret void
}

declare dso_local i32 @elf_version(i32) #1

declare dso_local i32 @open(i8*, i32, ...) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @terminate(i8*, i8*) #1

declare dso_local i32* @elf_begin(i32, i32, i32*) #1

declare dso_local i32 @elfterminate(i8*, i8*) #1

declare dso_local i64 @gelf_getehdr(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @make_ctf_data(i32*, i32*, i8*, i64*, i32) #1

declare dso_local i32 @write_file(i32*, i8*, i32*, i8*, i32, i64, i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @elf_end(i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
