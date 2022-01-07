; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_stab_find_tagged_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_stab_find_tagged_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_handle = type { %struct.stab_tag* }
%struct.stab_tag = type { i8*, i64, i64, i64, %struct.stab_tag* }

@DEBUG_KIND_ILLEGAL = common dso_local global i64 0, align 8
@DEBUG_TYPE_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.stab_handle*, i8*, i32, i32)* @stab_find_tagged_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stab_find_tagged_type(i8* %0, %struct.stab_handle* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stab_handle*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.stab_tag*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.stab_handle* %1, %struct.stab_handle** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i8*, i8** %9, align 8
  %16 = load i32, i32* %10, align 4
  %17 = call i8* @savestring(i8* %15, i32 %16)
  store i8* %17, i8** %12, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = load i64, i64* @DEBUG_KIND_ILLEGAL, align 8
  %21 = call i64 @debug_find_tagged_type(i8* %18, i8* %19, i64 %20)
  store i64 %21, i64* %13, align 8
  %22 = load i64, i64* %13, align 8
  %23 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = load i8*, i8** %12, align 8
  %27 = call i32 @free(i8* %26)
  %28 = load i64, i64* %13, align 8
  store i64 %28, i64* %6, align 8
  br label %111

29:                                               ; preds = %5
  %30 = load %struct.stab_handle*, %struct.stab_handle** %8, align 8
  %31 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %30, i32 0, i32 0
  %32 = load %struct.stab_tag*, %struct.stab_tag** %31, align 8
  store %struct.stab_tag* %32, %struct.stab_tag** %14, align 8
  br label %33

33:                                               ; preds = %70, %29
  %34 = load %struct.stab_tag*, %struct.stab_tag** %14, align 8
  %35 = icmp ne %struct.stab_tag* %34, null
  br i1 %35, label %36, label %74

36:                                               ; preds = %33
  %37 = load %struct.stab_tag*, %struct.stab_tag** %14, align 8
  %38 = getelementptr inbounds %struct.stab_tag, %struct.stab_tag* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = load i8*, i8** %12, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %42, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %36
  %49 = load %struct.stab_tag*, %struct.stab_tag** %14, align 8
  %50 = getelementptr inbounds %struct.stab_tag, %struct.stab_tag* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = call i64 @strcmp(i8* %51, i8* %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %48
  %56 = load %struct.stab_tag*, %struct.stab_tag** %14, align 8
  %57 = getelementptr inbounds %struct.stab_tag, %struct.stab_tag* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @DEBUG_KIND_ILLEGAL, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load i32, i32* %11, align 4
  %63 = zext i32 %62 to i64
  %64 = load %struct.stab_tag*, %struct.stab_tag** %14, align 8
  %65 = getelementptr inbounds %struct.stab_tag, %struct.stab_tag* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %61, %55
  %67 = load i8*, i8** %12, align 8
  %68 = call i32 @free(i8* %67)
  br label %74

69:                                               ; preds = %48, %36
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.stab_tag*, %struct.stab_tag** %14, align 8
  %72 = getelementptr inbounds %struct.stab_tag, %struct.stab_tag* %71, i32 0, i32 4
  %73 = load %struct.stab_tag*, %struct.stab_tag** %72, align 8
  store %struct.stab_tag* %73, %struct.stab_tag** %14, align 8
  br label %33

74:                                               ; preds = %66, %33
  %75 = load %struct.stab_tag*, %struct.stab_tag** %14, align 8
  %76 = icmp eq %struct.stab_tag* %75, null
  br i1 %76, label %77, label %107

77:                                               ; preds = %74
  %78 = call i64 @xmalloc(i32 40)
  %79 = inttoptr i64 %78 to %struct.stab_tag*
  store %struct.stab_tag* %79, %struct.stab_tag** %14, align 8
  %80 = load %struct.stab_tag*, %struct.stab_tag** %14, align 8
  %81 = call i32 @memset(%struct.stab_tag* %80, i32 0, i32 40)
  %82 = load %struct.stab_handle*, %struct.stab_handle** %8, align 8
  %83 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %82, i32 0, i32 0
  %84 = load %struct.stab_tag*, %struct.stab_tag** %83, align 8
  %85 = load %struct.stab_tag*, %struct.stab_tag** %14, align 8
  %86 = getelementptr inbounds %struct.stab_tag, %struct.stab_tag* %85, i32 0, i32 4
  store %struct.stab_tag* %84, %struct.stab_tag** %86, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = load %struct.stab_tag*, %struct.stab_tag** %14, align 8
  %89 = getelementptr inbounds %struct.stab_tag, %struct.stab_tag* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  %90 = load i32, i32* %11, align 4
  %91 = zext i32 %90 to i64
  %92 = load %struct.stab_tag*, %struct.stab_tag** %14, align 8
  %93 = getelementptr inbounds %struct.stab_tag, %struct.stab_tag* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  %94 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  %95 = load %struct.stab_tag*, %struct.stab_tag** %14, align 8
  %96 = getelementptr inbounds %struct.stab_tag, %struct.stab_tag* %95, i32 0, i32 3
  store i64 %94, i64* %96, align 8
  %97 = load i8*, i8** %7, align 8
  %98 = load %struct.stab_tag*, %struct.stab_tag** %14, align 8
  %99 = getelementptr inbounds %struct.stab_tag, %struct.stab_tag* %98, i32 0, i32 3
  %100 = load i8*, i8** %12, align 8
  %101 = call i64 @debug_make_indirect_type(i8* %97, i64* %99, i8* %100)
  %102 = load %struct.stab_tag*, %struct.stab_tag** %14, align 8
  %103 = getelementptr inbounds %struct.stab_tag, %struct.stab_tag* %102, i32 0, i32 2
  store i64 %101, i64* %103, align 8
  %104 = load %struct.stab_tag*, %struct.stab_tag** %14, align 8
  %105 = load %struct.stab_handle*, %struct.stab_handle** %8, align 8
  %106 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %105, i32 0, i32 0
  store %struct.stab_tag* %104, %struct.stab_tag** %106, align 8
  br label %107

107:                                              ; preds = %77, %74
  %108 = load %struct.stab_tag*, %struct.stab_tag** %14, align 8
  %109 = getelementptr inbounds %struct.stab_tag, %struct.stab_tag* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %6, align 8
  br label %111

111:                                              ; preds = %107, %25
  %112 = load i64, i64* %6, align 8
  ret i64 %112
}

declare dso_local i8* @savestring(i8*, i32) #1

declare dso_local i64 @debug_find_tagged_type(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.stab_tag*, i32, i32) #1

declare dso_local i64 @debug_make_indirect_type(i8*, i64*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
