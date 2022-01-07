; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hostfs/extr_hostfs_kern.c_follow_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hostfs/extr_hostfs_kern.c_follow_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @follow_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @follow_link(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 64, i32* %4, align 4
  br label %9

9:                                                ; preds = %1, %27
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kmalloc(i32 %12, i32 %13)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %80

18:                                               ; preds = %9
  %19 = load i8*, i8** %3, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @hostfs_do_readlink(i8* %19, i8* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %32

27:                                               ; preds = %18
  %28 = load i32, i32* %4, align 4
  %29 = mul nsw i32 %28, 2
  store i32 %29, i32* %4, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @kfree(i8* %30)
  br label %9

32:                                               ; preds = %26
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %77

36:                                               ; preds = %32
  %37 = load i8*, i8** %6, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 47
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i8*, i8** %6, align 8
  store i8* %42, i8** %2, align 8
  br label %83

43:                                               ; preds = %36
  %44 = load i8*, i8** %3, align 8
  %45 = call i8* @strrchr(i8* %44, i8 signext 47)
  store i8* %45, i8** %8, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i8*, i8** %6, align 8
  store i8* %49, i8** %2, align 8
  br label %83

50:                                               ; preds = %43
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  store i8 0, i8* %52, align 1
  %53 = load i8*, i8** %3, align 8
  %54 = call i32 @strlen(i8* %53)
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @strlen(i8* %55)
  %57 = add nsw i32 %54, %56
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i8* @kmalloc(i32 %59, i32 %60)
  store i8* %61, i8** %7, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %50
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %77

67:                                               ; preds = %50
  %68 = load i8*, i8** %7, align 8
  %69 = load i8*, i8** %3, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @sprintf(i8* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %69, i8* %70)
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @kfree(i8* %72)
  %74 = load i8*, i8** %3, align 8
  %75 = call i32 @kfree(i8* %74)
  %76 = load i8*, i8** %7, align 8
  store i8* %76, i8** %2, align 8
  br label %83

77:                                               ; preds = %64, %35
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 @kfree(i8* %78)
  br label %80

80:                                               ; preds = %77, %17
  %81 = load i32, i32* %5, align 4
  %82 = call i8* @ERR_PTR(i32 %81)
  store i8* %82, i8** %2, align 8
  br label %83

83:                                               ; preds = %80, %67, %48, %41
  %84 = load i8*, i8** %2, align 8
  ret i8* %84
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @hostfs_do_readlink(i8*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
