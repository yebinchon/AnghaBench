; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objcopy.c_copy_unknown_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objcopy.c_copy_unknown_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"stat returns negative size for `%s'\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"copy from `%s' [unknown] to `%s' [unknown]\0A\00", align 1
@BUFSIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @copy_unknown_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_unknown_object(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.stat, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i64 @bfd_stat_arch_elt(i32* %11, %struct.stat* %10)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = call i8* @bfd_get_archive_filename(i32* %15)
  %17 = call i32 @bfd_nonfatal(i8* %16)
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %3, align 4
  br label %113

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = call i8* @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %26 = load i32*, i32** %4, align 8
  %27 = call i8* @bfd_get_archive_filename(i32* %26)
  %28 = call i32 @non_fatal(i8* %25, i8* %27)
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %3, align 4
  br label %113

30:                                               ; preds = %19
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* @SEEK_SET, align 4
  %33 = call i64 @bfd_seek(i32* %31, i32 0, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i32*, i32** %4, align 8
  %37 = call i8* @bfd_get_archive_filename(i32* %36)
  %38 = call i32 @bfd_nonfatal(i8* %37)
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %3, align 4
  br label %113

40:                                               ; preds = %30
  %41 = load i64, i64* @verbose, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = call i8* @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32*, i32** %4, align 8
  %46 = call i8* @bfd_get_archive_filename(i32* %45)
  %47 = load i32*, i32** %5, align 8
  %48 = call i8* @bfd_get_filename(i32* %47)
  %49 = call i32 @printf(i8* %44, i8* %46, i8* %48)
  br label %50

50:                                               ; preds = %43, %40
  %51 = load i32, i32* @BUFSIZE, align 4
  %52 = call i8* @xmalloc(i32 %51)
  store i8* %52, i8** %6, align 8
  store i64 0, i64* %8, align 8
  br label %53

53:                                               ; preds = %99, %50
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %104

57:                                               ; preds = %53
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %8, align 8
  %60 = sub nsw i64 %58, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @BUFSIZE, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* @BUFSIZE, align 4
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %65, %57
  %68 = load i8*, i8** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = load i32*, i32** %4, align 8
  %72 = call i64 @bfd_bread(i8* %68, i64 %70, i32* %71)
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = icmp ne i64 %72, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %67
  %77 = load i32*, i32** %4, align 8
  %78 = call i8* @bfd_get_archive_filename(i32* %77)
  %79 = call i32 @bfd_nonfatal(i8* %78)
  %80 = load i8*, i8** %6, align 8
  %81 = call i32 @free(i8* %80)
  %82 = load i32, i32* @FALSE, align 4
  store i32 %82, i32* %3, align 4
  br label %113

83:                                               ; preds = %67
  %84 = load i8*, i8** %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = load i32*, i32** %5, align 8
  %88 = call i64 @bfd_bwrite(i8* %84, i64 %86, i32* %87)
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = icmp ne i64 %88, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %83
  %93 = load i32*, i32** %5, align 8
  %94 = call i8* @bfd_get_filename(i32* %93)
  %95 = call i32 @bfd_nonfatal(i8* %94)
  %96 = load i8*, i8** %6, align 8
  %97 = call i32 @free(i8* %96)
  %98 = load i32, i32* @FALSE, align 4
  store i32 %98, i32* %3, align 4
  br label %113

99:                                               ; preds = %83
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* %8, align 8
  %103 = add nsw i64 %102, %101
  store i64 %103, i64* %8, align 8
  br label %53

104:                                              ; preds = %53
  %105 = load i32*, i32** %5, align 8
  %106 = call i8* @bfd_get_filename(i32* %105)
  %107 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @chmod(i8* %106, i32 %108)
  %110 = load i8*, i8** %6, align 8
  %111 = call i32 @free(i8* %110)
  %112 = load i32, i32* @TRUE, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %104, %92, %76, %35, %24, %14
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i64 @bfd_stat_arch_elt(i32*, %struct.stat*) #1

declare dso_local i32 @bfd_nonfatal(i8*) #1

declare dso_local i8* @bfd_get_archive_filename(i32*) #1

declare dso_local i32 @non_fatal(i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i64 @bfd_seek(i32*, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i8* @bfd_get_filename(i32*) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i64 @bfd_bread(i8*, i64, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @bfd_bwrite(i8*, i64, i32*) #1

declare dso_local i32 @chmod(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
