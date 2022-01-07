; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_arm.c_read_subst_iter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_arm.c_read_subst_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_data = type { i32*, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8** }

@.str = private unnamed_addr constant [33 x i8] c"*d->p not in ASCII numeric range\00", align 1
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.demangle_data*)* @read_subst_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_subst_iter(%struct.demangle_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.demangle_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  store %struct.demangle_data* %0, %struct.demangle_data** %3, align 8
  %8 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %9 = icmp eq %struct.demangle_data* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %132

11:                                               ; preds = %1
  %12 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %13 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %15, i32** %13, align 8
  %16 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %17 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %19, 48
  br i1 %20, label %21, label %28

21:                                               ; preds = %11
  %22 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %23 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 58
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27, %21, %11
  %29 = phi i1 [ false, %21 ], [ false, %11 ], [ true, %27 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %33 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 48
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %6, align 1
  %38 = load i8, i8* %6, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp sgt i32 %39, 1
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %44 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %44, align 8
  %47 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %48 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i64 @strtol(i32* %49, i8** %7, i32 10)
  store i64 %50, i64* %5, align 8
  %51 = load i64, i64* %5, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %28
  %54 = load i64, i64* @errno, align 8
  %55 = load i64, i64* @EINVAL, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i64, i64* @errno, align 8
  %59 = load i64, i64* @ERANGE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57, %53
  store i32 -1, i32* %2, align 4
  br label %132

62:                                               ; preds = %57, %28
  %63 = load i64, i64* %5, align 8
  %64 = icmp ugt i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load i8*, i8** %7, align 8
  %68 = icmp ne i8* %67, null
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load i8*, i8** %7, align 8
  %72 = bitcast i8* %71 to i32*
  %73 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %74 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %73, i32 0, i32 0
  store i32* %72, i32** %74, align 8
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %121, %62
  %76 = load i32, i32* %4, align 4
  %77 = load i8, i8* %6, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %80, label %124

80:                                               ; preds = %75
  %81 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %82 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %81, i32 0, i32 1
  %83 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %84 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i8**, i8*** %85, align 8
  %87 = load i64, i64* %5, align 8
  %88 = sub i64 %87, 1
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @VEC_PUSH_STR(%struct.TYPE_2__* %82, i8* %90)
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %80
  store i32 -1, i32* %2, align 4
  br label %132

94:                                               ; preds = %80
  %95 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %96 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %95, i32 0, i32 2
  %97 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %98 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i8**, i8*** %99, align 8
  %101 = load i64, i64* %5, align 8
  %102 = sub i64 %101, 1
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @VEC_PUSH_STR(%struct.TYPE_2__* %96, i8* %104)
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %94
  store i32 -1, i32* %2, align 4
  br label %132

108:                                              ; preds = %94
  %109 = load i32, i32* %4, align 4
  %110 = load i8, i8* %6, align 1
  %111 = sext i8 %110 to i32
  %112 = sub nsw i32 %111, 1
  %113 = icmp ne i32 %109, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %108
  %115 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %116 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %115, i32 0, i32 1
  %117 = call i32 @VEC_PUSH_STR(%struct.TYPE_2__* %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  store i32 -1, i32* %2, align 4
  br label %132

120:                                              ; preds = %114, %108
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %4, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %4, align 4
  br label %75

124:                                              ; preds = %75
  %125 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %126 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  store i32 1, i32* %2, align 4
  br label %132

131:                                              ; preds = %124
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %131, %130, %119, %107, %93, %61, %10
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strtol(i32*, i8**, i32) #1

declare dso_local i32 @VEC_PUSH_STR(%struct.TYPE_2__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
