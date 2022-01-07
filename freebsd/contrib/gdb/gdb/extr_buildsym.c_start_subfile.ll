; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_buildsym.c_start_subfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_buildsym.c_start_subfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subfile = type { i64, %struct.subfile*, i32*, i32*, i32*, i32* }

@subfiles = common dso_local global %struct.subfile* null, align 8
@current_subfile = common dso_local global %struct.subfile* null, align 8
@language_unknown = common dso_local global i64 0, align 8
@language_cplus = common dso_local global i32 0, align 4
@language_fortran = common dso_local global i32 0, align 4
@language_c = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_subfile(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.subfile*, align 8
  %6 = alloca %struct.subfile*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.subfile*, %struct.subfile** @subfiles, align 8
  store %struct.subfile* %8, %struct.subfile** %5, align 8
  br label %9

9:                                                ; preds = %22, %2
  %10 = load %struct.subfile*, %struct.subfile** %5, align 8
  %11 = icmp ne %struct.subfile* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %9
  %13 = load %struct.subfile*, %struct.subfile** %5, align 8
  %14 = getelementptr inbounds %struct.subfile, %struct.subfile* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @FILENAME_CMP(i32* %15, i8* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load %struct.subfile*, %struct.subfile** %5, align 8
  store %struct.subfile* %20, %struct.subfile** @current_subfile, align 8
  br label %168

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.subfile*, %struct.subfile** %5, align 8
  %24 = getelementptr inbounds %struct.subfile, %struct.subfile* %23, i32 0, i32 1
  %25 = load %struct.subfile*, %struct.subfile** %24, align 8
  store %struct.subfile* %25, %struct.subfile** %5, align 8
  br label %9

26:                                               ; preds = %9
  %27 = call i64 @xmalloc(i32 48)
  %28 = inttoptr i64 %27 to %struct.subfile*
  store %struct.subfile* %28, %struct.subfile** %5, align 8
  %29 = load %struct.subfile*, %struct.subfile** %5, align 8
  %30 = bitcast %struct.subfile* %29 to i8*
  %31 = call i32 @memset(i8* %30, i32 0, i32 48)
  %32 = load %struct.subfile*, %struct.subfile** @subfiles, align 8
  %33 = load %struct.subfile*, %struct.subfile** %5, align 8
  %34 = getelementptr inbounds %struct.subfile, %struct.subfile* %33, i32 0, i32 1
  store %struct.subfile* %32, %struct.subfile** %34, align 8
  %35 = load %struct.subfile*, %struct.subfile** %5, align 8
  store %struct.subfile* %35, %struct.subfile** @subfiles, align 8
  %36 = load %struct.subfile*, %struct.subfile** %5, align 8
  store %struct.subfile* %36, %struct.subfile** @current_subfile, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  br label %45

40:                                               ; preds = %26
  %41 = load i8*, i8** %3, align 8
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = call i32* @savestring(i8* %41, i32 %43)
  br label %45

45:                                               ; preds = %40, %39
  %46 = phi i32* [ null, %39 ], [ %44, %40 ]
  %47 = load %struct.subfile*, %struct.subfile** %5, align 8
  %48 = getelementptr inbounds %struct.subfile, %struct.subfile* %47, i32 0, i32 2
  store i32* %46, i32** %48, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %57

52:                                               ; preds = %45
  %53 = load i8*, i8** %4, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @strlen(i8* %54)
  %56 = call i32* @savestring(i8* %53, i32 %55)
  br label %57

57:                                               ; preds = %52, %51
  %58 = phi i32* [ null, %51 ], [ %56, %52 ]
  %59 = load %struct.subfile*, %struct.subfile** %5, align 8
  %60 = getelementptr inbounds %struct.subfile, %struct.subfile* %59, i32 0, i32 5
  store i32* %58, i32** %60, align 8
  %61 = load %struct.subfile*, %struct.subfile** %5, align 8
  %62 = getelementptr inbounds %struct.subfile, %struct.subfile* %61, i32 0, i32 4
  store i32* null, i32** %62, align 8
  %63 = load %struct.subfile*, %struct.subfile** %5, align 8
  %64 = getelementptr inbounds %struct.subfile, %struct.subfile* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = call i8* @deduce_language_from_filename(i32* %65)
  %67 = ptrtoint i8* %66 to i64
  %68 = load %struct.subfile*, %struct.subfile** %5, align 8
  %69 = getelementptr inbounds %struct.subfile, %struct.subfile* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.subfile*, %struct.subfile** %5, align 8
  %71 = getelementptr inbounds %struct.subfile, %struct.subfile* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @language_unknown, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %57
  %76 = load %struct.subfile*, %struct.subfile** %5, align 8
  %77 = getelementptr inbounds %struct.subfile, %struct.subfile* %76, i32 0, i32 1
  %78 = load %struct.subfile*, %struct.subfile** %77, align 8
  %79 = icmp ne %struct.subfile* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %75
  %81 = load %struct.subfile*, %struct.subfile** %5, align 8
  %82 = getelementptr inbounds %struct.subfile, %struct.subfile* %81, i32 0, i32 1
  %83 = load %struct.subfile*, %struct.subfile** %82, align 8
  %84 = getelementptr inbounds %struct.subfile, %struct.subfile* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.subfile*, %struct.subfile** %5, align 8
  %87 = getelementptr inbounds %struct.subfile, %struct.subfile* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %80, %75, %57
  %89 = load %struct.subfile*, %struct.subfile** %5, align 8
  %90 = getelementptr inbounds %struct.subfile, %struct.subfile* %89, i32 0, i32 3
  store i32* null, i32** %90, align 8
  %91 = load %struct.subfile*, %struct.subfile** %5, align 8
  %92 = getelementptr inbounds %struct.subfile, %struct.subfile* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %131

95:                                               ; preds = %88
  %96 = load %struct.subfile*, %struct.subfile** %5, align 8
  %97 = getelementptr inbounds %struct.subfile, %struct.subfile* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = call i8* @deduce_language_from_filename(i32* %98)
  %100 = ptrtoint i8* %99 to i32
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @language_cplus, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %108, label %104

104:                                              ; preds = %95
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @language_fortran, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %130

108:                                              ; preds = %104, %95
  %109 = load %struct.subfile*, %struct.subfile** @subfiles, align 8
  store %struct.subfile* %109, %struct.subfile** %6, align 8
  br label %110

110:                                              ; preds = %125, %108
  %111 = load %struct.subfile*, %struct.subfile** %6, align 8
  %112 = icmp ne %struct.subfile* %111, null
  br i1 %112, label %113, label %129

113:                                              ; preds = %110
  %114 = load %struct.subfile*, %struct.subfile** %6, align 8
  %115 = getelementptr inbounds %struct.subfile, %struct.subfile* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @language_c, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %113
  %120 = load i32, i32* %7, align 4
  %121 = zext i32 %120 to i64
  %122 = load %struct.subfile*, %struct.subfile** %6, align 8
  %123 = getelementptr inbounds %struct.subfile, %struct.subfile* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  br label %124

124:                                              ; preds = %119, %113
  br label %125

125:                                              ; preds = %124
  %126 = load %struct.subfile*, %struct.subfile** %6, align 8
  %127 = getelementptr inbounds %struct.subfile, %struct.subfile* %126, i32 0, i32 1
  %128 = load %struct.subfile*, %struct.subfile** %127, align 8
  store %struct.subfile* %128, %struct.subfile** %6, align 8
  br label %110

129:                                              ; preds = %110
  br label %130

130:                                              ; preds = %129, %104
  br label %131

131:                                              ; preds = %130, %88
  %132 = load %struct.subfile*, %struct.subfile** %5, align 8
  %133 = getelementptr inbounds %struct.subfile, %struct.subfile* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @language_c, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %168

137:                                              ; preds = %131
  %138 = load %struct.subfile*, %struct.subfile** %5, align 8
  %139 = getelementptr inbounds %struct.subfile, %struct.subfile* %138, i32 0, i32 1
  %140 = load %struct.subfile*, %struct.subfile** %139, align 8
  %141 = icmp ne %struct.subfile* %140, null
  br i1 %141, label %142, label %168

142:                                              ; preds = %137
  %143 = load %struct.subfile*, %struct.subfile** %5, align 8
  %144 = getelementptr inbounds %struct.subfile, %struct.subfile* %143, i32 0, i32 1
  %145 = load %struct.subfile*, %struct.subfile** %144, align 8
  %146 = getelementptr inbounds %struct.subfile, %struct.subfile* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i32, i32* @language_cplus, align 4
  %149 = sext i32 %148 to i64
  %150 = icmp eq i64 %147, %149
  br i1 %150, label %160, label %151

151:                                              ; preds = %142
  %152 = load %struct.subfile*, %struct.subfile** %5, align 8
  %153 = getelementptr inbounds %struct.subfile, %struct.subfile* %152, i32 0, i32 1
  %154 = load %struct.subfile*, %struct.subfile** %153, align 8
  %155 = getelementptr inbounds %struct.subfile, %struct.subfile* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i32, i32* @language_fortran, align 4
  %158 = sext i32 %157 to i64
  %159 = icmp eq i64 %156, %158
  br i1 %159, label %160, label %168

160:                                              ; preds = %151, %142
  %161 = load %struct.subfile*, %struct.subfile** %5, align 8
  %162 = getelementptr inbounds %struct.subfile, %struct.subfile* %161, i32 0, i32 1
  %163 = load %struct.subfile*, %struct.subfile** %162, align 8
  %164 = getelementptr inbounds %struct.subfile, %struct.subfile* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.subfile*, %struct.subfile** %5, align 8
  %167 = getelementptr inbounds %struct.subfile, %struct.subfile* %166, i32 0, i32 0
  store i64 %165, i64* %167, align 8
  br label %168

168:                                              ; preds = %19, %160, %151, %137, %131
  ret void
}

declare dso_local i64 @FILENAME_CMP(i32*, i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32* @savestring(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @deduce_language_from_filename(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
