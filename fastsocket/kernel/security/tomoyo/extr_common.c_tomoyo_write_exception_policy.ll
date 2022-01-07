; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_common.c_tomoyo_write_exception_policy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_common.c_tomoyo_write_exception_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_io_buffer = type { i8* }

@TOMOYO_KEYWORD_DELETE = common dso_local global i32 0, align 4
@TOMOYO_KEYWORD_KEEP_DOMAIN = common dso_local global i32 0, align 4
@TOMOYO_KEYWORD_NO_KEEP_DOMAIN = common dso_local global i32 0, align 4
@TOMOYO_KEYWORD_INITIALIZE_DOMAIN = common dso_local global i32 0, align 4
@TOMOYO_KEYWORD_NO_INITIALIZE_DOMAIN = common dso_local global i32 0, align 4
@TOMOYO_KEYWORD_ALIAS = common dso_local global i32 0, align 4
@TOMOYO_KEYWORD_ALLOW_READ = common dso_local global i32 0, align 4
@TOMOYO_KEYWORD_FILE_PATTERN = common dso_local global i32 0, align 4
@TOMOYO_KEYWORD_DENY_REWRITE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tomoyo_io_buffer*)* @tomoyo_write_exception_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_write_exception_policy(%struct.tomoyo_io_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tomoyo_io_buffer*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.tomoyo_io_buffer* %0, %struct.tomoyo_io_buffer** %3, align 8
  %6 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %7 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %4, align 8
  %9 = load i32, i32* @TOMOYO_KEYWORD_DELETE, align 4
  %10 = call i32 @tomoyo_str_starts(i8** %4, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @TOMOYO_KEYWORD_KEEP_DOMAIN, align 4
  %12 = call i32 @tomoyo_str_starts(i8** %4, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @tomoyo_write_domain_keeper_policy(i8* %15, i32 0, i32 %16)
  store i32 %17, i32* %2, align 4
  br label %77

18:                                               ; preds = %1
  %19 = load i32, i32* @TOMOYO_KEYWORD_NO_KEEP_DOMAIN, align 4
  %20 = call i32 @tomoyo_str_starts(i8** %4, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @tomoyo_write_domain_keeper_policy(i8* %23, i32 1, i32 %24)
  store i32 %25, i32* %2, align 4
  br label %77

26:                                               ; preds = %18
  %27 = load i32, i32* @TOMOYO_KEYWORD_INITIALIZE_DOMAIN, align 4
  %28 = call i32 @tomoyo_str_starts(i8** %4, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i8*, i8** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @tomoyo_write_domain_initializer_policy(i8* %31, i32 0, i32 %32)
  store i32 %33, i32* %2, align 4
  br label %77

34:                                               ; preds = %26
  %35 = load i32, i32* @TOMOYO_KEYWORD_NO_INITIALIZE_DOMAIN, align 4
  %36 = call i32 @tomoyo_str_starts(i8** %4, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @tomoyo_write_domain_initializer_policy(i8* %39, i32 1, i32 %40)
  store i32 %41, i32* %2, align 4
  br label %77

42:                                               ; preds = %34
  %43 = load i32, i32* @TOMOYO_KEYWORD_ALIAS, align 4
  %44 = call i32 @tomoyo_str_starts(i8** %4, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i8*, i8** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @tomoyo_write_alias_policy(i8* %47, i32 %48)
  store i32 %49, i32* %2, align 4
  br label %77

50:                                               ; preds = %42
  %51 = load i32, i32* @TOMOYO_KEYWORD_ALLOW_READ, align 4
  %52 = call i32 @tomoyo_str_starts(i8** %4, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i8*, i8** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @tomoyo_write_globally_readable_policy(i8* %55, i32 %56)
  store i32 %57, i32* %2, align 4
  br label %77

58:                                               ; preds = %50
  %59 = load i32, i32* @TOMOYO_KEYWORD_FILE_PATTERN, align 4
  %60 = call i32 @tomoyo_str_starts(i8** %4, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i8*, i8** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @tomoyo_write_pattern_policy(i8* %63, i32 %64)
  store i32 %65, i32* %2, align 4
  br label %77

66:                                               ; preds = %58
  %67 = load i32, i32* @TOMOYO_KEYWORD_DENY_REWRITE, align 4
  %68 = call i32 @tomoyo_str_starts(i8** %4, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i8*, i8** %4, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @tomoyo_write_no_rewrite_policy(i8* %71, i32 %72)
  store i32 %73, i32* %2, align 4
  br label %77

74:                                               ; preds = %66
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %74, %70, %62, %54, %46, %38, %30, %22, %14
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @tomoyo_str_starts(i8**, i32) #1

declare dso_local i32 @tomoyo_write_domain_keeper_policy(i8*, i32, i32) #1

declare dso_local i32 @tomoyo_write_domain_initializer_policy(i8*, i32, i32) #1

declare dso_local i32 @tomoyo_write_alias_policy(i8*, i32) #1

declare dso_local i32 @tomoyo_write_globally_readable_policy(i8*, i32) #1

declare dso_local i32 @tomoyo_write_pattern_policy(i8*, i32) #1

declare dso_local i32 @tomoyo_write_no_rewrite_policy(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
