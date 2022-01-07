; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_parse.c_loadfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_parse.c_loadfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loadedfile = type { i64, i64, i8* }

@STDIN_FILENO = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s: file too large\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%s: read error: %s\00", align 1
@MAP_COPY = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@MAP_FILE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i64 0, align 8
@_SC_PAGESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.loadedfile* (i8*, i32)* @loadfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.loadedfile* @loadfile(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.loadedfile*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = call %struct.loadedfile* @loadedfile_create(i8* %8)
  store %struct.loadedfile* %9, %struct.loadedfile** %5, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, -1
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* @STDIN_FILENO, align 4
  store i32 %17, i32* %4, align 4
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %12
  %20 = load %struct.loadedfile*, %struct.loadedfile** %5, align 8
  %21 = getelementptr inbounds %struct.loadedfile, %struct.loadedfile* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.loadedfile*, %struct.loadedfile** %5, align 8
  %23 = getelementptr inbounds %struct.loadedfile, %struct.loadedfile* %22, i32 0, i32 0
  store i64 1024, i64* %23, align 8
  %24 = load %struct.loadedfile*, %struct.loadedfile** %5, align 8
  %25 = getelementptr inbounds %struct.loadedfile, %struct.loadedfile* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i8* @bmake_malloc(i32 %27)
  %29 = load %struct.loadedfile*, %struct.loadedfile** %5, align 8
  %30 = getelementptr inbounds %struct.loadedfile, %struct.loadedfile* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  store i64 0, i64* %7, align 8
  br label %31

31:                                               ; preds = %19, %104
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.loadedfile*, %struct.loadedfile** %5, align 8
  %34 = getelementptr inbounds %struct.loadedfile, %struct.loadedfile* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ule i64 %32, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.loadedfile*, %struct.loadedfile** %5, align 8
  %41 = getelementptr inbounds %struct.loadedfile, %struct.loadedfile* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %72

44:                                               ; preds = %31
  %45 = load %struct.loadedfile*, %struct.loadedfile** %5, align 8
  %46 = getelementptr inbounds %struct.loadedfile, %struct.loadedfile* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @SIZE_MAX, align 4
  %49 = sdiv i32 %48, 2
  %50 = sext i32 %49 to i64
  %51 = icmp sgt i64 %47, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load i32, i32* @EFBIG, align 4
  store i32 %53, i32* @errno, align 4
  %54 = load i8*, i8** %3, align 8
  %55 = call i32 (i8*, i8*, ...) @Error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %54)
  %56 = call i32 @exit(i32 1) #3
  unreachable

57:                                               ; preds = %44
  %58 = load %struct.loadedfile*, %struct.loadedfile** %5, align 8
  %59 = getelementptr inbounds %struct.loadedfile, %struct.loadedfile* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = mul nsw i64 %60, 2
  store i64 %61, i64* %59, align 8
  %62 = load %struct.loadedfile*, %struct.loadedfile** %5, align 8
  %63 = getelementptr inbounds %struct.loadedfile, %struct.loadedfile* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.loadedfile*, %struct.loadedfile** %5, align 8
  %66 = getelementptr inbounds %struct.loadedfile, %struct.loadedfile* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i8* @bmake_realloc(i8* %64, i32 %68)
  %70 = load %struct.loadedfile*, %struct.loadedfile** %5, align 8
  %71 = getelementptr inbounds %struct.loadedfile, %struct.loadedfile* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  br label %72

72:                                               ; preds = %57, %31
  %73 = load i64, i64* %7, align 8
  %74 = load %struct.loadedfile*, %struct.loadedfile** %5, align 8
  %75 = getelementptr inbounds %struct.loadedfile, %struct.loadedfile* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ult i64 %73, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  %80 = load i32, i32* %4, align 4
  %81 = load %struct.loadedfile*, %struct.loadedfile** %5, align 8
  %82 = getelementptr inbounds %struct.loadedfile, %struct.loadedfile* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = load i64, i64* %7, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = load %struct.loadedfile*, %struct.loadedfile** %5, align 8
  %87 = getelementptr inbounds %struct.loadedfile, %struct.loadedfile* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %7, align 8
  %90 = sub i64 %88, %89
  %91 = call i64 @read(i32 %80, i8* %85, i64 %90)
  store i64 %91, i64* %6, align 8
  %92 = load i64, i64* %6, align 8
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %72
  %95 = load i8*, i8** %3, align 8
  %96 = load i32, i32* @errno, align 4
  %97 = call i32 @strerror(i32 %96)
  %98 = call i32 (i8*, i8*, ...) @Error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %95, i32 %97)
  %99 = call i32 @exit(i32 1) #3
  unreachable

