; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_substitute_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_substitute_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pr_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c")\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pr_handle*, i8*)* @substitute_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @substitute_type(%struct.pr_handle* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pr_handle*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.pr_handle* %0, %struct.pr_handle** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.pr_handle*, %struct.pr_handle** %4, align 8
  %9 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.pr_handle*, %struct.pr_handle** %4, align 8
  %15 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i8* @strchr(i8* %18, i8 signext 124)
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %80

22:                                               ; preds = %2
  %23 = load %struct.pr_handle*, %struct.pr_handle** %4, align 8
  %24 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @strlen(i8* %27)
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @strlen(i8* %29)
  %31 = add nsw i64 %28, %30
  %32 = call i64 @xmalloc(i64 %31)
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %7, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.pr_handle*, %struct.pr_handle** %4, align 8
  %36 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.pr_handle*, %struct.pr_handle** %4, align 8
  %42 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = ptrtoint i8* %40 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = trunc i64 %48 to i32
  %50 = call i32 @memcpy(i8* %34, i8* %39, i32 %49)
  %51 = load i8*, i8** %7, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load %struct.pr_handle*, %struct.pr_handle** %4, align 8
  %54 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = ptrtoint i8* %52 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds i8, i8* %51, i64 %60
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 @strcpy(i8* %61, i8* %62)
  %64 = load i8*, i8** %7, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = call i32 @strcat(i8* %64, i8* %66)
  %68 = load %struct.pr_handle*, %struct.pr_handle** %4, align 8
  %69 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @free(i8* %72)
  %74 = load i8*, i8** %7, align 8
  %75 = load %struct.pr_handle*, %struct.pr_handle** %4, align 8
  %76 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i8* %74, i8** %78, align 8
  %79 = load i32, i32* @TRUE, align 4
  store i32 %79, i32* %3, align 4
  br label %130

80:                                               ; preds = %2
  %81 = load i8*, i8** %5, align 8
  %82 = call i8* @strchr(i8* %81, i8 signext 124)
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %111

84:                                               ; preds = %80
  %85 = load %struct.pr_handle*, %struct.pr_handle** %4, align 8
  %86 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i8* @strchr(i8* %89, i8 signext 123)
  %91 = icmp ne i8* %90, null
  br i1 %91, label %100, label %92

92:                                               ; preds = %84
  %93 = load %struct.pr_handle*, %struct.pr_handle** %4, align 8
  %94 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i8* @strchr(i8* %97, i8 signext 40)
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %111

100:                                              ; preds = %92, %84
  %101 = load %struct.pr_handle*, %struct.pr_handle** %4, align 8
  %102 = call i32 @prepend_type(%struct.pr_handle* %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load %struct.pr_handle*, %struct.pr_handle** %4, align 8
  %106 = call i64 @append_type(%struct.pr_handle* %105, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %104, %100
  %109 = load i32, i32* @FALSE, align 4
  store i32 %109, i32* %3, align 4
  br label %130

110:                                              ; preds = %104
  br label %111

111:                                              ; preds = %110, %92, %80
  %112 = load i8*, i8** %5, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = load i32, i32* @TRUE, align 4
  store i32 %117, i32* %3, align 4
  br label %130

118:                                              ; preds = %111
  %119 = load %struct.pr_handle*, %struct.pr_handle** %4, align 8
  %120 = call i64 @append_type(%struct.pr_handle* %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = load %struct.pr_handle*, %struct.pr_handle** %4, align 8
  %124 = load i8*, i8** %5, align 8
  %125 = call i64 @append_type(%struct.pr_handle* %123, i8* %124)
  %126 = icmp ne i64 %125, 0
  br label %127

127:                                              ; preds = %122, %118
  %128 = phi i1 [ false, %118 ], [ %126, %122 ]
  %129 = zext i1 %128 to i32
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %127, %116, %108, %22
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @xmalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @prepend_type(%struct.pr_handle*, i8*) #1

declare dso_local i64 @append_type(%struct.pr_handle*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
