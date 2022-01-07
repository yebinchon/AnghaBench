; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu2.c_read_op_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu2.c_read_op_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_data = type { i8*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"::operator \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.demangle_data*)* @read_op_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_op_user(%struct.demangle_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.demangle_data*, align 8
  %4 = alloca %struct.demangle_data, align 8
  %5 = alloca %struct.demangle_data, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.demangle_data* %0, %struct.demangle_data** %3, align 8
  %11 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %12 = icmp eq %struct.demangle_data* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %124

14:                                               ; preds = %1
  %15 = call i32 @init_demangle_data(%struct.demangle_data* %4)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %124

18:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %19 = call i32 @init_demangle_data(%struct.demangle_data* %5)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %116

22:                                               ; preds = %18
  %23 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %24 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %5, i32 0, i32 0
  store i8* %25, i8** %26, align 8
  %27 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %5, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 81
  br i1 %31, label %32, label %45

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %5, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %33, align 8
  %36 = call i32 @read_qual_name(%struct.demangle_data* %5)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %116

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %5, i32 0, i32 1
  %41 = call i32 @vector_str_pop(i32* %40)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %116

44:                                               ; preds = %39
  br label %53

45:                                               ; preds = %22
  %46 = call i32 @read_class(%struct.demangle_data* %5)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %116

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %5, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  store i8* %52, i8** %50, align 8
  br label %53

53:                                               ; preds = %49, %44
  %54 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %5, i32 0, i32 1
  %55 = call i8* @vector_str_get_flat(i32* %54, i64* %7)
  store i8* %55, i8** %10, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %116

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %5, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 0
  store i8* %60, i8** %61, align 8
  %62 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 81
  br i1 %66, label %67, label %80

67:                                               ; preds = %58
  %68 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %68, align 8
  %71 = call i32 @read_qual_name(%struct.demangle_data* %4)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %116

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 1
  %76 = call i32 @vector_str_pop(i32* %75)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %116

79:                                               ; preds = %74
  br label %85

80:                                               ; preds = %58
  %81 = call i32 @read_class(%struct.demangle_data* %4)
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %116

84:                                               ; preds = %80
  br label %85

85:                                               ; preds = %84, %79
  %86 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 1
  %87 = call i8* @vector_str_get_flat(i32* %86, i64* %6)
  store i8* %87, i8** %9, align 8
  %88 = icmp eq i8* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %116

90:                                               ; preds = %85
  %91 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %92 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %91, i32 0, i32 1
  %93 = load i8*, i8** %9, align 8
  %94 = load i64, i64* %6, align 8
  %95 = call i32 @vector_str_push(i32* %92, i8* %93, i64 %94)
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %116

98:                                               ; preds = %90
  %99 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %100 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %99, i32 0, i32 1
  %101 = call i32 @VEC_PUSH_STR(i32* %100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %116

104:                                              ; preds = %98
  %105 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %106 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %105, i32 0, i32 1
  %107 = load i8*, i8** %10, align 8
  %108 = load i64, i64* %7, align 8
  %109 = call i32 @vector_str_push(i32* %106, i8* %107, i64 %108)
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %116

112:                                              ; preds = %104
  %113 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %114 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %113, i32 0, i32 1
  %115 = call i32 @VEC_PUSH_STR(i32* %114, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %115, i32* %8, align 4
  br label %116

116:                                              ; preds = %112, %111, %103, %97, %89, %83, %78, %73, %57, %48, %43, %38, %21
  %117 = load i8*, i8** %10, align 8
  %118 = call i32 @free(i8* %117)
  %119 = load i8*, i8** %9, align 8
  %120 = call i32 @free(i8* %119)
  %121 = call i32 @dest_demangle_data(%struct.demangle_data* %5)
  %122 = call i32 @dest_demangle_data(%struct.demangle_data* %4)
  %123 = load i32, i32* %8, align 4
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %116, %17, %13
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i32 @init_demangle_data(%struct.demangle_data*) #1

declare dso_local i32 @read_qual_name(%struct.demangle_data*) #1

declare dso_local i32 @vector_str_pop(i32*) #1

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
