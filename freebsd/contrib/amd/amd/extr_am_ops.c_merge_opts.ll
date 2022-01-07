; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_am_ops.c_merge_opts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_am_ops.c_merge_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @merge_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @merge_opts(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [80 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = add nsw i32 %14, %16
  %18 = add nsw i32 %17, 2
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %11, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = call i8* @xstrdup(i8* %20)
  store i8* %21, i8** %12, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i8* %22, i8** %23, align 8
  %24 = load i64, i64* %11, align 8
  %25 = call i8* @xmalloc(i64 %24)
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  store i8 0, i8* %27, align 1
  %28 = load i8*, i8** %12, align 8
  %29 = call i8* @strtok(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %29, i8** %7, align 8
  br label %30

30:                                               ; preds = %72, %2
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %74

33:                                               ; preds = %30
  %34 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @xstrlcpy(i8* %34, i8* %35, i64 80)
  %37 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %38 = call i8* @strchr(i8* %37, i8 signext 61)
  store i8* %38, i8** %8, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i8*, i8** %8, align 8
  store i8 0, i8* %41, align 1
  br label %42

42:                                               ; preds = %40, %33
  %43 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %44 = call i8* @reverse_option(i8* %43)
  store i8* %44, i8** %10, align 8
  %45 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %46 = call i64 @amu_hasmntopt(%struct.TYPE_3__* %5, i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = load i8*, i8** %10, align 8
  %50 = call i64 @amu_hasmntopt(%struct.TYPE_3__* %5, i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48, %42
  br label %72

53:                                               ; preds = %48
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = icmp ne i8 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load i8*, i8** %6, align 8
  %60 = load i64, i64* %11, align 8
  %61 = call i32 @xstrlcat(i8* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %60)
  %62 = load i8*, i8** %6, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load i64, i64* %11, align 8
  %65 = call i32 @xstrlcat(i8* %62, i8* %63, i64 %64)
  br label %71

66:                                               ; preds = %53
  %67 = load i8*, i8** %6, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = load i64, i64* %11, align 8
  %70 = call i32 @xstrlcpy(i8* %67, i8* %68, i64 %69)
  br label %71

71:                                               ; preds = %66, %58
  br label %72

72:                                               ; preds = %71, %52
  %73 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %73, i8** %7, align 8
  br label %30

74:                                               ; preds = %30
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = icmp ne i8 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load i8*, i8** %6, align 8
  %81 = load i64, i64* %11, align 8
  %82 = call i32 @xstrlcat(i8* %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %81)
  %83 = load i8*, i8** %6, align 8
  %84 = load i8*, i8** %4, align 8
  %85 = load i64, i64* %11, align 8
  %86 = call i32 @xstrlcat(i8* %83, i8* %84, i64 %85)
  br label %92

87:                                               ; preds = %74
  %88 = load i8*, i8** %6, align 8
  %89 = load i8*, i8** %4, align 8
  %90 = load i64, i64* %11, align 8
  %91 = call i32 @xstrlcpy(i8* %88, i8* %89, i64 %90)
  br label %92

92:                                               ; preds = %87, %79
  %93 = load i8*, i8** %12, align 8
  %94 = call i32 @XFREE(i8* %93)
  %95 = load i8*, i8** %6, align 8
  ret i8* %95
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @xstrlcpy(i8*, i8*, i64) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @reverse_option(i8*) #1

declare dso_local i64 @amu_hasmntopt(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @xstrlcat(i8*, i8*, i64) #1

declare dso_local i32 @XFREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
