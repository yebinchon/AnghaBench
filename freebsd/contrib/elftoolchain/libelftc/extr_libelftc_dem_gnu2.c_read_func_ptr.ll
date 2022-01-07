; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu2.c_read_func_ptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu2.c_read_func_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_data = type { i8*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" const\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@CPP_DEMANGLE_GNU2_TRY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c" (*)(\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.demangle_data*)* @read_func_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_func_ptr(%struct.demangle_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.demangle_data*, align 8
  %4 = alloca %struct.demangle_data, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.demangle_data* %0, %struct.demangle_data** %3, align 8
  %10 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %11 = icmp eq %struct.demangle_data* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %155

13:                                               ; preds = %1
  %14 = call i32 @init_demangle_data(%struct.demangle_data* %4)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %155

17:                                               ; preds = %13
  %18 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %19 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 0
  store i8* %21, i8** %22, align 8
  store i32 0, i32* %9, align 4
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  br label %23

23:                                               ; preds = %84, %17
  %24 = call i32 @read_type(%struct.demangle_data* %4)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 @dest_demangle_data(%struct.demangle_data* %4)
  store i32 0, i32* %2, align 4
  br label %155

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 4
  %34 = call i32 @VEC_PUSH_STR(i32* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i32 @dest_demangle_data(%struct.demangle_data* %4)
  store i32 0, i32* %2, align 4
  br label %155

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 1
  store i32 0, i32* %39, align 8
  br label %40

40:                                               ; preds = %38, %28
  %41 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 4
  %46 = call i32 @VEC_PUSH_STR(i32* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = call i32 @dest_demangle_data(%struct.demangle_data* %4)
  store i32 0, i32* %2, align 4
  br label %155

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 2
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %50, %40
  %53 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 4
  %58 = call i32 @VEC_PUSH_STR(i32* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = call i32 @dest_demangle_data(%struct.demangle_data* %4)
  store i32 0, i32* %2, align 4
  br label %155

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 3
  store i32 0, i32* %63, align 8
  br label %64

64:                                               ; preds = %62, %52
  %65 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 95
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %85

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 4
  %73 = call i32 @VEC_PUSH_STR(i32* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = call i32 @dest_demangle_data(%struct.demangle_data* %4)
  store i32 0, i32* %2, align 4
  br label %155

77:                                               ; preds = %71
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* @CPP_DEMANGLE_GNU2_TRY, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = call i32 @dest_demangle_data(%struct.demangle_data* %4)
  store i32 0, i32* %2, align 4
  br label %155

84:                                               ; preds = %77
  br label %23

85:                                               ; preds = %70
  %86 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 4
  %87 = call i8* @vector_str_get_flat(i32* %86, i64* %5)
  store i8* %87, i8** %7, align 8
  %88 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  %91 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %92 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  %93 = call i32 @dest_demangle_data(%struct.demangle_data* %4)
  %94 = call i32 @init_demangle_data(%struct.demangle_data* %4)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %85
  %97 = load i8*, i8** %7, align 8
  %98 = call i32 @free(i8* %97)
  store i32 0, i32* %2, align 4
  br label %155

99:                                               ; preds = %85
  %100 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %101 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 0
  store i8* %102, i8** %103, align 8
  store i32 0, i32* %9, align 4
  %104 = call i32 @read_type(%struct.demangle_data* %4)
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = load i8*, i8** %7, align 8
  %108 = call i32 @free(i8* %107)
  %109 = call i32 @dest_demangle_data(%struct.demangle_data* %4)
  store i32 0, i32* %2, align 4
  br label %155

110:                                              ; preds = %99
  %111 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 4
  %112 = call i8* @vector_str_get_flat(i32* %111, i64* %6)
  store i8* %112, i8** %8, align 8
  %113 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %116 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %115, i32 0, i32 0
  store i8* %114, i8** %116, align 8
  %117 = call i32 @dest_demangle_data(%struct.demangle_data* %4)
  %118 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %119 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %118, i32 0, i32 4
  %120 = load i8*, i8** %8, align 8
  %121 = load i64, i64* %6, align 8
  %122 = call i32 @vector_str_push(i32* %119, i8* %120, i64 %121)
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %110
  %125 = load i8*, i8** %8, align 8
  %126 = call i32 @free(i8* %125)
  %127 = load i8*, i8** %7, align 8
  %128 = call i32 @free(i8* %127)
  store i32 0, i32* %2, align 4
  br label %155

129:                                              ; preds = %110
  %130 = load i8*, i8** %8, align 8
  %131 = call i32 @free(i8* %130)
  %132 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %133 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %132, i32 0, i32 4
  %134 = call i32 @VEC_PUSH_STR(i32* %133, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %129
  %137 = load i8*, i8** %7, align 8
  %138 = call i32 @free(i8* %137)
  store i32 0, i32* %2, align 4
  br label %155

139:                                              ; preds = %129
  %140 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %141 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %140, i32 0, i32 4
  %142 = load i8*, i8** %7, align 8
  %143 = load i64, i64* %5, align 8
  %144 = call i32 @vector_str_push(i32* %141, i8* %142, i64 %143)
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %139
  %147 = load i8*, i8** %7, align 8
  %148 = call i32 @free(i8* %147)
  store i32 0, i32* %2, align 4
  br label %155

149:                                              ; preds = %139
  %150 = load i8*, i8** %7, align 8
  %151 = call i32 @free(i8* %150)
  %152 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %153 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %152, i32 0, i32 4
  %154 = call i32 @VEC_PUSH_STR(i32* %153, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %149, %146, %136, %124, %106, %96, %82, %75, %60, %48, %36, %26, %16, %12
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i32 @init_demangle_data(%struct.demangle_data*) #1

declare dso_local i32 @read_type(%struct.demangle_data*) #1

declare dso_local i32 @dest_demangle_data(%struct.demangle_data*) #1

declare dso_local i32 @VEC_PUSH_STR(i32*, i8*) #1

declare dso_local i8* @vector_str_get_flat(i32*, i64*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vector_str_push(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
