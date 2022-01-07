; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/smack/extr_smack_lsm.c_smack_sb_copy_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/smack/extr_smack_lsm.c_smack_sb_copy_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SMK_FSDEFAULT = common dso_local global i32 0, align 4
@SMK_FSFLOOR = common dso_local global i32 0, align 4
@SMK_FSHAT = common dso_local global i32 0, align 4
@SMK_FSROOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @smack_sb_copy_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smack_sb_copy_data(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i64 @get_zeroed_page(i32 %10)
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %90

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %4, align 8
  store i8* %20, i8** %7, align 8
  br label %21

21:                                               ; preds = %80, %18
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %83

24:                                               ; preds = %21
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* @SMK_FSDEFAULT, align 4
  %27 = call i8* @strstr(i8* %25, i32 %26)
  %28 = load i8*, i8** %6, align 8
  %29 = icmp eq i8* %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i8*, i8** %5, align 8
  store i8* %31, i8** %9, align 8
  br label %61

32:                                               ; preds = %24
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* @SMK_FSFLOOR, align 4
  %35 = call i8* @strstr(i8* %33, i32 %34)
  %36 = load i8*, i8** %6, align 8
  %37 = icmp eq i8* %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i8*, i8** %5, align 8
  store i8* %39, i8** %9, align 8
  br label %60

40:                                               ; preds = %32
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* @SMK_FSHAT, align 4
  %43 = call i8* @strstr(i8* %41, i32 %42)
  %44 = load i8*, i8** %6, align 8
  %45 = icmp eq i8* %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i8*, i8** %5, align 8
  store i8* %47, i8** %9, align 8
  br label %59

48:                                               ; preds = %40
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* @SMK_FSROOT, align 4
  %51 = call i8* @strstr(i8* %49, i32 %50)
  %52 = load i8*, i8** %6, align 8
  %53 = icmp eq i8* %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i8*, i8** %5, align 8
  store i8* %55, i8** %9, align 8
  br label %58

56:                                               ; preds = %48
  %57 = load i8*, i8** %8, align 8
  store i8* %57, i8** %9, align 8
  br label %58

58:                                               ; preds = %56, %54
  br label %59

59:                                               ; preds = %58, %46
  br label %60

60:                                               ; preds = %59, %38
  br label %61

61:                                               ; preds = %60, %30
  %62 = load i8*, i8** %6, align 8
  %63 = call i8* @strchr(i8* %62, i8 signext 44)
  store i8* %63, i8** %7, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i8*, i8** %7, align 8
  store i8 0, i8* %67, align 1
  br label %68

68:                                               ; preds = %66, %61
  %69 = load i8*, i8** %9, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i8*, i8** %9, align 8
  %75 = call i32 @strcat(i8* %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %68
  %77 = load i8*, i8** %9, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 @strcat(i8* %77, i8* %78)
  br label %80

80:                                               ; preds = %76
  %81 = load i8*, i8** %7, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  store i8* %82, i8** %6, align 8
  br label %21

83:                                               ; preds = %21
  %84 = load i8*, i8** %4, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 @strcpy(i8* %84, i8* %85)
  %87 = load i8*, i8** %8, align 8
  %88 = ptrtoint i8* %87 to i64
  %89 = call i32 @free_page(i64 %88)
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %83, %15
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i8* @strstr(i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
