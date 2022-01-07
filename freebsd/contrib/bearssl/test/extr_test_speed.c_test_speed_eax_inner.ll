; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_speed.c_test_speed_eax_inner.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_speed.c_test_speed_eax_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32*, i8*, i64)* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"%-30s UNAVAILABLE\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@CLOCKS_PER_SEC = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"%-30s %8.2f MB/s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_4__*, i64)* @test_speed_eax_inner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_speed_eax_inner(i8* %0, %struct.TYPE_4__* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [8192 x i8], align 16
  %8 = alloca [32 x i8], align 16
  %9 = alloca [16 x i8], align 16
  %10 = alloca [16 x i8], align 16
  %11 = alloca [16 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_5__, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca double, align 8
  %19 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i64 %2, i64* %6, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = icmp eq %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* @stdout, align 4
  %26 = call i32 @fflush(i32 %25)
  br label %116

27:                                               ; preds = %3
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %29 = load i64, i64* %6, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @memset(i8* %28, i8 signext 75, i32 %30)
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %33 = call i32 @memset(i8* %32, i8 signext 78, i32 16)
  %34 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %35 = call i32 @memset(i8* %34, i8 signext 65, i32 16)
  %36 = getelementptr inbounds [8192 x i8], [8192 x i8]* %7, i64 0, i64 0
  %37 = call i32 @memset(i8* %36, i8 signext 84, i32 8192)
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %60, %27
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %39, 10
  br i1 %40, label %41, label %63

41:                                               ; preds = %38
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32 (i32*, i8*, i64)*, i32 (i32*, i8*, i64)** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %46 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %47 = load i64, i64* %6, align 8
  %48 = call i32 %44(i32* %45, i8* %46, i64 %47)
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %50 = call i32 @br_eax_init(i32* %15, i32* %49)
  %51 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %52 = call i32 @br_eax_reset(i32* %15, i8* %51, i32 16)
  %53 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %54 = call i32 @br_eax_aad_inject(i32* %15, i8* %53, i32 16)
  %55 = call i32 @br_eax_flip(i32* %15)
  %56 = getelementptr inbounds [8192 x i8], [8192 x i8]* %7, i64 0, i64 0
  %57 = call i32 @br_eax_run(i32* %15, i32 1, i8* %56, i32 8192)
  %58 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %59 = call i32 @br_eax_get_tag(i32* %15, i8* %58)
  br label %60

60:                                               ; preds = %41
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %12, align 4
  br label %38

63:                                               ; preds = %38
  store i64 10, i64* %13, align 8
  br label %64

64:                                               ; preds = %113, %63
  %65 = call i64 (...) @clock()
  store i64 %65, i64* %16, align 8
  %66 = load i64, i64* %13, align 8
  store i64 %66, i64* %19, align 8
  br label %67

67:                                               ; preds = %89, %64
  %68 = load i64, i64* %19, align 8
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %92

70:                                               ; preds = %67
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32 (i32*, i8*, i64)*, i32 (i32*, i8*, i64)** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %75 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %76 = load i64, i64* %6, align 8
  %77 = call i32 %73(i32* %74, i8* %75, i64 %76)
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %79 = call i32 @br_eax_init(i32* %15, i32* %78)
  %80 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %81 = call i32 @br_eax_reset(i32* %15, i8* %80, i32 16)
  %82 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %83 = call i32 @br_eax_aad_inject(i32* %15, i8* %82, i32 16)
  %84 = call i32 @br_eax_flip(i32* %15)
  %85 = getelementptr inbounds [8192 x i8], [8192 x i8]* %7, i64 0, i64 0
  %86 = call i32 @br_eax_run(i32* %15, i32 1, i8* %85, i32 8192)
  %87 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %88 = call i32 @br_eax_get_tag(i32* %15, i8* %87)
  br label %89

89:                                               ; preds = %70
  %90 = load i64, i64* %19, align 8
  %91 = add nsw i64 %90, -1
  store i64 %91, i64* %19, align 8
  br label %67

92:                                               ; preds = %67
  %93 = call i64 (...) @clock()
  store i64 %93, i64* %17, align 8
  %94 = load i64, i64* %17, align 8
  %95 = load i64, i64* %16, align 8
  %96 = sub nsw i64 %94, %95
  %97 = sitofp i64 %96 to double
  %98 = load double, double* @CLOCKS_PER_SEC, align 8
  %99 = fdiv double %97, %98
  store double %99, double* %18, align 8
  %100 = load double, double* %18, align 8
  %101 = fcmp oge double %100, 2.000000e+00
  br i1 %101, label %102, label %113

102:                                              ; preds = %92
  %103 = load i8*, i8** %4, align 8
  %104 = load i64, i64* %13, align 8
  %105 = sitofp i64 %104 to double
  %106 = fmul double 8.192000e+03, %105
  %107 = load double, double* %18, align 8
  %108 = fmul double %107, 1.000000e+06
  %109 = fdiv double %106, %108
  %110 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %103, double %109)
  %111 = load i32, i32* @stdout, align 4
  %112 = call i32 @fflush(i32 %111)
  br label %116

113:                                              ; preds = %92
  %114 = load i64, i64* %13, align 8
  %115 = shl i64 %114, 1
  store i64 %115, i64* %13, align 8
  br label %64

116:                                              ; preds = %102, %22
  ret void
}

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @br_eax_init(i32*, i32*) #1

declare dso_local i32 @br_eax_reset(i32*, i8*, i32) #1

declare dso_local i32 @br_eax_aad_inject(i32*, i8*, i32) #1

declare dso_local i32 @br_eax_flip(i32*) #1

declare dso_local i32 @br_eax_run(i32*, i32, i8*, i32) #1

declare dso_local i32 @br_eax_get_tag(i32*, i8*) #1

declare dso_local i64 @clock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
