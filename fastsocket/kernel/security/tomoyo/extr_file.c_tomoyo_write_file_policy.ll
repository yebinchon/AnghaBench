; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_file.c_tomoyo_write_file_policy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_file.c_tomoyo_write_file_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_domain_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"allow_\00", align 1
@TOMOYO_MAX_SINGLE_PATH_OPERATION = common dso_local global i64 0, align 8
@tomoyo_sp_keyword = common dso_local global i32* null, align 8
@TOMOYO_MAX_DOUBLE_PATH_OPERATION = common dso_local global i64 0, align 8
@tomoyo_dp_keyword = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tomoyo_write_file_policy(i8* %0, %struct.tomoyo_domain_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tomoyo_domain_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store %struct.tomoyo_domain_info* %1, %struct.tomoyo_domain_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i8* @strchr(i8* %12, i8 signext 32)
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %98

19:                                               ; preds = %3
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %8, align 8
  store i8 0, i8* %20, align 1
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @sscanf(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %10)
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %10, align 4
  %28 = zext i32 %27 to i64
  %29 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @tomoyo_update_file_acl(i8* %26, i64 %28, %struct.tomoyo_domain_info* %29, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %98

32:                                               ; preds = %19
  %33 = load i8*, i8** %5, align 8
  %34 = call i64 @strncmp(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %95

37:                                               ; preds = %32
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 6
  store i8* %39, i8** %5, align 8
  store i64 0, i64* %11, align 8
  br label %40

40:                                               ; preds = %59, %37
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* @TOMOYO_MAX_SINGLE_PATH_OPERATION, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %40
  %45 = load i8*, i8** %5, align 8
  %46 = load i32*, i32** @tomoyo_sp_keyword, align 8
  %47 = load i64, i64* %11, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @strcmp(i8* %45, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %59

53:                                               ; preds = %44
  %54 = load i64, i64* %11, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @tomoyo_update_single_path_acl(i64 %54, i8* %55, %struct.tomoyo_domain_info* %56, i32 %57)
  store i32 %58, i32* %4, align 4
  br label %98

59:                                               ; preds = %52
  %60 = load i64, i64* %11, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %11, align 8
  br label %40

62:                                               ; preds = %40
  %63 = load i8*, i8** %8, align 8
  %64 = call i8* @strchr(i8* %63, i8 signext 32)
  store i8* %64, i8** %9, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  br label %95

68:                                               ; preds = %62
  %69 = load i8*, i8** %9, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %9, align 8
  store i8 0, i8* %69, align 1
  store i64 0, i64* %11, align 8
  br label %71

71:                                               ; preds = %91, %68
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* @TOMOYO_MAX_DOUBLE_PATH_OPERATION, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %94

75:                                               ; preds = %71
  %76 = load i8*, i8** %5, align 8
  %77 = load i32*, i32** @tomoyo_dp_keyword, align 8
  %78 = load i64, i64* %11, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @strcmp(i8* %76, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %91

84:                                               ; preds = %75
  %85 = load i64, i64* %11, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %6, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @tomoyo_update_double_path_acl(i64 %85, i8* %86, i8* %87, %struct.tomoyo_domain_info* %88, i32 %89)
  store i32 %90, i32* %4, align 4
  br label %98

91:                                               ; preds = %83
  %92 = load i64, i64* %11, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %11, align 8
  br label %71

94:                                               ; preds = %71
  br label %95

95:                                               ; preds = %94, %67, %36
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %95, %84, %53, %25, %16
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @tomoyo_update_file_acl(i8*, i64, %struct.tomoyo_domain_info*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @tomoyo_update_single_path_acl(i64, i8*, %struct.tomoyo_domain_info*, i32) #1

declare dso_local i32 @tomoyo_update_double_path_acl(i64, i8*, i8*, %struct.tomoyo_domain_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
