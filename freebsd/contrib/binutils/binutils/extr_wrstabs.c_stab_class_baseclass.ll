; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_class_baseclass.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_class_baseclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_write_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8**, i64, i32* }

@.str = private unnamed_addr constant [8 x i8] c"%ld,%s;\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64, i32)* @stab_class_baseclass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stab_class_baseclass(i8* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.stab_write_handle*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.stab_write_handle*
  store %struct.stab_write_handle* %16, %struct.stab_write_handle** %9, align 8
  %17 = load %struct.stab_write_handle*, %struct.stab_write_handle** %9, align 8
  %18 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %10, align 8
  %22 = load %struct.stab_write_handle*, %struct.stab_write_handle** %9, align 8
  %23 = call i8* @stab_pop_type(%struct.stab_write_handle* %22)
  store i8* %23, i8** %11, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = call i64 @strlen(i8* %24)
  %26 = add nsw i64 %25, 25
  %27 = call i64 @xmalloc(i64 %26)
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %12, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 49, i32 48
  %33 = trunc i32 %32 to i8
  %34 = load i8*, i8** %12, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  store i8 %33, i8* %35, align 1
  %36 = load i32, i32* %8, align 4
  switch i32 %36, label %37 [
    i32 130, label %39
    i32 129, label %42
    i32 128, label %45
  ]

37:                                               ; preds = %4
  %38 = call i32 (...) @abort() #3
  unreachable

39:                                               ; preds = %4
  %40 = load i8*, i8** %12, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  store i8 48, i8* %41, align 1
  br label %48

42:                                               ; preds = %4
  %43 = load i8*, i8** %12, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  store i8 49, i8* %44, align 1
  br label %48

45:                                               ; preds = %4
  %46 = load i8*, i8** %12, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  store i8 50, i8* %47, align 1
  br label %48

48:                                               ; preds = %45, %42, %39
  %49 = load i8*, i8** %12, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 2
  %51 = load i64, i64* %6, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = call i32 @sprintf(i8* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %51, i8* %52)
  %54 = load i8*, i8** %11, align 8
  %55 = call i32 @free(i8* %54)
  %56 = load %struct.stab_write_handle*, %struct.stab_write_handle** %9, align 8
  %57 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = icmp ne %struct.TYPE_2__* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %48
  %61 = load %struct.stab_write_handle*, %struct.stab_write_handle** %9, align 8
  %62 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br label %67

67:                                               ; preds = %60, %48
  %68 = phi i1 [ false, %48 ], [ %66, %60 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load %struct.stab_write_handle*, %struct.stab_write_handle** %9, align 8
  %72 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i8**, i8*** %74, align 8
  %76 = icmp eq i8** %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  store i32 0, i32* %13, align 4
  br label %94

78:                                               ; preds = %67
  store i32 0, i32* %13, align 4
  br label %79

79:                                               ; preds = %90, %78
  %80 = load %struct.stab_write_handle*, %struct.stab_write_handle** %9, align 8
  %81 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i8**, i8*** %83, align 8
  %85 = load i32, i32* %13, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %79
  %91 = load i32, i32* %13, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %13, align 4
  br label %79

93:                                               ; preds = %79
  br label %94

94:                                               ; preds = %93, %77
  %95 = load %struct.stab_write_handle*, %struct.stab_write_handle** %9, align 8
  %96 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i8**, i8*** %98, align 8
  %100 = load i32, i32* %13, align 4
  %101 = add i32 %100, 2
  %102 = zext i32 %101 to i64
  %103 = mul i64 %102, 8
  %104 = trunc i64 %103 to i32
  %105 = call i64 @xrealloc(i8** %99, i32 %104)
  %106 = inttoptr i64 %105 to i8**
  store i8** %106, i8*** %14, align 8
  %107 = load i8*, i8** %12, align 8
  %108 = load i8**, i8*** %14, align 8
  %109 = load i32, i32* %13, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  store i8* %107, i8** %111, align 8
  %112 = load i8**, i8*** %14, align 8
  %113 = load i32, i32* %13, align 4
  %114 = add i32 %113, 1
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %112, i64 %115
  store i8* null, i8** %116, align 8
  %117 = load i8**, i8*** %14, align 8
  %118 = load %struct.stab_write_handle*, %struct.stab_write_handle** %9, align 8
  %119 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %118, i32 0, i32 0
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  store i8** %117, i8*** %121, align 8
  %122 = load i64, i64* %10, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %94
  %125 = load i64, i64* @TRUE, align 8
  %126 = load %struct.stab_write_handle*, %struct.stab_write_handle** %9, align 8
  %127 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %126, i32 0, i32 0
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  store i64 %125, i64* %129, align 8
  br label %130

130:                                              ; preds = %124, %94
  %131 = load i64, i64* @TRUE, align 8
  ret i64 %131
}

declare dso_local i8* @stab_pop_type(%struct.stab_write_handle*) #1

declare dso_local i64 @xmalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @sprintf(i8*, i8*, i64, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @xrealloc(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
