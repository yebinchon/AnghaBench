; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_dump_cachefile.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_dump_cachefile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat64 = type { i64 }

@O_RDONLY = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"cannot open '%s': %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to stat '%s': %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to allocate %llu bytes\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to read %llu bytes\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"failed to unpack nvlist\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dump_cachefile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_cachefile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.stat64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = load i32, i32* @O_RDONLY, align 4
  %9 = call i32 @open64(i8* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i32, i32* @stderr, align 4
  %13 = load i8*, i8** %2, align 8
  %14 = load i32, i32* @errno, align 4
  %15 = call i8* @strerror(i32 %14)
  %16 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %13, i8* %15)
  %17 = call i32 @exit(i32 1) #3
  unreachable

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @fstat64(i32 %19, %struct.stat64* %4)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i32, i32* @stderr, align 4
  %24 = load i8*, i8** %2, align 8
  %25 = load i32, i32* @errno, align 4
  %26 = call i8* @strerror(i32 %25)
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %24, i8* %26)
  %28 = call i32 @exit(i32 1) #3
  unreachable

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.stat64, %struct.stat64* %4, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i8* @malloc(i64 %31)
  store i8* %32, i8** %5, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load i32, i32* @stderr, align 4
  %36 = getelementptr inbounds %struct.stat64, %struct.stat64* %4, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = call i32 @exit(i32 1) #3
  unreachable

41:                                               ; preds = %29
  %42 = load i32, i32* %3, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds %struct.stat64, %struct.stat64* %4, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @read(i32 %42, i8* %43, i64 %45)
  %47 = getelementptr inbounds %struct.stat64, %struct.stat64* %4, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %46, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %41
  %51 = load i32, i32* @stderr, align 4
  %52 = getelementptr inbounds %struct.stat64, %struct.stat64* %4, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = call i32 @exit(i32 1) #3
  unreachable

57:                                               ; preds = %41
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @close(i32 %58)
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds %struct.stat64, %struct.stat64* %4, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @nvlist_unpack(i8* %60, i64 %62, i32** %6, i32 0)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %57
  %66 = load i32, i32* @stderr, align 4
  %67 = call i32 (i32, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %68 = call i32 @exit(i32 1) #3
  unreachable

69:                                               ; preds = %57
  %70 = load i8*, i8** %5, align 8
  %71 = call i32 @free(i8* %70)
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @dump_nvlist(i32* %72, i32 0)
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @nvlist_free(i32* %74)
  ret void
}

declare dso_local i32 @open64(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @fstat64(i32, %struct.stat64*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @nvlist_unpack(i8*, i64, i32**, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @dump_nvlist(i32*, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
