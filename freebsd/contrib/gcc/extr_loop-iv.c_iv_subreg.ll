; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_iv_subreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_iv_subreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtx_iv = type { i64, i32, i32, i64, i32, i64, i8*, i8* }

@const0_rtx = common dso_local global i64 0, align 8
@UNKNOWN = common dso_local global i8* null, align 8
@const1_rtx = common dso_local global i8* null, align 8
@PLUS = common dso_local global i32 0, align 4
@MULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtx_iv*, i32)* @iv_subreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iv_subreg(%struct.rtx_iv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtx_iv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.rtx_iv* %0, %struct.rtx_iv** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %8 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @const0_rtx, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %44

12:                                               ; preds = %2
  %13 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %14 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %44, label %17

17:                                               ; preds = %12
  %18 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %19 = load i64, i64* @const0_rtx, align 8
  %20 = call i64 @get_iv_value(%struct.rtx_iv* %18, i64 %19)
  store i64 %20, i64* %6, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %24 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @lowpart_subreg(i32 %21, i64 %22, i32 %25)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %29 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %28, i32 0, i32 3
  store i64 %27, i64* %29, align 8
  %30 = load i8*, i8** @UNKNOWN, align 8
  %31 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %32 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %31, i32 0, i32 7
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %35 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %37 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %36, i32 0, i32 4
  store i32 %33, i32* %37, align 8
  %38 = load i64, i64* @const0_rtx, align 8
  %39 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %40 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %39, i32 0, i32 5
  store i64 %38, i64* %40, align 8
  %41 = load i8*, i8** @const1_rtx, align 8
  %42 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %43 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %42, i32 0, i32 6
  store i8* %41, i8** %43, align 8
  store i32 1, i32* %3, align 4
  br label %111

44:                                               ; preds = %12, %2
  %45 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %46 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %111

51:                                               ; preds = %44
  %52 = load i32, i32* %5, align 4
  %53 = call i64 @GET_MODE_BITSIZE(i32 %52)
  %54 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %55 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @GET_MODE_BITSIZE(i32 %56)
  %58 = icmp sgt i64 %53, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %111

60:                                               ; preds = %51
  %61 = load i8*, i8** @UNKNOWN, align 8
  %62 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %63 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %62, i32 0, i32 7
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %66 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @PLUS, align 4
  %68 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %69 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %72 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* @MULT, align 4
  %75 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %76 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %79 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %82 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %81, i32 0, i32 6
  %83 = load i8*, i8** %82, align 8
  %84 = call i8* @simplify_gen_binary(i32 %74, i32 %77, i64 %80, i8* %83)
  %85 = call i8* @simplify_gen_binary(i32 %67, i32 %70, i64 %73, i8* %84)
  %86 = ptrtoint i8* %85 to i64
  %87 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %88 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %87, i32 0, i32 3
  store i64 %86, i64* %88, align 8
  %89 = load i32, i32* @MULT, align 4
  %90 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %91 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %94 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %97 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %96, i32 0, i32 6
  %98 = load i8*, i8** %97, align 8
  %99 = call i8* @simplify_gen_binary(i32 %89, i32 %92, i64 %95, i8* %98)
  %100 = ptrtoint i8* %99 to i64
  %101 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %102 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load i8*, i8** @const1_rtx, align 8
  %104 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %105 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %104, i32 0, i32 6
  store i8* %103, i8** %105, align 8
  %106 = load i64, i64* @const0_rtx, align 8
  %107 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %108 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %107, i32 0, i32 5
  store i64 %106, i64* %108, align 8
  %109 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %110 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %109, i32 0, i32 1
  store i32 0, i32* %110, align 8
  store i32 1, i32* %3, align 4
  br label %111

111:                                              ; preds = %60, %59, %50, %17
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i64 @get_iv_value(%struct.rtx_iv*, i64) #1

declare dso_local i64 @lowpart_subreg(i32, i64, i32) #1

declare dso_local i64 @GET_MODE_BITSIZE(i32) #1

declare dso_local i8* @simplify_gen_binary(i32, i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
