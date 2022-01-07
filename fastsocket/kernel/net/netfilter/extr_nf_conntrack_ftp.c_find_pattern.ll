; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_ftp.c_find_pattern.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_ftp.c_find_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_man = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"find_pattern `%s': dlen = %Zu\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Pattern matches!\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Skipped up to `%c'!\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Match succeeded!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i64, i8, i8, i32*, i32*, %struct.nf_conntrack_man*, i32 (i8*, i64, %struct.nf_conntrack_man*, i8)*)* @find_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_pattern(i8* %0, i64 %1, i8* %2, i64 %3, i8 signext %4, i8 signext %5, i32* %6, i32* %7, %struct.nf_conntrack_man* %8, i32 (i8*, i64, %struct.nf_conntrack_man*, i8)* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.nf_conntrack_man*, align 8
  %21 = alloca i32 (i8*, i64, %struct.nf_conntrack_man*, i8)*, align 8
  %22 = alloca i64, align 8
  store i8* %0, i8** %12, align 8
  store i64 %1, i64* %13, align 8
  store i8* %2, i8** %14, align 8
  store i64 %3, i64* %15, align 8
  store i8 %4, i8* %16, align 1
  store i8 %5, i8* %17, align 1
  store i32* %6, i32** %18, align 8
  store i32* %7, i32** %19, align 8
  store %struct.nf_conntrack_man* %8, %struct.nf_conntrack_man** %20, align 8
  store i32 (i8*, i64, %struct.nf_conntrack_man*, i8)* %9, i32 (i8*, i64, %struct.nf_conntrack_man*, i8)** %21, align 8
  %23 = load i8*, i8** %14, align 8
  %24 = load i64, i64* %13, align 8
  %25 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %23, i64 %24)
  %26 = load i64, i64* %13, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %10
  store i32 0, i32* %11, align 4
  br label %96

29:                                               ; preds = %10
  %30 = load i64, i64* %13, align 8
  %31 = load i64, i64* %15, align 8
  %32 = icmp ule i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load i8*, i8** %12, align 8
  %35 = load i8*, i8** %14, align 8
  %36 = load i64, i64* %13, align 8
  %37 = call i64 @strnicmp(i8* %34, i8* %35, i64 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 -1, i32* %11, align 4
  br label %96

40:                                               ; preds = %33
  store i32 0, i32* %11, align 4
  br label %96

41:                                               ; preds = %29
  %42 = load i8*, i8** %12, align 8
  %43 = load i8*, i8** %14, align 8
  %44 = load i64, i64* %15, align 8
  %45 = call i64 @strnicmp(i8* %42, i8* %43, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 0, i32* %11, align 4
  br label %96

48:                                               ; preds = %41
  %49 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i64, i64* %15, align 8
  store i64 %50, i64* %22, align 8
  br label %51

51:                                               ; preds = %67, %48
  %52 = load i8*, i8** %12, align 8
  %53 = load i64, i64* %22, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = load i8, i8* %16, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %56, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %51
  %61 = load i64, i64* %22, align 8
  %62 = load i64, i64* %13, align 8
  %63 = sub i64 %62, 1
  %64 = icmp eq i64 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 -1, i32* %11, align 4
  br label %96

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %22, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %22, align 8
  br label %51

70:                                               ; preds = %51
  %71 = load i64, i64* %22, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %22, align 8
  %73 = load i8, i8* %16, align 1
  %74 = sext i8 %73 to i32
  %75 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load i64, i64* %22, align 8
  %77 = trunc i64 %76 to i32
  %78 = load i32*, i32** %18, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i32 (i8*, i64, %struct.nf_conntrack_man*, i8)*, i32 (i8*, i64, %struct.nf_conntrack_man*, i8)** %21, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = load i64, i64* %22, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = load i64, i64* %13, align 8
  %84 = load i64, i64* %22, align 8
  %85 = sub i64 %83, %84
  %86 = load %struct.nf_conntrack_man*, %struct.nf_conntrack_man** %20, align 8
  %87 = load i8, i8* %17, align 1
  %88 = call i32 %79(i8* %82, i64 %85, %struct.nf_conntrack_man* %86, i8 signext %87)
  %89 = load i32*, i32** %19, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i32*, i32** %19, align 8
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %70
  store i32 -1, i32* %11, align 4
  br label %96

94:                                               ; preds = %70
  %95 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %96

96:                                               ; preds = %94, %93, %65, %47, %40, %39, %28
  %97 = load i32, i32* %11, align 4
  ret i32 %97
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i64 @strnicmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
