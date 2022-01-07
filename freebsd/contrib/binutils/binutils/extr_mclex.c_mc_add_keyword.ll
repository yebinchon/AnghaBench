; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_mclex.c_mc_add_keyword.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_mclex.c_mc_add_keyword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8*, i32, %struct.TYPE_4__*, i32, i32*, i8*, i32* }

@keyword_top = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"keyword\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Duplicate symbol entered into keyword list.\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"language\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Language ident 0x%lx is not resolvable.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mc_add_keyword(i32* %0, i32 %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i64 @unichar_len(i32* %18)
  store i64 %19, i64* %14, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @keyword_top, align 8
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %12, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %11, align 8
  br label %21

21:                                               ; preds = %104, %5
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %108

24:                                               ; preds = %21
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %14, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %108

31:                                               ; preds = %24
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %14, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %104

37:                                               ; preds = %31
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 7
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %14, align 8
  %43 = mul i64 %42, 4
  %44 = call i32 @memcmp(i32* %38, i32* %41, i64 %43)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %108

48:                                               ; preds = %37
  %49 = load i32, i32* %15, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %103, label %51

51:                                               ; preds = %48
  %52 = load i8*, i8** %8, align 8
  %53 = call i64 @strcmp(i8* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = call i64 @strcmp(i8* %58, i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %55, %51
  %63 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i8*
  %66 = call i32 (i8*, ...) @fatal(i8* %65)
  br label %67

67:                                               ; preds = %62, %55
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 6
  store i8* %71, i8** %73, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %67
  br label %80

77:                                               ; preds = %67
  %78 = load i32*, i32** %10, align 8
  %79 = call i32* @unichar_dup(i32* %78)
  br label %80

80:                                               ; preds = %77, %76
  %81 = phi i32* [ null, %76 ], [ %79, %77 ]
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 5
  store i32* %81, i32** %83, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = call i64 @strcmp(i8* %84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %102, label %87

87:                                               ; preds = %80
  %88 = load i8*, i8** %9, align 8
  %89 = ptrtoint i8* %88 to i32
  %90 = call i32* @wind_find_language_by_id(i32 %89)
  store i32* %90, i32** %16, align 8
  %91 = load i32*, i32** %16, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load i8*, i8** %9, align 8
  %95 = ptrtoint i8* %94 to i64
  %96 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %95)
  br label %97

97:                                               ; preds = %93, %87
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 4
  %100 = load i32*, i32** %16, align 8
  %101 = call i32 @memcpy(i32* %99, i32* %100, i32 4)
  br label %102

102:                                              ; preds = %97, %80
  br label %165

103:                                              ; preds = %48
  br label %104

104:                                              ; preds = %103, %31
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  store %struct.TYPE_4__* %105, %struct.TYPE_4__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  store %struct.TYPE_4__* %107, %struct.TYPE_4__** %12, align 8
  br label %21

108:                                              ; preds = %47, %30, %21
  %109 = call %struct.TYPE_4__* @xmalloc(i32 64)
  store %struct.TYPE_4__* %109, %struct.TYPE_4__** %13, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 3
  store %struct.TYPE_4__* %110, %struct.TYPE_4__** %112, align 8
  %113 = load i64, i64* %14, align 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  %116 = load i8*, i8** %8, align 8
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  store i8* %116, i8** %118, align 8
  %119 = load i32*, i32** %6, align 8
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 7
  store i32* %119, i32** %121, align 8
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 8
  %125 = load i8*, i8** %9, align 8
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 6
  store i8* %125, i8** %127, align 8
  %128 = load i32*, i32** %10, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %108
  br label %134

131:                                              ; preds = %108
  %132 = load i32*, i32** %10, align 8
  %133 = call i32* @unichar_dup(i32* %132)
  br label %134

134:                                              ; preds = %131, %130
  %135 = phi i32* [ null, %130 ], [ %133, %131 ]
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 5
  store i32* %135, i32** %137, align 8
  %138 = load i8*, i8** %8, align 8
  %139 = call i64 @strcmp(i8* %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %156, label %141

141:                                              ; preds = %134
  %142 = load i8*, i8** %9, align 8
  %143 = ptrtoint i8* %142 to i32
  %144 = call i32* @wind_find_language_by_id(i32 %143)
  store i32* %144, i32** %17, align 8
  %145 = load i32*, i32** %17, align 8
  %146 = icmp eq i32* %145, null
  br i1 %146, label %147, label %151

147:                                              ; preds = %141
  %148 = load i8*, i8** %9, align 8
  %149 = ptrtoint i8* %148 to i64
  %150 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %149)
  br label %151

151:                                              ; preds = %147, %141
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 4
  %154 = load i32*, i32** %17, align 8
  %155 = call i32 @memcpy(i32* %153, i32* %154, i32 4)
  br label %156

156:                                              ; preds = %151, %134
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %158 = icmp ne %struct.TYPE_4__* %157, null
  br i1 %158, label %161, label %159

159:                                              ; preds = %156
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  store %struct.TYPE_4__* %160, %struct.TYPE_4__** @keyword_top, align 8
  br label %165

161:                                              ; preds = %156
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 3
  store %struct.TYPE_4__* %162, %struct.TYPE_4__** %164, align 8
  br label %165

165:                                              ; preds = %102, %161, %159
  ret void
}

declare dso_local i64 @unichar_len(i32*) #1

declare dso_local i32 @memcmp(i32*, i32*, i64) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @unichar_dup(i32*) #1

declare dso_local i32* @wind_find_language_by_id(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_4__* @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
