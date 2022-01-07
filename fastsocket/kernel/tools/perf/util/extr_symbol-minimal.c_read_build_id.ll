; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol-minimal.c_read_build_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol-minimal.c_read_build_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32, i32 }

@NT_GNU_BUILD_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"GNU\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i64, i32)* @read_build_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_build_id(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.anon*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i8*, i8** %7, align 8
  store i8* %18, i8** %13, align 8
  br label %19

19:                                               ; preds = %99, %5
  %20 = load i8*, i8** %13, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr i8, i8* %21, i64 %22
  %24 = icmp ult i8* %20, %23
  br i1 %24, label %25, label %103

25:                                               ; preds = %19
  %26 = load i8*, i8** %13, align 8
  %27 = bitcast i8* %26 to %struct.anon*
  store %struct.anon* %27, %struct.anon** %12, align 8
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %25
  %31 = load %struct.anon*, %struct.anon** %12, align 8
  %32 = getelementptr inbounds %struct.anon, %struct.anon* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @bswap_32(i32 %33)
  %35 = ptrtoint i8* %34 to i32
  %36 = load %struct.anon*, %struct.anon** %12, align 8
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.anon*, %struct.anon** %12, align 8
  %39 = getelementptr inbounds %struct.anon, %struct.anon* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @bswap_32(i32 %40)
  %42 = ptrtoint i8* %41 to i32
  %43 = load %struct.anon*, %struct.anon** %12, align 8
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.anon*, %struct.anon** %12, align 8
  %46 = getelementptr inbounds %struct.anon, %struct.anon* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @bswap_32(i32 %47)
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.anon*, %struct.anon** %12, align 8
  %51 = getelementptr inbounds %struct.anon, %struct.anon* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %30, %25
  %53 = load %struct.anon*, %struct.anon** %12, align 8
  %54 = getelementptr inbounds %struct.anon, %struct.anon* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @NOTE_ALIGN(i32 %55)
  store i64 %56, i64* %15, align 8
  %57 = load %struct.anon*, %struct.anon** %12, align 8
  %58 = getelementptr inbounds %struct.anon, %struct.anon* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @NOTE_ALIGN(i32 %59)
  store i64 %60, i64* %16, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = getelementptr i8, i8* %61, i64 12
  store i8* %62, i8** %13, align 8
  %63 = load i8*, i8** %13, align 8
  store i8* %63, i8** %14, align 8
  %64 = load i64, i64* %15, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = getelementptr i8, i8* %65, i64 %64
  store i8* %66, i8** %13, align 8
  %67 = load %struct.anon*, %struct.anon** %12, align 8
  %68 = getelementptr inbounds %struct.anon, %struct.anon* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* @NT_GNU_BUILD_ID, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %99

73:                                               ; preds = %52
  %74 = load %struct.anon*, %struct.anon** %12, align 8
  %75 = getelementptr inbounds %struct.anon, %struct.anon* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = icmp eq i64 %77, 4
  br i1 %78, label %79, label %99

79:                                               ; preds = %73
  %80 = load i8*, i8** %14, align 8
  %81 = call i64 @memcmp(i8* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 4)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %79
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* %16, align 8
  %86 = call i64 @min(i64 %84, i64 %85)
  store i64 %86, i64* %17, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = load i8*, i8** %13, align 8
  %89 = load i64, i64* %17, align 8
  %90 = call i32 @memcpy(i8* %87, i8* %88, i64 %89)
  %91 = load i8*, i8** %9, align 8
  %92 = load i64, i64* %17, align 8
  %93 = getelementptr i8, i8* %91, i64 %92
  %94 = load i64, i64* %10, align 8
  %95 = load i64, i64* %17, align 8
  %96 = sub i64 %94, %95
  %97 = call i32 @memset(i8* %93, i32 0, i64 %96)
  store i32 0, i32* %6, align 4
  br label %104

98:                                               ; preds = %79
  br label %99

99:                                               ; preds = %98, %73, %52
  %100 = load i64, i64* %16, align 8
  %101 = load i8*, i8** %13, align 8
  %102 = getelementptr i8, i8* %101, i64 %100
  store i8* %102, i8** %13, align 8
  br label %19

103:                                              ; preds = %19
  store i32 -1, i32* %6, align 4
  br label %104

104:                                              ; preds = %103, %83
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i8* @bswap_32(i32) #1

declare dso_local i64 @NOTE_ALIGN(i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
