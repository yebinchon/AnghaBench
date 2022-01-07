; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_dump_iv_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_dump_iv_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtx_iv = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [11 x i8] c"not simple\00", align 1
@const0_rtx = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"invariant \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" + \00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c" * iteration\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" (in %s)\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c" %s to %s\00", align 1
@rtx_name = common dso_local global i8** null, align 8
@const1_rtx = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c" * \00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c" (first special)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_iv_info(i32* %0, %struct.rtx_iv* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.rtx_iv*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.rtx_iv* %1, %struct.rtx_iv** %4, align 8
  %5 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %6 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 (i32*, i8*, ...) @fprintf(i32* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %110

12:                                               ; preds = %2
  %13 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %14 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @const0_rtx, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %12
  %19 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %20 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %19, i32 0, i32 7
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 (i32*, i8*, ...) @fprintf(i32* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %18, %12
  %27 = load i32*, i32** %3, align 8
  %28 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %29 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @print_rtl(i32* %27, i64 %30)
  %32 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %33 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @const0_rtx, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %26
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 (i32*, i8*, ...) @fprintf(i32* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32*, i32** %3, align 8
  %41 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %42 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @print_rtl(i32* %40, i64 %43)
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 (i32*, i8*, ...) @fprintf(i32* %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %47

47:                                               ; preds = %37, %26
  %48 = load i32*, i32** %3, align 8
  %49 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %50 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = call i8* @GET_MODE_NAME(i64 %51)
  %53 = call i32 (i32*, i8*, ...) @fprintf(i32* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %52)
  %54 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %55 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %58 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %47
  %62 = load i32*, i32** %3, align 8
  %63 = load i8**, i8*** @rtx_name, align 8
  %64 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %65 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i8*, i8** %63, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %70 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = call i8* @GET_MODE_NAME(i64 %71)
  %73 = call i32 (i32*, i8*, ...) @fprintf(i32* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %68, i8* %72)
  br label %74

74:                                               ; preds = %61, %47
  %75 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %76 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @const1_rtx, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %74
  %81 = load i32*, i32** %3, align 8
  %82 = call i32 (i32*, i8*, ...) @fprintf(i32* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %83 = load i32*, i32** %3, align 8
  %84 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %85 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @print_rtl(i32* %83, i64 %86)
  br label %88

88:                                               ; preds = %80, %74
  %89 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %90 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %89, i32 0, i32 6
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @const0_rtx, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %88
  %95 = load i32*, i32** %3, align 8
  %96 = call i32 (i32*, i8*, ...) @fprintf(i32* %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %97 = load i32*, i32** %3, align 8
  %98 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %99 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %98, i32 0, i32 6
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @print_rtl(i32* %97, i64 %100)
  br label %102

102:                                              ; preds = %94, %88
  %103 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %104 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %103, i32 0, i32 7
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i32*, i32** %3, align 8
  %109 = call i32 (i32*, i8*, ...) @fprintf(i32* %108, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %110

110:                                              ; preds = %9, %107, %102
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @print_rtl(i32*, i64) #1

declare dso_local i8* @GET_MODE_NAME(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
