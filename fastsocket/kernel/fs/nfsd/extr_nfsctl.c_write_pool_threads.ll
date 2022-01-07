; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsctl.c_write_pool_threads.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsctl.c_write_pool_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@nfsd_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SIMPLE_TRANSACTION_LIMIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%d%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i64)* @write_pool_threads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_pool_threads(%struct.file* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %8, align 8
  %15 = call i32 @mutex_lock(i32* @nfsd_mutex)
  %16 = call i32 (...) @nfsd_nrpools()
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = call i32 @mutex_unlock(i32* @nfsd_mutex)
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @strcpy(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @strlen(i8* %23)
  store i32 %24, i32* %4, align 4
  br label %139

25:                                               ; preds = %3
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32* @kcalloc(i32 %26, i32 4, i32 %27)
  store i32* %28, i32** %13, align 8
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %10, align 4
  %31 = load i32*, i32** %13, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %134

34:                                               ; preds = %25
  %35 = load i64, i64* %7, align 8
  %36 = icmp ugt i64 %35, 0
  br i1 %36, label %37, label %79

37:                                               ; preds = %34
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %68, %37
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %71

42:                                               ; preds = %38
  %43 = load i32*, i32** %13, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = call i32 @get_int(i8** %8, i32* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @ENOENT, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %71

53:                                               ; preds = %42
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %134

57:                                               ; preds = %53
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %10, align 4
  %60 = load i32*, i32** %13, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %134

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %38

71:                                               ; preds = %52, %38
  %72 = load i32, i32* %9, align 4
  %73 = load i32*, i32** %13, align 8
  %74 = call i32 @nfsd_set_nrthreads(i32 %72, i32* %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %134

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %78, %34
  %80 = load i32, i32* %12, align 4
  %81 = load i32*, i32** %13, align 8
  %82 = call i32 @nfsd_get_nrthreads(i32 %80, i32* %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %134

86:                                               ; preds = %79
  %87 = load i8*, i8** %6, align 8
  store i8* %87, i8** %8, align 8
  %88 = load i64, i64* @SIMPLE_TRANSACTION_LIMIT, align 8
  store i64 %88, i64* %7, align 8
  store i32 0, i32* %9, align 4
  br label %89

89:                                               ; preds = %124, %86
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i64, i64* %7, align 8
  %95 = icmp ugt i64 %94, 0
  br label %96

96:                                               ; preds = %93, %89
  %97 = phi i1 [ false, %89 ], [ %95, %93 ]
  br i1 %97, label %98, label %127

98:                                               ; preds = %96
  %99 = load i8*, i8** %8, align 8
  %100 = load i64, i64* %7, align 8
  %101 = load i32*, i32** %13, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %12, align 4
  %108 = sub nsw i32 %107, 1
  %109 = icmp eq i32 %106, %108
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 10, i32 32
  %112 = trunc i32 %111 to i8
  %113 = call i32 @snprintf(i8* %99, i64 %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %105, i8 signext %112)
  %114 = load i8*, i8** %8, align 8
  %115 = call i32 @strlen(i8* %114)
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = load i64, i64* %7, align 8
  %119 = sub i64 %118, %117
  store i64 %119, i64* %7, align 8
  %120 = load i32, i32* %11, align 4
  %121 = load i8*, i8** %8, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i8, i8* %121, i64 %122
  store i8* %123, i8** %8, align 8
  br label %124

124:                                              ; preds = %98
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %9, align 4
  br label %89

127:                                              ; preds = %96
  %128 = load i8*, i8** %8, align 8
  %129 = load i8*, i8** %6, align 8
  %130 = ptrtoint i8* %128 to i64
  %131 = ptrtoint i8* %129 to i64
  %132 = sub i64 %130, %131
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %10, align 4
  br label %134

134:                                              ; preds = %127, %85, %77, %66, %56, %33
  %135 = load i32*, i32** %13, align 8
  %136 = call i32 @kfree(i32* %135)
  %137 = call i32 @mutex_unlock(i32* @nfsd_mutex)
  %138 = load i32, i32* %10, align 4
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %134, %19
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nfsd_nrpools(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @get_int(i8**, i32*) #1

declare dso_local i32 @nfsd_set_nrthreads(i32, i32*) #1

declare dso_local i32 @nfsd_get_nrthreads(i32, i32*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32, i8 signext) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
