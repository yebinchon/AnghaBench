; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_struct_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_struct_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_write_handle = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i8*, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"/0\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"/1\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"%s: warning: unknown size for field `%s' in struct\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"%s%s:%s%s,%ld,%ld;\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i32, i32, i32)* @stab_struct_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stab_struct_field(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.stab_write_handle*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.stab_write_handle*
  store %struct.stab_write_handle* %18, %struct.stab_write_handle** %11, align 8
  %19 = load %struct.stab_write_handle*, %struct.stab_write_handle** %11, align 8
  %20 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %12, align 8
  %24 = load %struct.stab_write_handle*, %struct.stab_write_handle** %11, align 8
  %25 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %13, align 4
  %29 = load %struct.stab_write_handle*, %struct.stab_write_handle** %11, align 8
  %30 = call i8* @stab_pop_type(%struct.stab_write_handle* %29)
  store i8* %30, i8** %14, align 8
  %31 = load %struct.stab_write_handle*, %struct.stab_write_handle** %11, align 8
  %32 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.stab_write_handle*, %struct.stab_write_handle** %11, align 8
  %40 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @strlen(i8* %43)
  %45 = load i8*, i8** %7, align 8
  %46 = call i64 @strlen(i8* %45)
  %47 = add nsw i64 %44, %46
  %48 = load i8*, i8** %14, align 8
  %49 = call i64 @strlen(i8* %48)
  %50 = add nsw i64 %47, %49
  %51 = add nsw i64 %50, 50
  %52 = call i64 @xmalloc(i64 %51)
  %53 = inttoptr i64 %52 to i8*
  store i8* %53, i8** %15, align 8
  %54 = load i32, i32* %10, align 4
  switch i32 %54, label %55 [
    i32 128, label %57
    i32 130, label %58
    i32 129, label %59
  ]

55:                                               ; preds = %5
  %56 = call i32 (...) @abort() #3
  unreachable

57:                                               ; preds = %5
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  br label %60

58:                                               ; preds = %5
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %16, align 8
  br label %60

59:                                               ; preds = %5
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %16, align 8
  br label %60

60:                                               ; preds = %59, %58, %57
  %61 = load i32, i32* %9, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %60
  %64 = load i32, i32* %13, align 4
  %65 = mul i32 %64, 8
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = call i32 @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %70 = load %struct.stab_write_handle*, %struct.stab_write_handle** %11, align 8
  %71 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @bfd_get_filename(i32 %72)
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @non_fatal(i32 %69, i32 %73, i8* %74)
  br label %76

76:                                               ; preds = %68, %63
  br label %77

77:                                               ; preds = %76, %60
  %78 = load i8*, i8** %15, align 8
  %79 = load %struct.stab_write_handle*, %struct.stab_write_handle** %11, align 8
  %80 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = load i8*, i8** %16, align 8
  %86 = load i8*, i8** %14, align 8
  %87 = load i32, i32* %8, align 4
  %88 = zext i32 %87 to i64
  %89 = load i32, i32* %9, align 4
  %90 = zext i32 %89 to i64
  %91 = call i32 @sprintf(i8* %78, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %83, i8* %84, i8* %85, i8* %86, i64 %88, i64 %90)
  %92 = load %struct.stab_write_handle*, %struct.stab_write_handle** %11, align 8
  %93 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @free(i8* %96)
  %98 = load i8*, i8** %15, align 8
  %99 = load %struct.stab_write_handle*, %struct.stab_write_handle** %11, align 8
  %100 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  store i8* %98, i8** %102, align 8
  %103 = load i64, i64* %12, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %77
  %106 = load i64, i64* @TRUE, align 8
  %107 = load %struct.stab_write_handle*, %struct.stab_write_handle** %11, align 8
  %108 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 2
  store i64 %106, i64* %110, align 8
  br label %111

111:                                              ; preds = %105, %77
  %112 = load i64, i64* @TRUE, align 8
  ret i64 %112
}

declare dso_local i8* @stab_pop_type(%struct.stab_write_handle*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @xmalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @non_fatal(i32, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_get_filename(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i8*, i8*, i64, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
