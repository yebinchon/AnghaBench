; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_super.c_parse_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_super.c_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.adfs_sb_info = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@tokens = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"ADFS-fs: unrecognised mount option \22%s\22 or missing value\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*)* @parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_options(%struct.super_block* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.adfs_sb_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load %struct.super_block*, %struct.super_block** %4, align 8
  %14 = call %struct.adfs_sb_info* @ADFS_SB(%struct.super_block* %13)
  store %struct.adfs_sb_info* %14, %struct.adfs_sb_info** %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %87

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %85, %82, %18
  %20 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %20, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %86

22:                                               ; preds = %19
  %23 = load i32, i32* @MAX_OPT_ARGS, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %9, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %10, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  store i32 2, i32* %12, align 4
  br label %82

31:                                               ; preds = %22
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* @tokens, align 4
  %34 = call i32 @match_token(i8* %32, i32 %33, i32* %26)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  switch i32 %35, label %76 [
    i32 128, label %36
    i32 131, label %46
    i32 129, label %56
    i32 130, label %66
  ]

36:                                               ; preds = %31
  %37 = call i32 @match_int(i32* %26, i32* %8)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %82

42:                                               ; preds = %36
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %7, align 8
  %45 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %81

46:                                               ; preds = %31
  %47 = call i32 @match_int(i32* %26, i32* %8)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %82

52:                                               ; preds = %46
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %7, align 8
  %55 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %81

56:                                               ; preds = %31
  %57 = call i32 @match_octal(i32* %26, i32* %8)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %82

62:                                               ; preds = %56
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %7, align 8
  %65 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  br label %81

66:                                               ; preds = %31
  %67 = call i32 @match_octal(i32* %26, i32* %8)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %82

72:                                               ; preds = %66
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %7, align 8
  %75 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  br label %81

76:                                               ; preds = %31
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 @printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i8* %77)
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %82

81:                                               ; preds = %72, %62, %52, %42
  store i32 0, i32* %12, align 4
  br label %82

82:                                               ; preds = %81, %76, %69, %59, %49, %39, %30
  %83 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %12, align 4
  switch i32 %84, label %89 [
    i32 0, label %85
    i32 2, label %19
    i32 1, label %87
  ]

85:                                               ; preds = %82
  br label %19

86:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %82, %17
  %88 = load i32, i32* %3, align 4
  ret i32 %88

89:                                               ; preds = %82
  unreachable
}

declare dso_local %struct.adfs_sb_info* @ADFS_SB(%struct.super_block*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @match_token(i8*, i32, i32*) #1

declare dso_local i32 @match_int(i32*, i32*) #1

declare dso_local i32 @match_octal(i32*, i32*) #1

declare dso_local i32 @printk(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