100:                                              ; preds = %72
  %101 = load i64, i64* %6, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  br label %108

104:                                              ; preds = %100
  %105 = load i64, i64* %6, align 8
  %106 = load i64, i64* %7, align 8
  %107 = add i64 %106, %105
  store i64 %107, i64* %7, align 8
  br label %31

108:                                              ; preds = %103
  %109 = load i64, i64* %7, align 8
  %110 = load %struct.loadedfile*, %struct.loadedfile** %5, align 8
  %111 = getelementptr inbounds %struct.loadedfile, %struct.loadedfile* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ule i64 %109, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  %116 = load i64, i64* %7, align 8
  %117 = load %struct.loadedfile*, %struct.loadedfile** %5, align 8
  %118 = getelementptr inbounds %struct.loadedfile, %struct.loadedfile* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  %119 = load %struct.loadedfile*, %struct.loadedfile** %5, align 8
  %120 = getelementptr inbounds %struct.loadedfile, %struct.loadedfile* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp sgt i64 %121, 0
  br i1 %122, label %123, label %159

123:                                              ; preds = %108
  %124 = load %struct.loadedfile*, %struct.loadedfile** %5, align 8
  %125 = getelementptr inbounds %struct.loadedfile, %struct.loadedfile* %124, i32 0, i32 2
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.loadedfile*, %struct.loadedfile** %5, align 8
  %128 = getelementptr inbounds %struct.loadedfile, %struct.loadedfile* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = sub nsw i64 %129, 1
  %131 = getelementptr inbounds i8, i8* %126, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp ne i32 %133, 10
  br i1 %134, label %135, label %140

135:                                              ; preds = %123
  %136 = load %struct.loadedfile*, %struct.loadedfile** %5, align 8
  %137 = getelementptr inbounds %struct.loadedfile, %struct.loadedfile* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %138, 1
  store i64 %139, i64* %137, align 8
  br label %140

140:                                              ; preds = %135, %123
  %141 = load %struct.loadedfile*, %struct.loadedfile** %5, align 8
  %142 = getelementptr inbounds %struct.loadedfile, %struct.loadedfile* %141, i32 0, i32 2
  %143 = load i8*, i8** %142, align 8
  %144 = load %struct.loadedfile*, %struct.loadedfile** %5, align 8
  %145 = getelementptr inbounds %struct.loadedfile, %struct.loadedfile* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = trunc i64 %146 to i32
  %148 = call i8* @bmake_realloc(i8* %143, i32 %147)
  %149 = load %struct.loadedfile*, %struct.loadedfile** %5, align 8
  %150 = getelementptr inbounds %struct.loadedfile, %struct.loadedfile* %149, i32 0, i32 2
  store i8* %148, i8** %150, align 8
  %151 = load %struct.loadedfile*, %struct.loadedfile** %5, align 8
  %152 = getelementptr inbounds %struct.loadedfile, %struct.loadedfile* %151, i32 0, i32 2
  %153 = load i8*, i8** %152, align 8
  %154 = load %struct.loadedfile*, %struct.loadedfile** %5, align 8
  %155 = getelementptr inbounds %struct.loadedfile, %struct.loadedfile* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = sub nsw i64 %156, 1
  %158 = getelementptr inbounds i8, i8* %153, i64 %157
  store i8 10, i8* %158, align 1
  br label %159

159:                                              ; preds = %140, %108
  %160 = load i8*, i8** %3, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load i32, i32* %4, align 4
  %164 = call i32 @close(i32 %163)
  br label %165

165:                                              ; preds = %162, %159
  %166 = load %struct.loadedfile*, %struct.loadedfile** %5, align 8
  ret %struct.loadedfile* %166
}

declare dso_local %struct.loadedfile* @loadedfile_create(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @bmake_malloc(i32) #1

declare dso_local i32 @Error(i8*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @bmake_realloc(i8*, i32) #1

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
