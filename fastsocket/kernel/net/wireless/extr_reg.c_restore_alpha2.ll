; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_restore_alpha2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_restore_alpha2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [57 x i8] c"Restoring regulatory settings including user preference\0A\00", align 1
@user_alpha2 = common dso_local global i8* null, align 8
@ieee80211_regdom = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [63 x i8] c"Keeping preference on module parameter ieee80211_regdom: %c%c\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"Restoring regulatory settings while preserving user preference for: %c%c\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Restoring regulatory settings\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @restore_alpha2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_alpha2(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8*, i8** %3, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 0
  store i8 57, i8* %6, align 1
  %7 = load i8*, i8** %3, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 1
  store i8 55, i8* %8, align 1
  %9 = call i64 (...) @is_user_regdom_saved()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %65

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %44

14:                                               ; preds = %11
  %15 = call i32 (i8*, ...) @REG_DBG_PRINT(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %16 = load i8*, i8** @user_alpha2, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  store i8 57, i8* %17, align 1
  %18 = load i8*, i8** @user_alpha2, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  store i8 55, i8* %19, align 1
  %20 = load i8*, i8** @ieee80211_regdom, align 8
  %21 = call i32 @is_world_regdom(i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %43, label %23

23:                                               ; preds = %14
  %24 = load i8*, i8** @ieee80211_regdom, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = load i8*, i8** @ieee80211_regdom, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = call i32 (i8*, ...) @REG_DBG_PRINT(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %31)
  %33 = load i8*, i8** @ieee80211_regdom, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = load i8*, i8** %3, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  store i8 %35, i8* %37, align 1
  %38 = load i8*, i8** @ieee80211_regdom, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  store i8 %40, i8* %42, align 1
  br label %43

43:                                               ; preds = %23, %14
  br label %64

44:                                               ; preds = %11
  %45 = load i8*, i8** @user_alpha2, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = load i8*, i8** @user_alpha2, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = call i32 (i8*, ...) @REG_DBG_PRINT(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 %48, i32 %52)
  %54 = load i8*, i8** @user_alpha2, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = load i8*, i8** %3, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  store i8 %56, i8* %58, align 1
  %59 = load i8*, i8** @user_alpha2, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load i8, i8* %60, align 1
  %62 = load i8*, i8** %3, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  store i8 %61, i8* %63, align 1
  br label %64

64:                                               ; preds = %44, %43
  br label %92

65:                                               ; preds = %2
  %66 = load i8*, i8** @ieee80211_regdom, align 8
  %67 = call i32 @is_world_regdom(i8* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %89, label %69

69:                                               ; preds = %65
  %70 = load i8*, i8** @ieee80211_regdom, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = load i8*, i8** @ieee80211_regdom, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = call i32 (i8*, ...) @REG_DBG_PRINT(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %77)
  %79 = load i8*, i8** @ieee80211_regdom, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = load i8*, i8** %3, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  store i8 %81, i8* %83, align 1
  %84 = load i8*, i8** @ieee80211_regdom, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = load i8, i8* %85, align 1
  %87 = load i8*, i8** %3, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  store i8 %86, i8* %88, align 1
  br label %91

89:                                               ; preds = %65
  %90 = call i32 (i8*, ...) @REG_DBG_PRINT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %69
  br label %92

92:                                               ; preds = %91, %64
  ret void
}

declare dso_local i64 @is_user_regdom_saved(...) #1

declare dso_local i32 @REG_DBG_PRINT(i8*, ...) #1

declare dso_local i32 @is_world_regdom(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
