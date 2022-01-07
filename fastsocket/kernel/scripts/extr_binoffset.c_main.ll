; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/extr_binoffset.c_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/extr_binoffset.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progname = common dso_local global i8* null, align 8
@inputname = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@inputfd = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s: cannot open '%s'\0A\00", align 1
@filesize = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@madr = common dso_local global i64 0, align 8
@MAP_FAILED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"mmap error = %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"munmap error = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"%s: error %d closing '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"number of pattern matches = %d\0A\00", align 1
@num_matches = common dso_local global i32 0, align 4
@firstloc = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i8**, i8*** %5, align 8
  %7 = getelementptr inbounds i8*, i8** %6, i64 0
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** @progname, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 3
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 (...) @usage()
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i32, i32* %4, align 4
  %15 = sub nsw i32 %14, 2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 2
  %18 = call i32 @get_pattern(i32 %15, i8** %17)
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** @inputname, align 8
  %22 = load i8*, i8** @inputname, align 8
  %23 = load i32, i32* @O_RDONLY, align 4
  %24 = call i32 @open(i8* %22, i32 %23)
  store i32 %24, i32* @inputfd, align 4
  %25 = load i32, i32* @inputfd, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %33

27:                                               ; preds = %13
  %28 = load i32, i32* @stderr, align 4
  %29 = load i8*, i8** @progname, align 8
  %30 = load i8*, i8** @inputname, align 8
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %29, i8* %30)
  %32 = call i32 @exit(i32 3) #3
  unreachable

33:                                               ; preds = %13
  %34 = load i32, i32* @inputfd, align 4
  %35 = call i32 @get_filesize(i32 %34)
  store i32 %35, i32* @filesize, align 4
  %36 = load i32, i32* @filesize, align 4
  %37 = load i32, i32* @PROT_READ, align 4
  %38 = load i32, i32* @MAP_PRIVATE, align 4
  %39 = load i32, i32* @inputfd, align 4
  %40 = call i64 @mmap(i32 0, i32 %36, i32 %37, i32 %38, i32 %39, i32 0)
  store i64 %40, i64* @madr, align 8
  %41 = load i64, i64* @madr, align 8
  %42 = load i64, i64* @MAP_FAILED, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %33
  %45 = load i32, i32* @stderr, align 4
  %46 = load i32, i32* @errno, align 4
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @inputfd, align 4
  %49 = call i64 @close(i32 %48)
  %50 = call i32 @exit(i32 4) #3
  unreachable

51:                                               ; preds = %33
  %52 = call i32 (...) @search_pattern()
  %53 = load i64, i64* @madr, align 8
  %54 = load i32, i32* @filesize, align 4
  %55 = call i64 @munmap(i64 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i32, i32* @stderr, align 4
  %59 = load i32, i32* @errno, align 4
  %60 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %57, %51
  %62 = load i32, i32* @inputfd, align 4
  %63 = call i64 @close(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i32, i32* @stderr, align 4
  %67 = load i8*, i8** @progname, align 8
  %68 = load i32, i32* @errno, align 4
  %69 = load i8*, i8** @inputname, align 8
  %70 = call i32 (i32, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %67, i32 %68, i8* %69)
  br label %71

71:                                               ; preds = %65, %61
  %72 = load i32, i32* @stderr, align 4
  %73 = load i32, i32* @num_matches, align 4
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @num_matches, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  store i32 -1, i32* @firstloc, align 4
  br label %78

78:                                               ; preds = %77, %71
  %79 = load i32, i32* @firstloc, align 4
  %80 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @stderr, align 4
  %82 = load i32, i32* @firstloc, align 4
  %83 = call i32 (i32, i8*, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @num_matches, align 4
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 0, i32 2
  %88 = call i32 @exit(i32 %87) #3
  unreachable
}

declare dso_local i32 @usage(...) #1

declare dso_local i32 @get_pattern(i32, i8**) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @get_filesize(i32) #1

declare dso_local i64 @mmap(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @search_pattern(...) #1

declare dso_local i64 @munmap(i64, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
