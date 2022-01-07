; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_build_omp_regions_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_build_omp_regions_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omp_region = type { i64, i8*, %struct.omp_region*, i8* }

@OMP_RETURN = common dso_local global i32 0, align 4
@OMP_PARALLEL = common dso_local global i64 0, align 8
@OMP_CONTINUE = common dso_local global i32 0, align 4
@CDI_DOMINATORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.omp_region*)* @build_omp_regions_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_omp_regions_1(i8* %0, %struct.omp_region* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.omp_region*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.omp_region*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.omp_region* %1, %struct.omp_region** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @bsi_last(i8* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @bsi_end_p(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %65, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @bsi_stmt(i32 %16)
  %18 = call i64 @OMP_DIRECTIVE_P(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %65

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @bsi_stmt(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @TREE_CODE(i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @OMP_RETURN, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %20
  %29 = load %struct.omp_region*, %struct.omp_region** %4, align 8
  %30 = call i32 @gcc_assert(%struct.omp_region* %29)
  %31 = load %struct.omp_region*, %struct.omp_region** %4, align 8
  store %struct.omp_region* %31, %struct.omp_region** %8, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = load %struct.omp_region*, %struct.omp_region** %8, align 8
  %34 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load %struct.omp_region*, %struct.omp_region** %4, align 8
  %36 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %35, i32 0, i32 2
  %37 = load %struct.omp_region*, %struct.omp_region** %36, align 8
  store %struct.omp_region* %37, %struct.omp_region** %4, align 8
  %38 = load %struct.omp_region*, %struct.omp_region** %8, align 8
  %39 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @OMP_PARALLEL, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %28
  %44 = load %struct.omp_region*, %struct.omp_region** %8, align 8
  %45 = call i32 @determine_parallel_type(%struct.omp_region* %44)
  br label %46

46:                                               ; preds = %43, %28
  br label %64

47:                                               ; preds = %20
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @OMP_CONTINUE, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load %struct.omp_region*, %struct.omp_region** %4, align 8
  %53 = call i32 @gcc_assert(%struct.omp_region* %52)
  %54 = load i8*, i8** %3, align 8
  %55 = load %struct.omp_region*, %struct.omp_region** %4, align 8
  %56 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  br label %63

57:                                               ; preds = %47
  %58 = load i8*, i8** %3, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.omp_region*, %struct.omp_region** %4, align 8
  %61 = call %struct.omp_region* @new_omp_region(i8* %58, i32 %59, %struct.omp_region* %60)
  store %struct.omp_region* %61, %struct.omp_region** %8, align 8
  %62 = load %struct.omp_region*, %struct.omp_region** %8, align 8
  store %struct.omp_region* %62, %struct.omp_region** %4, align 8
  br label %63

63:                                               ; preds = %57, %51
  br label %64

64:                                               ; preds = %63, %46
  br label %65

65:                                               ; preds = %64, %15, %2
  %66 = load i32, i32* @CDI_DOMINATORS, align 4
  %67 = load i8*, i8** %3, align 8
  %68 = call i8* @first_dom_son(i32 %66, i8* %67)
  store i8* %68, i8** %7, align 8
  br label %69

69:                                               ; preds = %75, %65
  %70 = load i8*, i8** %7, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load i8*, i8** %7, align 8
  %74 = load %struct.omp_region*, %struct.omp_region** %4, align 8
  call void @build_omp_regions_1(i8* %73, %struct.omp_region* %74)
  br label %75

75:                                               ; preds = %72
  %76 = load i32, i32* @CDI_DOMINATORS, align 4
  %77 = load i8*, i8** %7, align 8
  %78 = call i8* @next_dom_son(i32 %76, i8* %77)
  store i8* %78, i8** %7, align 8
  br label %69

79:                                               ; preds = %69
  ret void
}

declare dso_local i32 @bsi_last(i8*) #1

declare dso_local i32 @bsi_end_p(i32) #1

declare dso_local i64 @OMP_DIRECTIVE_P(i32) #1

declare dso_local i32 @bsi_stmt(i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @gcc_assert(%struct.omp_region*) #1

declare dso_local i32 @determine_parallel_type(%struct.omp_region*) #1

declare dso_local %struct.omp_region* @new_omp_region(i8*, i32, %struct.omp_region*) #1

declare dso_local i8* @first_dom_son(i32, i8*) #1

declare dso_local i8* @next_dom_son(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
