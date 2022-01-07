; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_note_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_note_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"CORE\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"LINUX\00", align 1
@ET_CORE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"GNU\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"NetBSD\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"OpenBSD\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"Xen\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i32)* @note_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @note_type(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @strcmp(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %11, %3
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @ET_CORE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = call i8* @note_type_linux_core(i32 %20)
  store i8* %21, i8** %4, align 8
  br label %88

22:                                               ; preds = %15, %11
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @ET_CORE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = call i8* @note_type_freebsd_core(i32 %31)
  store i8* %32, i8** %4, align 8
  br label %88

33:                                               ; preds = %26
  %34 = load i32, i32* %7, align 4
  %35 = call i8* @note_type_freebsd(i32 %34)
  store i8* %35, i8** %4, align 8
  br label %88

36:                                               ; preds = %22
  %37 = load i8*, i8** %5, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @ET_CORE, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = call i8* @note_type_gnu(i32 %45)
  store i8* %46, i8** %4, align 8
  br label %88

47:                                               ; preds = %40, %36
  %48 = load i8*, i8** %5, align 8
  %49 = call i64 @strcmp(i8* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @ET_CORE, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* %7, align 4
  %57 = call i8* @note_type_netbsd(i32 %56)
  store i8* %57, i8** %4, align 8
  br label %88

58:                                               ; preds = %51, %47
  %59 = load i8*, i8** %5, align 8
  %60 = call i64 @strcmp(i8* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @ET_CORE, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* %7, align 4
  %68 = call i8* @note_type_openbsd(i32 %67)
  store i8* %68, i8** %4, align 8
  br label %88

69:                                               ; preds = %62, %58
  %70 = load i8*, i8** %5, align 8
  %71 = call i64 @strcmp(i8* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @ET_CORE, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* %7, align 4
  %79 = call i8* @note_type_xen(i32 %78)
  store i8* %79, i8** %4, align 8
  br label %88

80:                                               ; preds = %73, %69
  br label %81

81:                                               ; preds = %80
  br label %82

82:                                               ; preds = %81
  br label %83

83:                                               ; preds = %82
  br label %84

84:                                               ; preds = %83
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %7, align 4
  %87 = call i8* @note_type_unknown(i32 %86)
  store i8* %87, i8** %4, align 8
  br label %88

88:                                               ; preds = %85, %77, %66, %55, %44, %33, %30, %19
  %89 = load i8*, i8** %4, align 8
  ret i8* %89
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @note_type_linux_core(i32) #1

declare dso_local i8* @note_type_freebsd_core(i32) #1

declare dso_local i8* @note_type_freebsd(i32) #1

declare dso_local i8* @note_type_gnu(i32) #1

declare dso_local i8* @note_type_netbsd(i32) #1

declare dso_local i8* @note_type_openbsd(i32) #1

declare dso_local i8* @note_type_xen(i32) #1

declare dso_local i8* @note_type_unknown(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
