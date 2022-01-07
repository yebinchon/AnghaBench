; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu2.c_read_memptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu2.c_read_memptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_data = type { i8*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"::*\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.demangle_data*)* @read_memptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_memptr(%struct.demangle_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.demangle_data*, align 8
  %4 = alloca %struct.demangle_data, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.demangle_data* %0, %struct.demangle_data** %3, align 8
  %8 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %9 = icmp eq %struct.demangle_data* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %12 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %72

16:                                               ; preds = %10
  %17 = call i32 @init_demangle_data(%struct.demangle_data* %4)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %72

20:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  store i8* null, i8** %7, align 8
  %21 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %22 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 0
  store i8* %23, i8** %24, align 8
  %25 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 81
  br i1 %29, label %30, label %38

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %31, align 8
  %34 = call i32 @read_qual_name(%struct.demangle_data* %4)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %67

37:                                               ; preds = %30
  br label %43

38:                                               ; preds = %20
  %39 = call i32 @read_class(%struct.demangle_data* %4)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %67

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %42, %37
  %44 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %47 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 1
  %49 = call i8* @vector_str_get_flat(i32* %48, i64* %5)
  store i8* %49, i8** %7, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %67

52:                                               ; preds = %43
  %53 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %54 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %53, i32 0, i32 1
  %55 = load i8*, i8** %7, align 8
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @vector_str_push(i32* %54, i8* %55, i64 %56)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %67

60:                                               ; preds = %52
  %61 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %62 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %61, i32 0, i32 1
  %63 = call i32 @VEC_PUSH_STR(i32* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %67

66:                                               ; preds = %60
  store i32 1, i32* %6, align 4
  br label %67

67:                                               ; preds = %66, %65, %59, %51, %41, %36
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @free(i8* %68)
  %70 = call i32 @dest_demangle_data(%struct.demangle_data* %4)
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %67, %19, %15
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @init_demangle_data(%struct.demangle_data*) #1

declare dso_local i32 @read_qual_name(%struct.demangle_data*) #1

declare dso_local i32 @read_class(%struct.demangle_data*) #1

declare dso_local i8* @vector_str_get_flat(i32*, i64*) #1

declare dso_local i32 @vector_str_push(i32*, i8*, i64) #1

declare dso_local i32 @VEC_PUSH_STR(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @dest_demangle_data(%struct.demangle_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
