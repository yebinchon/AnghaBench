; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_archive.c_ac_read_objs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_archive.c_ac_read_objs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfcopy = type { i32*, i64 }
%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }
%struct.ar_obj = type { i8*, i32, i32, i32, i32, i32* }

@SEEK_SET = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"lseek failed\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"archive_read_new failed\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ARCHIVE_RETRY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"strdup failed\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"elf_memory() failed: %s\00", align 1
@ELF_K_ELF = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [27 x i8] c"file format not recognized\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfcopy*, i32)* @ac_read_objs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ac_read_objs(%struct.elfcopy* %0, i32 %1) #0 {
  %3 = alloca %struct.elfcopy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive*, align 8
  %6 = alloca %struct.archive_entry*, align 8
  %7 = alloca %struct.ar_obj*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.elfcopy* %0, %struct.elfcopy** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %13 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @SEEK_SET, align 4
  %16 = call i32 @lseek(i32 %14, i32 0, i32 %15)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EXIT_FAILURE, align 4
  %20 = call i32 @err(i32 %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %2
  %22 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %22, %struct.archive** %5, align 8
  %23 = icmp eq %struct.archive* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @EXIT_FAILURE, align 4
  %26 = call i32 (i32, i8*, ...) @errx(i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.archive*, %struct.archive** %5, align 8
  %29 = call i32 @archive_read_support_format_ar(%struct.archive* %28)
  %30 = load %struct.archive*, %struct.archive** %5, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @archive_read_open_fd(%struct.archive* %30, i32 %31, i32 10240)
  %33 = call i32 @AC(i32 %32)
  br label %34

34:                                               ; preds = %164, %98, %77, %66, %27
  %35 = load %struct.archive*, %struct.archive** %5, align 8
  %36 = call i32 @archive_read_next_header(%struct.archive* %35, %struct.archive_entry** %6)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @ARCHIVE_FATAL, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load i32, i32* @EXIT_FAILURE, align 4
  %42 = load %struct.archive*, %struct.archive** %5, align 8
  %43 = call i32 @archive_error_string(%struct.archive* %42)
  %44 = call i32 (i32, i8*, ...) @errx(i32 %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %40, %34
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @ARCHIVE_EOF, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %165

50:                                               ; preds = %45
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @ARCHIVE_WARN, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @ARCHIVE_RETRY, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54, %50
  %59 = load %struct.archive*, %struct.archive** %5, align 8
  %60 = call i32 @archive_error_string(%struct.archive* %59)
  %61 = call i32 @warnx(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %58, %54
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @ARCHIVE_RETRY, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %34

67:                                               ; preds = %62
  %68 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %69 = call i8* @archive_entry_pathname(%struct.archive_entry* %68)
  store i8* %69, i8** %8, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = call i64 @strcmp(i8* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %67
  %74 = load i8*, i8** %8, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73, %67
  br label %34

78:                                               ; preds = %73
  %79 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %80 = call i64 @archive_entry_size(%struct.archive_entry* %79)
  store i64 %80, i64* %10, align 8
  %81 = load i64, i64* %10, align 8
  %82 = icmp ugt i64 %81, 0
  br i1 %82, label %83, label %164

83:                                               ; preds = %78
  %84 = load i64, i64* %10, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i8* @malloc(i32 %85)
  store i8* %86, i8** %9, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* @EXIT_FAILURE, align 4
  %90 = call i32 @err(i32 %89, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %83
  %92 = load %struct.archive*, %struct.archive** %5, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = load i64, i64* %10, align 8
  %95 = call i64 @archive_read_data(%struct.archive* %92, i8* %93, i64 %94)
  %96 = load i64, i64* %10, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %91
  %99 = load %struct.archive*, %struct.archive** %5, align 8
  %100 = call i32 @archive_error_string(%struct.archive* %99)
  %101 = call i32 @warnx(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  %102 = load i8*, i8** %9, align 8
  %103 = call i32 @free(i8* %102)
  br label %34

104:                                              ; preds = %91
  %105 = call i8* @malloc(i32 32)
  %106 = bitcast i8* %105 to %struct.ar_obj*
  store %struct.ar_obj* %106, %struct.ar_obj** %7, align 8
  %107 = icmp eq %struct.ar_obj* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i32, i32* @EXIT_FAILURE, align 4
  %110 = call i32 @err(i32 %109, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %104
  %112 = load i8*, i8** %8, align 8
  %113 = call i32* @strdup(i8* %112)
  %114 = load %struct.ar_obj*, %struct.ar_obj** %7, align 8
  %115 = getelementptr inbounds %struct.ar_obj, %struct.ar_obj* %114, i32 0, i32 5
  store i32* %113, i32** %115, align 8
  %116 = icmp eq i32* %113, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load i32, i32* @EXIT_FAILURE, align 4
  %119 = call i32 @err(i32 %118, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %120

120:                                              ; preds = %117, %111
  %121 = load i8*, i8** %9, align 8
  %122 = load %struct.ar_obj*, %struct.ar_obj** %7, align 8
  %123 = getelementptr inbounds %struct.ar_obj, %struct.ar_obj* %122, i32 0, i32 0
  store i8* %121, i8** %123, align 8
  %124 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %125 = call i32 @archive_entry_uid(%struct.archive_entry* %124)
  %126 = load %struct.ar_obj*, %struct.ar_obj** %7, align 8
  %127 = getelementptr inbounds %struct.ar_obj, %struct.ar_obj* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 4
  %128 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %129 = call i32 @archive_entry_gid(%struct.archive_entry* %128)
  %130 = load %struct.ar_obj*, %struct.ar_obj** %7, align 8
  %131 = getelementptr inbounds %struct.ar_obj, %struct.ar_obj* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 8
  %132 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %133 = call i32 @archive_entry_mode(%struct.archive_entry* %132)
  %134 = load %struct.ar_obj*, %struct.ar_obj** %7, align 8
  %135 = getelementptr inbounds %struct.ar_obj, %struct.ar_obj* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 4
  %136 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %137 = call i32 @archive_entry_mtime(%struct.archive_entry* %136)
  %138 = load %struct.ar_obj*, %struct.ar_obj** %7, align 8
  %139 = getelementptr inbounds %struct.ar_obj, %struct.ar_obj* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 8
  %140 = load i8*, i8** %9, align 8
  %141 = load i64, i64* %10, align 8
  %142 = call i32* @elf_memory(i8* %140, i64 %141)
  %143 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %144 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %143, i32 0, i32 0
  store i32* %142, i32** %144, align 8
  %145 = icmp eq i32* %142, null
  br i1 %145, label %146, label %150

146:                                              ; preds = %120
  %147 = load i32, i32* @EXIT_FAILURE, align 4
  %148 = call i32 @elf_errmsg(i32 -1)
  %149 = call i32 (i32, i8*, ...) @errx(i32 %147, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %148)
  br label %150

150:                                              ; preds = %146, %120
  %151 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %152 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = call i64 @elf_kind(i32* %153)
  %155 = load i64, i64* @ELF_K_ELF, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %150
  %158 = load i32, i32* @EXIT_FAILURE, align 4
  %159 = call i32 (i32, i8*, ...) @errx(i32 %158, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %160

160:                                              ; preds = %157, %150
  %161 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %162 = load %struct.ar_obj*, %struct.ar_obj** %7, align 8
  %163 = call i32 @process_ar_obj(%struct.elfcopy* %161, %struct.ar_obj* %162)
  br label %164

164:                                              ; preds = %160, %78
  br label %34

165:                                              ; preds = %49
  %166 = load %struct.archive*, %struct.archive** %5, align 8
  %167 = call i32 @archive_read_close(%struct.archive* %166)
  %168 = call i32 @AC(i32 %167)
  %169 = load %struct.archive*, %struct.archive** %5, align 8
  %170 = call i32 @archive_read_free(%struct.archive* %169)
  %171 = call i32 @ACV(i32 %170)
  ret void
}

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @archive_read_support_format_ar(%struct.archive*) #1

declare dso_local i32 @AC(i32) #1

declare dso_local i32 @archive_read_open_fd(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @archive_error_string(%struct.archive*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i8* @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @archive_read_data(%struct.archive*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @archive_entry_uid(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_gid(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i32* @elf_memory(i8*, i64) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i64 @elf_kind(i32*) #1

declare dso_local i32 @process_ar_obj(%struct.elfcopy*, %struct.ar_obj*) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i32 @ACV(i32) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
