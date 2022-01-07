; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_x509.c_process_conf_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_x509.c_process_conf_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@keys = common dso_local global i8* null, align 8
@trust_anchors = common dso_local global i8* null, align 8
@all_chains = common dso_local global i32* null, align 8
@all_chains_ptr = common dso_local global i64 0, align 8
@all_chains_len = common dso_local global i64 0, align 8
@current_linenum = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"no current section (line %ld)\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"wrong configuration, line %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @process_conf_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_conf_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %7 = call i8* (...) @HT_new()
  store i8* %7, i8** @keys, align 8
  %8 = call i8* (...) @HT_new()
  store i8* %8, i8** @trust_anchors, align 8
  store i32* null, i32** @all_chains, align 8
  store i64 0, i64* @all_chains_ptr, align 8
  store i64 0, i64* @all_chains_len, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @conf_init(i8* %9)
  store i8* null, i8** %3, align 8
  %11 = call i8* (...) @HT_new()
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %4, align 8
  store i64 0, i64* %5, align 8
  br label %13

13:                                               ; preds = %55, %33, %1
  %14 = call i64 (...) @conf_next_line()
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %56

17:                                               ; preds = %13
  %18 = call i8* (...) @parse_header_name()
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = load i8*, i8** %3, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load i8*, i8** %3, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @parse_object(i8* %25, i32* %26, i64 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @HT_clear(i32* %29, i32 (i8*)* @xfree)
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @xfree(i8* %31)
  br label %33

33:                                               ; preds = %24, %21
  %34 = load i8*, i8** %6, align 8
  store i8* %34, i8** %3, align 8
  %35 = load i64, i64* @current_linenum, align 8
  store i64 %35, i64* %5, align 8
  br label %13

36:                                               ; preds = %17
  %37 = load i8*, i8** %3, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32, i32* @stderr, align 4
  %41 = load i64, i64* @current_linenum, align 8
  %42 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = load i32, i32* @EXIT_FAILURE, align 4
  %44 = call i32 @exit(i32 %43) #3
  unreachable

45:                                               ; preds = %36
  %46 = load i32*, i32** %4, align 8
  %47 = call i64 @parse_keyvalue(i32* %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i32, i32* @stderr, align 4
  %51 = load i64, i64* @current_linenum, align 8
  %52 = call i32 @fprintf(i32 %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %51)
  %53 = load i32, i32* @EXIT_FAILURE, align 4
  %54 = call i32 @exit(i32 %53) #3
  unreachable

55:                                               ; preds = %45
  br label %13

56:                                               ; preds = %16
  %57 = load i8*, i8** %3, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load i8*, i8** %3, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @parse_object(i8* %60, i32* %61, i64 %62)
  %64 = load i8*, i8** %3, align 8
  %65 = call i32 @xfree(i8* %64)
  br label %66

66:                                               ; preds = %59, %56
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @HT_free(i32* %67, i32 (i8*)* @xfree)
  %69 = call i32 (...) @conf_close()
  ret void
}

declare dso_local i8* @HT_new(...) #1

declare dso_local i32 @conf_init(i8*) #1

declare dso_local i64 @conf_next_line(...) #1

declare dso_local i8* @parse_header_name(...) #1

declare dso_local i32 @parse_object(i8*, i32*, i64) #1

declare dso_local i32 @HT_clear(i32*, i32 (i8*)*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @parse_keyvalue(i32*) #1

declare dso_local i32 @HT_free(i32*, i32 (i8*)*) #1

declare dso_local i32 @conf_close(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
