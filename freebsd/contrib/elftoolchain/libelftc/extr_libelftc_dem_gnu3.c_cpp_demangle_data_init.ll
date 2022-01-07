; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_data_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_data_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct.TYPE_3__, %struct.TYPE_3__, %struct.TYPE_3__, %struct.TYPE_3__, i32*, %struct.TYPE_3__*, i64, i32, i32 }
%struct.TYPE_3__ = type { i32* }

@PUSH_ALL_QUALIFIER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpp_demangle_data*, i8*)* @cpp_demangle_data_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_demangle_data_init(%struct.cpp_demangle_data* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpp_demangle_data*, align 8
  %5 = alloca i8*, align 8
  store %struct.cpp_demangle_data* %0, %struct.cpp_demangle_data** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %7 = icmp eq %struct.cpp_demangle_data* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i8*, i8** %5, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  store i32 0, i32* %3, align 4
  br label %117

12:                                               ; preds = %8
  %13 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %14 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %13, i32 0, i32 9
  %15 = call i32 @vector_str_init(%struct.TYPE_3__* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %117

18:                                               ; preds = %12
  %19 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %20 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %19, i32 0, i32 10
  %21 = call i32 @vector_str_init(%struct.TYPE_3__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %113

24:                                               ; preds = %18
  %25 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %26 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %25, i32 0, i32 11
  %27 = call i32 @vector_str_init(%struct.TYPE_3__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %109

30:                                               ; preds = %24
  %31 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %32 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %31, i32 0, i32 12
  %33 = call i32 @vector_str_init(%struct.TYPE_3__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %105

36:                                               ; preds = %30
  %37 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %38 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %37, i32 0, i32 17
  %39 = call i32 @vector_read_cmd_init(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %101

42:                                               ; preds = %36
  %43 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %44 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %43, i32 0, i32 9
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %51 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %50, i32 0, i32 10
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %58 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %57, i32 0, i32 11
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %65 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %64, i32 0, i32 12
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %72 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %71, i32 0, i32 0
  store i32 0, i32* %72, align 8
  %73 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %74 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %73, i32 0, i32 1
  store i32 0, i32* %74, align 4
  %75 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %76 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %75, i32 0, i32 2
  store i32 0, i32* %76, align 8
  %77 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %78 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %77, i32 0, i32 3
  store i32 0, i32* %78, align 4
  %79 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %80 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %79, i32 0, i32 4
  store i32 0, i32* %80, align 8
  %81 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %82 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %81, i32 0, i32 5
  store i32 0, i32* %82, align 4
  %83 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %84 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %83, i32 0, i32 6
  store i32 0, i32* %84, align 8
  %85 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %86 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %85, i32 0, i32 7
  store i32 0, i32* %86, align 4
  %87 = load i32, i32* @PUSH_ALL_QUALIFIER, align 4
  %88 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %89 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %88, i32 0, i32 16
  store i32 %87, i32* %89, align 8
  %90 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %91 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %90, i32 0, i32 15
  store i64 0, i64* %91, align 8
  %92 = load i8*, i8** %5, align 8
  %93 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %94 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %93, i32 0, i32 8
  store i8* %92, i8** %94, align 8
  %95 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %96 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %95, i32 0, i32 9
  %97 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %98 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %97, i32 0, i32 14
  store %struct.TYPE_3__* %96, %struct.TYPE_3__** %98, align 8
  %99 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %100 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %99, i32 0, i32 13
  store i32* null, i32** %100, align 8
  store i32 1, i32* %3, align 4
  br label %117

101:                                              ; preds = %41
  %102 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %103 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %102, i32 0, i32 12
  %104 = call i32 @vector_str_dest(%struct.TYPE_3__* %103)
  br label %105

105:                                              ; preds = %101, %35
  %106 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %107 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %106, i32 0, i32 11
  %108 = call i32 @vector_str_dest(%struct.TYPE_3__* %107)
  br label %109

109:                                              ; preds = %105, %29
  %110 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %111 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %110, i32 0, i32 10
  %112 = call i32 @vector_str_dest(%struct.TYPE_3__* %111)
  br label %113

113:                                              ; preds = %109, %23
  %114 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %115 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %114, i32 0, i32 9
  %116 = call i32 @vector_str_dest(%struct.TYPE_3__* %115)
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %113, %42, %17, %11
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @vector_str_init(%struct.TYPE_3__*) #1

declare dso_local i32 @vector_read_cmd_init(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vector_str_dest(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
