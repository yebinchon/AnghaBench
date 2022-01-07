; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ar.c_extract_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ar.c_extract_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i32, i32, i32 }

@BUFSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"internal stat error on %s\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"x - %s\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@output_filename = common dso_local global i8* null, align 8
@FOPEN_WB = common dso_local global i32 0, align 4
@output_file = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"%s is not a valid archive\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@preserve_dates = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @extract_file(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.stat, align 8
  store i32* %0, i32** %2, align 8
  %10 = load i64, i64* @BUFSIZE, align 8
  %11 = call i8* @xmalloc(i64 %10)
  store i8* %11, i8** %4, align 8
  store i64 0, i64* %7, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = call i64 @bfd_stat_arch_elt(i32* %12, %struct.stat* %9)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = load i32*, i32** %2, align 8
  %20 = call i8* @bfd_get_filename(i32* %19)
  %21 = call i32 (i8*, i8*, ...) @fatal(i8* %18, i8* %20)
  br label %22

22:                                               ; preds = %15, %1
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* @verbose, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32*, i32** %2, align 8
  %29 = call i8* @bfd_get_filename(i32* %28)
  %30 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* @SEEK_SET, align 4
  %34 = call i32 @bfd_seek(i32* %32, i32 0, i32 %33)
  store i32* null, i32** %3, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %31
  %38 = load i32*, i32** %2, align 8
  %39 = call i8* @bfd_get_filename(i32* %38)
  store i8* %39, i8** @output_filename, align 8
  %40 = load i32*, i32** %2, align 8
  %41 = call i8* @bfd_get_filename(i32* %40)
  %42 = load i32, i32* @FOPEN_WB, align 4
  %43 = call i32* @fopen(i8* %41, i32 %42)
  store i32* %43, i32** %3, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %37
  %47 = load i32*, i32** %2, align 8
  %48 = call i8* @bfd_get_filename(i32* %47)
  %49 = call i32 @perror(i8* %48)
  %50 = call i32 @xexit(i32 1)
  br label %51

51:                                               ; preds = %46, %37
  %52 = load i32*, i32** %3, align 8
  store i32* %52, i32** @output_file, align 8
  br label %120

53:                                               ; preds = %31
  br label %54

54:                                               ; preds = %115, %53
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %8, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %119

58:                                               ; preds = %54
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %7, align 8
  %61 = sub i64 %59, %60
  store i64 %61, i64* %6, align 8
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* @BUFSIZE, align 8
  %64 = icmp ugt i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i64, i64* @BUFSIZE, align 8
  store i64 %66, i64* %6, align 8
  br label %67

67:                                               ; preds = %65, %58
  %68 = load i8*, i8** %4, align 8
  %69 = load i64, i64* %6, align 8
  %70 = trunc i64 %69 to i32
  %71 = load i32*, i32** %2, align 8
  %72 = call i64 @bfd_bread(i8* %68, i32 %70, i32* %71)
  store i64 %72, i64* %5, align 8
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* %6, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %67
  %77 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to i8*
  %80 = load i32*, i32** %2, align 8
  %81 = call i32* @bfd_my_archive(i32* %80)
  %82 = call i8* @bfd_get_filename(i32* %81)
  %83 = call i32 (i8*, i8*, ...) @fatal(i8* %79, i8* %82)
  br label %84

84:                                               ; preds = %76, %67
  %85 = load i32*, i32** %3, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %103

87:                                               ; preds = %84
  %88 = load i32*, i32** %2, align 8
  %89 = call i8* @bfd_get_filename(i32* %88)
  store i8* %89, i8** @output_filename, align 8
  %90 = load i32*, i32** %2, align 8
  %91 = call i8* @bfd_get_filename(i32* %90)
  %92 = load i32, i32* @FOPEN_WB, align 4
  %93 = call i32* @fopen(i8* %91, i32 %92)
  store i32* %93, i32** %3, align 8
  %94 = load i32*, i32** %3, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %101

96:                                               ; preds = %87
  %97 = load i32*, i32** %2, align 8
  %98 = call i8* @bfd_get_filename(i32* %97)
  %99 = call i32 @perror(i8* %98)
  %100 = call i32 @xexit(i32 1)
  br label %101

101:                                              ; preds = %96, %87
  %102 = load i32*, i32** %3, align 8
  store i32* %102, i32** @output_file, align 8
  br label %103

103:                                              ; preds = %101, %84
  %104 = load i8*, i8** %4, align 8
  %105 = load i64, i64* %5, align 8
  %106 = load i32*, i32** %3, align 8
  %107 = call i64 @fwrite(i8* %104, i32 1, i64 %105, i32* %106)
  %108 = load i64, i64* %5, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %103
  %111 = load i8*, i8** @output_filename, align 8
  %112 = load i32, i32* @errno, align 4
  %113 = call i32 @strerror(i32 %112)
  %114 = call i32 (i8*, i8*, ...) @fatal(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %111, i32 %113)
  br label %115

115:                                              ; preds = %110, %103
  %116 = load i64, i64* %6, align 8
  %117 = load i64, i64* %7, align 8
  %118 = add i64 %117, %116
  store i64 %118, i64* %7, align 8
  br label %54

119:                                              ; preds = %54
  br label %120

120:                                              ; preds = %119, %51
  %121 = load i32*, i32** %3, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32*, i32** %3, align 8
  %125 = call i32 @fclose(i32* %124)
  br label %126

126:                                              ; preds = %123, %120
  store i32* null, i32** @output_file, align 8
  store i8* null, i8** @output_filename, align 8
  %127 = load i32*, i32** %2, align 8
  %128 = call i8* @bfd_get_filename(i32* %127)
  %129 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @chmod(i8* %128, i32 %130)
  %132 = load i64, i64* @preserve_dates, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %126
  %135 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 2
  store i32 %136, i32* %137, align 4
  %138 = load i32*, i32** %2, align 8
  %139 = call i8* @bfd_get_filename(i32* %138)
  %140 = call i32 @set_times(i8* %139, %struct.stat* %9)
  br label %141

141:                                              ; preds = %134, %126
  %142 = load i8*, i8** %4, align 8
  %143 = call i32 @free(i8* %142)
  ret void
}

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i64 @bfd_stat_arch_elt(i32*, %struct.stat*) #1

declare dso_local i32 @fatal(i8*, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @bfd_get_filename(i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @bfd_seek(i32*, i32, i32) #1

declare dso_local i32* @fopen(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @xexit(i32) #1

declare dso_local i64 @bfd_bread(i8*, i32, i32*) #1

declare dso_local i32* @bfd_my_archive(i32*) #1

declare dso_local i64 @fwrite(i8*, i32, i64, i32*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @chmod(i8*, i32) #1

declare dso_local i32 @set_times(i8*, %struct.stat*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
