; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_use_related_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_use_related_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_elt = type { i64, i64, %struct.table_elt*, %struct.table_elt* }

@CONST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.table_elt*)* @use_related_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @use_related_value(i64 %0, %struct.table_elt* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.table_elt*, align 8
  %6 = alloca %struct.table_elt*, align 8
  %7 = alloca %struct.table_elt*, align 8
  %8 = alloca %struct.table_elt*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.table_elt* %1, %struct.table_elt** %5, align 8
  store %struct.table_elt* null, %struct.table_elt** %6, align 8
  %11 = load %struct.table_elt*, %struct.table_elt** %5, align 8
  %12 = icmp ne %struct.table_elt* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.table_elt*, %struct.table_elt** %5, align 8
  %15 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load %struct.table_elt*, %struct.table_elt** %5, align 8
  store %struct.table_elt* %19, %struct.table_elt** %6, align 8
  br label %44

20:                                               ; preds = %13, %2
  %21 = load %struct.table_elt*, %struct.table_elt** %5, align 8
  %22 = icmp eq %struct.table_elt* %21, null
  br i1 %22, label %23, label %43

23:                                               ; preds = %20
  %24 = load i64, i64* %4, align 8
  %25 = call i64 @GET_CODE(i64 %24)
  %26 = load i64, i64* @CONST, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %23
  %29 = load i64, i64* %4, align 8
  %30 = call i64 @get_related_value(i64 %29)
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %10, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @GET_MODE(i64 %36)
  %38 = call i32 @SAFE_HASH(i64 %35, i32 %37)
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @GET_MODE(i64 %39)
  %41 = call %struct.table_elt* @lookup(i64 %34, i32 %38, i32 %40)
  store %struct.table_elt* %41, %struct.table_elt** %6, align 8
  br label %42

42:                                               ; preds = %33, %28
  br label %43

43:                                               ; preds = %42, %23, %20
  br label %44

44:                                               ; preds = %43, %18
  %45 = load %struct.table_elt*, %struct.table_elt** %6, align 8
  %46 = icmp eq %struct.table_elt* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i64 0, i64* %3, align 8
  br label %112

48:                                               ; preds = %44
  %49 = load %struct.table_elt*, %struct.table_elt** %6, align 8
  store %struct.table_elt* %49, %struct.table_elt** %7, align 8
  br label %50

50:                                               ; preds = %48, %94
  %51 = load i64, i64* %4, align 8
  %52 = load %struct.table_elt*, %struct.table_elt** %7, align 8
  %53 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @rtx_equal_p(i64 %51, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store %struct.table_elt* null, %struct.table_elt** %8, align 8
  br label %78

58:                                               ; preds = %50
  %59 = load %struct.table_elt*, %struct.table_elt** %7, align 8
  %60 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %59, i32 0, i32 3
  %61 = load %struct.table_elt*, %struct.table_elt** %60, align 8
  store %struct.table_elt* %61, %struct.table_elt** %8, align 8
  br label %62

62:                                               ; preds = %73, %58
  %63 = load %struct.table_elt*, %struct.table_elt** %8, align 8
  %64 = icmp ne %struct.table_elt* %63, null
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = load %struct.table_elt*, %struct.table_elt** %8, align 8
  %67 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @REG_P(i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %77

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.table_elt*, %struct.table_elt** %8, align 8
  %75 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %74, i32 0, i32 2
  %76 = load %struct.table_elt*, %struct.table_elt** %75, align 8
  store %struct.table_elt* %76, %struct.table_elt** %8, align 8
  br label %62

77:                                               ; preds = %71, %62
  br label %78

78:                                               ; preds = %77, %57
  %79 = load %struct.table_elt*, %struct.table_elt** %8, align 8
  %80 = icmp ne %struct.table_elt* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  br label %95

82:                                               ; preds = %78
  %83 = load %struct.table_elt*, %struct.table_elt** %7, align 8
  %84 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to %struct.table_elt*
  store %struct.table_elt* %86, %struct.table_elt** %7, align 8
  %87 = load %struct.table_elt*, %struct.table_elt** %7, align 8
  %88 = load %struct.table_elt*, %struct.table_elt** %6, align 8
  %89 = icmp eq %struct.table_elt* %87, %88
  br i1 %89, label %93, label %90

90:                                               ; preds = %82
  %91 = load %struct.table_elt*, %struct.table_elt** %7, align 8
  %92 = icmp eq %struct.table_elt* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %90, %82
  br label %95

94:                                               ; preds = %90
  br label %50

95:                                               ; preds = %93, %81
  %96 = load %struct.table_elt*, %struct.table_elt** %8, align 8
  %97 = icmp eq %struct.table_elt* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i64 0, i64* %3, align 8
  br label %112

99:                                               ; preds = %95
  %100 = load i64, i64* %4, align 8
  %101 = call i64 @get_integer_term(i64 %100)
  %102 = load %struct.table_elt*, %struct.table_elt** %7, align 8
  %103 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = call i64 @get_integer_term(i64 %104)
  %106 = sub nsw i64 %101, %105
  store i64 %106, i64* %9, align 8
  %107 = load %struct.table_elt*, %struct.table_elt** %8, align 8
  %108 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %9, align 8
  %111 = call i64 @plus_constant(i64 %109, i64 %110)
  store i64 %111, i64* %3, align 8
  br label %112

112:                                              ; preds = %99, %98, %47
  %113 = load i64, i64* %3, align 8
  ret i64 %113
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @get_related_value(i64) #1

declare dso_local %struct.table_elt* @lookup(i64, i32, i32) #1

declare dso_local i32 @SAFE_HASH(i64, i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @rtx_equal_p(i64, i64) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @get_integer_term(i64) #1

declare dso_local i64 @plus_constant(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
