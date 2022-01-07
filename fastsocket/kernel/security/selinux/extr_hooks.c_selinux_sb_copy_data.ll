; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_sb_copy_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_sb_copy_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @selinux_sb_copy_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_sb_copy_data(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %14, align 4
  %16 = load i8*, i8** %3, align 8
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %4, align 8
  store i8* %17, i8** %11, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i64 @get_zeroed_page(i32 %18)
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %13, align 8
  %21 = load i8*, i8** %13, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %87

26:                                               ; preds = %2
  %27 = load i8*, i8** %13, align 8
  store i8* %27, i8** %12, align 8
  store i32 1, i32* %6, align 4
  store i32 1, i32* %5, align 4
  %28 = load i8*, i8** %3, align 8
  store i8* %28, i8** %10, align 8
  store i8* %28, i8** %8, align 8
  br label %29

29:                                               ; preds = %75, %26
  %30 = load i8*, i8** %10, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 34
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %14, align 4
  br label %39

39:                                               ; preds = %34, %29
  %40 = load i8*, i8** %10, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 44
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* %14, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %44, %39
  %48 = load i8*, i8** %10, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %74

52:                                               ; preds = %47, %44
  %53 = load i8*, i8** %10, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = ptrtoint i8* %53 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %15, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = load i32, i32* %15, align 4
  %61 = call i64 @selinux_option(i8* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %52
  %64 = load i8*, i8** %9, align 8
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @take_selinux_option(i8** %11, i8* %64, i32* %6, i32 %65)
  br label %71

67:                                               ; preds = %52
  %68 = load i8*, i8** %9, align 8
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @take_option(i8** %13, i8* %68, i32* %5, i32 %69)
  br label %71

71:                                               ; preds = %67, %63
  %72 = load i8*, i8** %10, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  store i8* %73, i8** %9, align 8
  br label %74

74:                                               ; preds = %71, %47
  br label %75

75:                                               ; preds = %74
  %76 = load i8*, i8** %10, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %10, align 8
  %78 = load i8, i8* %76, align 1
  %79 = icmp ne i8 %78, 0
  br i1 %79, label %29, label %80

80:                                               ; preds = %75
  %81 = load i8*, i8** %8, align 8
  %82 = load i8*, i8** %12, align 8
  %83 = call i32 @strcpy(i8* %81, i8* %82)
  %84 = load i8*, i8** %12, align 8
  %85 = ptrtoint i8* %84 to i64
  %86 = call i32 @free_page(i64 %85)
  br label %87

87:                                               ; preds = %80, %23
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i64 @selinux_option(i8*, i32) #1

declare dso_local i32 @take_selinux_option(i8**, i8*, i32*, i32) #1

declare dso_local i32 @take_option(i8**, i8*, i32*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
