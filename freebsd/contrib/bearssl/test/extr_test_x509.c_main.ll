; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_x509.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_x509.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFFILE = common dso_local global i32 0, align 4
@max_dp_usage = common dso_local global i64 0, align 8
@max_rp_usage = common dso_local global i64 0, align 8
@all_chains_ptr = common dso_local global i64 0, align 8
@all_chains = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"Maximum data stack usage:    %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Maximum return stack usage:  %u\0A\00", align 1
@keys = common dso_local global i32 0, align 4
@free_key = common dso_local global i32 0, align 4
@trust_anchors = common dso_local global i32 0, align 4
@free_trust_anchor = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i8**, i8*** %5, align 8
  %9 = load i32, i32* @CONFFILE, align 4
  %10 = call i32 @process_conf_file(i32 %9)
  store i64 0, i64* @max_dp_usage, align 8
  store i64 0, i64* @max_rp_usage, align 8
  store i64 0, i64* %6, align 8
  br label %11

11:                                               ; preds = %20, %2
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @all_chains_ptr, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = load i8*, i8** @all_chains, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  %19 = call i32 @run_test_case(i8* %18)
  br label %20

20:                                               ; preds = %15
  %21 = load i64, i64* %6, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %6, align 8
  br label %11

23:                                               ; preds = %11
  %24 = call i32 (...) @test_name_extraction()
  %25 = load i64, i64* @max_dp_usage, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i64, i64* @max_rp_usage, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @keys, align 4
  %32 = load i32, i32* @free_key, align 4
  %33 = call i32 @HT_free(i32 %31, i32 %32)
  %34 = load i32, i32* @trust_anchors, align 4
  %35 = load i32, i32* @free_trust_anchor, align 4
  %36 = call i32 @HT_free(i32 %34, i32 %35)
  store i64 0, i64* %6, align 8
  br label %37

37:                                               ; preds = %46, %23
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @all_chains_ptr, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load i8*, i8** @all_chains, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = call i32 @free_test_case_contents(i8* %44)
  br label %46

46:                                               ; preds = %41
  %47 = load i64, i64* %6, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %6, align 8
  br label %37

49:                                               ; preds = %37
  %50 = load i8*, i8** @all_chains, align 8
  %51 = call i32 @xfree(i8* %50)
  ret i32 0
}

declare dso_local i32 @process_conf_file(i32) #1

declare dso_local i32 @run_test_case(i8*) #1

declare dso_local i32 @test_name_extraction(...) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @HT_free(i32, i32) #1

declare dso_local i32 @free_test_case_contents(i8*) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
