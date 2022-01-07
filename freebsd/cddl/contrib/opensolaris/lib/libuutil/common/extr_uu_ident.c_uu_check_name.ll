; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libuutil/common/extr_uu_ident.c_uu_check_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libuutil/common/extr_uu_ident.c_uu_check_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UU_NAME_DOMAIN = common dso_local global i32 0, align 4
@UU_NAME_PATH = common dso_local global i32 0, align 4
@UU_ERROR_UNKNOWN_FLAG = common dso_local global i32 0, align 4
@UU_ERROR_INVALID_ARGUMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uu_check_name(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @strlen(i8* %9)
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %8, i64 %11
  store i8* %12, i8** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @UU_NAME_DOMAIN, align 4
  %15 = load i32, i32* @UU_NAME_PATH, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = and i32 %13, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @UU_ERROR_UNKNOWN_FLAG, align 4
  %22 = call i32 @uu_set_error(i32 %21)
  store i32 -1, i32* %3, align 4
  br label %63

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @UU_NAME_PATH, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = load i8*, i8** %4, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @is_valid_component(i8* %29, i8* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %60

35:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %63

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %49, %36
  %38 = load i8*, i8** %4, align 8
  %39 = call i8* @strchr(i8* %38, i8 signext 47)
  store i8* %39, i8** %7, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load i8*, i8** %4, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 -1
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @is_valid_component(i8* %42, i8* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  br label %60

49:                                               ; preds = %41
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  store i8* %51, i8** %4, align 8
  br label %37

52:                                               ; preds = %37
  %53 = load i8*, i8** %4, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @is_valid_component(i8* %53, i8* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  br label %60

59:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %63

60:                                               ; preds = %58, %48, %34
  %61 = load i32, i32* @UU_ERROR_INVALID_ARGUMENT, align 4
  %62 = call i32 @uu_set_error(i32 %61)
  store i32 -1, i32* %3, align 4
  br label %63

63:                                               ; preds = %60, %59, %35, %20
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @uu_set_error(i32) #1

declare dso_local i32 @is_valid_component(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
