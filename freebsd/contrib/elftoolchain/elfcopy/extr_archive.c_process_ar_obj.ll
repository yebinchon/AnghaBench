; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_archive.c_process_ar_obj.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_archive.c_process_ar_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfcopy = type { i32, i32, i32*, i32* }
%struct.ar_obj = type { i8*, i64, i32, i32* }
%struct.stat = type { i64 }

@ELF_C_WRITE = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"elf_begin() failed: %s\00", align 1
@ELF_C_SET = common dso_local global i32 0, align 4
@ELF_F_LAYOUT = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"lseek failed for '%s'\00", align 1
@ELF_C_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"fstat %s failed\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"lseek %s failed\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"memory allocation failed for '%s'\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"read failed for '%s'\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"unlink %s failed\00", align 1
@_MAXNAMELEN_SVR4 = common dso_local global i64 0, align 8
@_ARHDR_LEN = common dso_local global i64 0, align 8
@objs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfcopy*, %struct.ar_obj*)* @process_ar_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_ar_obj(%struct.elfcopy* %0, %struct.ar_obj* %1) #0 {
  %3 = alloca %struct.elfcopy*, align 8
  %4 = alloca %struct.ar_obj*, align 8
  %5 = alloca %struct.stat, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.elfcopy* %0, %struct.elfcopy** %3, align 8
  store %struct.ar_obj* %1, %struct.ar_obj** %4, align 8
  %8 = call i32 @create_tempfile(i8** %6, i32* %7)
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @ELF_C_WRITE, align 4
  %11 = call i8* @elf_begin(i32 %9, i32 %10, i32* null)
  %12 = bitcast i8* %11 to i32*
  %13 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %14 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %13, i32 0, i32 2
  store i32* %12, i32** %14, align 8
  %15 = icmp eq i32* %12, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @EXIT_FAILURE, align 4
  %18 = call i32 @elf_errmsg(i32 -1)
  %19 = call i32 @errx(i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %22 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* @ELF_C_SET, align 4
  %25 = load i32, i32* @ELF_F_LAYOUT, align 4
  %26 = call i32 @elf_flagelf(i32* %23, i32 %24, i32 %25)
  %27 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %28 = call i32 @create_elf(%struct.elfcopy* %27)
  %29 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %30 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @elf_end(i32* %31)
  %33 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %34 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @elf_end(i32* %35)
  %37 = load %struct.ar_obj*, %struct.ar_obj** %4, align 8
  %38 = getelementptr inbounds %struct.ar_obj, %struct.ar_obj* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @free(i8* %39)
  %41 = load %struct.ar_obj*, %struct.ar_obj** %4, align 8
  %42 = getelementptr inbounds %struct.ar_obj, %struct.ar_obj* %41, i32 0, i32 0
  store i8* null, i8** %42, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @SEEK_SET, align 4
  %45 = call i64 @lseek(i32 %43, i32 0, i32 %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %20
  %48 = load i32, i32* @EXIT_FAILURE, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @err(i32 %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %47, %20
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @ELF_C_READ, align 4
  %54 = call i8* @elf_begin(i32 %52, i32 %53, i32* null)
  %55 = bitcast i8* %54 to i32*
  %56 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %57 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %56, i32 0, i32 2
  store i32* %55, i32** %57, align 8
  %58 = icmp eq i32* %55, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load i32, i32* @EXIT_FAILURE, align 4
  %61 = call i32 @elf_errmsg(i32 -1)
  %62 = call i32 @errx(i32 %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %59, %51
  %64 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %65 = call i32 @extract_arsym(%struct.elfcopy* %64)
  %66 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %67 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @elf_end(i32* %68)
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @fstat(i32 %70, %struct.stat* %5)
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %77

73:                                               ; preds = %63
  %74 = load i32, i32* @EXIT_FAILURE, align 4
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 @err(i32 %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %75)
  br label %77

77:                                               ; preds = %73, %63
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @SEEK_SET, align 4
  %80 = call i64 @lseek(i32 %78, i32 0, i32 %79)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i32, i32* @EXIT_FAILURE, align 4
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @err(i32 %83, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %84)
  br label %86

86:                                               ; preds = %82, %77
  %87 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.ar_obj*, %struct.ar_obj** %4, align 8
  %90 = getelementptr inbounds %struct.ar_obj, %struct.ar_obj* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  %91 = load %struct.ar_obj*, %struct.ar_obj** %4, align 8
  %92 = getelementptr inbounds %struct.ar_obj, %struct.ar_obj* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i32* @malloc(i64 %93)
  %95 = load %struct.ar_obj*, %struct.ar_obj** %4, align 8
  %96 = getelementptr inbounds %struct.ar_obj, %struct.ar_obj* %95, i32 0, i32 3
  store i32* %94, i32** %96, align 8
  %97 = icmp eq i32* %94, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %86
  %99 = load i32, i32* @EXIT_FAILURE, align 4
  %100 = load i8*, i8** %6, align 8
  %101 = call i32 @err(i32 %99, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %100)
  br label %102

102:                                              ; preds = %98, %86
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.ar_obj*, %struct.ar_obj** %4, align 8
  %105 = getelementptr inbounds %struct.ar_obj, %struct.ar_obj* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.ar_obj*, %struct.ar_obj** %4, align 8
  %108 = getelementptr inbounds %struct.ar_obj, %struct.ar_obj* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = call i64 @read(i32 %103, i32* %106, i64 %109)
  %111 = load %struct.ar_obj*, %struct.ar_obj** %4, align 8
  %112 = getelementptr inbounds %struct.ar_obj, %struct.ar_obj* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %110, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %102
  %116 = load i32, i32* @EXIT_FAILURE, align 4
  %117 = load i8*, i8** %6, align 8
  %118 = call i32 @err(i32 %116, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %117)
  br label %119

119:                                              ; preds = %115, %102
  %120 = load i8*, i8** %6, align 8
  %121 = call i64 @unlink(i8* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load i32, i32* @EXIT_FAILURE, align 4
  %125 = load i8*, i8** %6, align 8
  %126 = call i32 @err(i32 %124, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %125)
  br label %127

127:                                              ; preds = %123, %119
  %128 = load i8*, i8** %6, align 8
  %129 = call i32 @free(i8* %128)
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @close(i32 %130)
  %132 = load %struct.ar_obj*, %struct.ar_obj** %4, align 8
  %133 = getelementptr inbounds %struct.ar_obj, %struct.ar_obj* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i64 @strlen(i32 %134)
  %136 = load i64, i64* @_MAXNAMELEN_SVR4, align 8
  %137 = icmp sgt i64 %135, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %127
  %139 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %140 = load %struct.ar_obj*, %struct.ar_obj** %4, align 8
  %141 = getelementptr inbounds %struct.ar_obj, %struct.ar_obj* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @add_to_ar_str_table(%struct.elfcopy* %139, i32 %142)
  br label %144

144:                                              ; preds = %138, %127
  %145 = load i64, i64* @_ARHDR_LEN, align 8
  %146 = load %struct.ar_obj*, %struct.ar_obj** %4, align 8
  %147 = getelementptr inbounds %struct.ar_obj, %struct.ar_obj* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = add i64 %145, %148
  %150 = load %struct.ar_obj*, %struct.ar_obj** %4, align 8
  %151 = getelementptr inbounds %struct.ar_obj, %struct.ar_obj* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = urem i64 %152, 2
  %154 = add i64 %149, %153
  %155 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %156 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = add i64 %158, %154
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %156, align 4
  %161 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %162 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %161, i32 0, i32 0
  %163 = load %struct.ar_obj*, %struct.ar_obj** %4, align 8
  %164 = load i32, i32* @objs, align 4
  %165 = call i32 @STAILQ_INSERT_TAIL(i32* %162, %struct.ar_obj* %163, i32 %164)
  ret void
}

declare dso_local i32 @create_tempfile(i8**, i32*) #1

declare dso_local i8* @elf_begin(i32, i32, i32*) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @elf_flagelf(i32*, i32, i32) #1

declare dso_local i32 @create_elf(%struct.elfcopy*) #1

declare dso_local i32 @elf_end(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @extract_arsym(%struct.elfcopy*) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i64 @read(i32, i32*, i64) #1

declare dso_local i64 @unlink(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @add_to_ar_str_table(%struct.elfcopy*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.ar_obj*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
