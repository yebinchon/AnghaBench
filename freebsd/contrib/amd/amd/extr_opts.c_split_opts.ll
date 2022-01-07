; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_opts.c_split_opts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_opts.c_split_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opt = type { i8*, i8**, i64 }

@opt_fields = common dso_local global %struct.opt* null, align 8
@XLOG_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"key %s: Can't assign to a selector (%s)\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"key %s: Unrecognized key/option \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @split_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @split_opts(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.opt*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %6, align 8
  %12 = call i8* @opt(i8** %6)
  store i8* %12, i8** %7, align 8
  br label %13

13:                                               ; preds = %102, %2
  %14 = load i8*, i8** %7, align 8
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %104

17:                                               ; preds = %13
  %18 = load i8*, i8** %7, align 8
  %19 = call i8* @strchr(i8* %18, i8 signext 61)
  store i8* %19, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %102

23:                                               ; preds = %17
  %24 = load i8*, i8** %9, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 -1
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 33
  br i1 %28, label %41, label %29

29:                                               ; preds = %23
  %30 = load i8*, i8** %9, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 61
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load i8*, i8** %9, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 33
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %29, %23
  br label %102

42:                                               ; preds = %35
  %43 = load i8*, i8** %9, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 -1
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 58
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i8*, i8** %9, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 -1
  store i8 0, i8* %50, align 1
  br label %54

51:                                               ; preds = %42
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  store i8 0, i8* %53, align 1
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i8*, i8** %9, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  store i8* %56, i8** %10, align 8
  %57 = load %struct.opt*, %struct.opt** @opt_fields, align 8
  store %struct.opt* %57, %struct.opt** %8, align 8
  br label %58

58:                                               ; preds = %88, %54
  %59 = load %struct.opt*, %struct.opt** %8, align 8
  %60 = getelementptr inbounds %struct.opt, %struct.opt* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %91

63:                                               ; preds = %58
  %64 = load %struct.opt*, %struct.opt** %8, align 8
  %65 = getelementptr inbounds %struct.opt, %struct.opt* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = call i64 @FSTREQ(i8* %66, i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %63
  %71 = load %struct.opt*, %struct.opt** %8, align 8
  %72 = getelementptr inbounds %struct.opt, %struct.opt* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load i32, i32* @XLOG_USER, align 4
  %77 = load i8*, i8** %5, align 8
  %78 = load %struct.opt*, %struct.opt** %8, align 8
  %79 = getelementptr inbounds %struct.opt, %struct.opt* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @plog(i32 %76, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %77, i8* %80)
  store i32 0, i32* %3, align 4
  br label %105

82:                                               ; preds = %70
  %83 = load i8*, i8** %10, align 8
  %84 = load %struct.opt*, %struct.opt** %8, align 8
  %85 = getelementptr inbounds %struct.opt, %struct.opt* %84, i32 0, i32 1
  %86 = load i8**, i8*** %85, align 8
  store i8* %83, i8** %86, align 8
  br label %91

87:                                               ; preds = %63
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.opt*, %struct.opt** %8, align 8
  %90 = getelementptr inbounds %struct.opt, %struct.opt* %89, i32 1
  store %struct.opt* %90, %struct.opt** %8, align 8
  br label %58

91:                                               ; preds = %82, %58
  %92 = load %struct.opt*, %struct.opt** %8, align 8
  %93 = getelementptr inbounds %struct.opt, %struct.opt* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %101, label %96

96:                                               ; preds = %91
  %97 = load i32, i32* @XLOG_USER, align 4
  %98 = load i8*, i8** %5, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = call i32 @plog(i32 %97, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %98, i8* %99)
  br label %101

101:                                              ; preds = %96, %91
  br label %102

102:                                              ; preds = %101, %41, %22
  %103 = call i8* @opt(i8** %6)
  store i8* %103, i8** %7, align 8
  br label %13

104:                                              ; preds = %13
  store i32 1, i32* %3, align 4
  br label %105

105:                                              ; preds = %104, %75
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i8* @opt(i8**) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @FSTREQ(i8*, i8*) #1

declare dso_local i32 @plog(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
