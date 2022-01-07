; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_complaints.c_vcomplaint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_complaints.c_vcomplaint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complaints = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.complain = type { i64, i32, i32, i32* }
%struct.cleanup = type { i32 }

@stop_whining = common dso_local global i64 0, align 8
@info_verbose = common dso_local global i64 0, align 8
@xfree = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@gdb_stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.complaints**, i8*, i32, i8*, i32)* @vcomplaint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcomplaint(%struct.complaints** %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.complaints**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.complaints*, align 8
  %12 = alloca %struct.complain*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.cleanup*, align 8
  store %struct.complaints** %0, %struct.complaints*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.complaints**, %struct.complaints*** %6, align 8
  %17 = call %struct.complaints* @get_complaints(%struct.complaints** %16)
  store %struct.complaints* %17, %struct.complaints** %11, align 8
  %18 = load %struct.complaints*, %struct.complaints** %11, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i8*, i8** %9, align 8
  %22 = call %struct.complain* @find_complaint(%struct.complaints* %18, i8* %19, i32 %20, i8* %21)
  store %struct.complain* %22, %struct.complain** %12, align 8
  %23 = load %struct.complaints*, %struct.complaints** %11, align 8
  %24 = icmp ne %struct.complaints* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @gdb_assert(i32 %25)
  %27 = load %struct.complain*, %struct.complain** %12, align 8
  %28 = getelementptr inbounds %struct.complain, %struct.complain* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %28, align 8
  %31 = load %struct.complain*, %struct.complain** %12, align 8
  %32 = getelementptr inbounds %struct.complain, %struct.complain* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @stop_whining, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %5
  br label %138

37:                                               ; preds = %5
  %38 = load i64, i64* @info_verbose, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 128, i32* %13, align 4
  br label %45

41:                                               ; preds = %37
  %42 = load %struct.complaints*, %struct.complaints** %11, align 8
  %43 = getelementptr inbounds %struct.complaints, %struct.complaints* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %13, align 4
  br label %45

45:                                               ; preds = %41, %40
  %46 = load %struct.complain*, %struct.complain** %12, align 8
  %47 = getelementptr inbounds %struct.complain, %struct.complain* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load %struct.complain*, %struct.complain** %12, align 8
  %52 = getelementptr inbounds %struct.complain, %struct.complain* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.complain*, %struct.complain** %12, align 8
  %55 = getelementptr inbounds %struct.complain, %struct.complain* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.complain*, %struct.complain** %12, align 8
  %58 = getelementptr inbounds %struct.complain, %struct.complain* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @internal_vwarning(i32* %53, i32 %56, i32 %59, i32 %60)
  br label %126

62:                                               ; preds = %45
  br i1 true, label %63, label %69

63:                                               ; preds = %62
  %64 = load %struct.complain*, %struct.complain** %12, align 8
  %65 = getelementptr inbounds %struct.complain, %struct.complain* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @warning_hook(i32 %66, i32 %67)
  br label %125

69:                                               ; preds = %62
  %70 = load %struct.complaints*, %struct.complaints** %11, align 8
  %71 = getelementptr inbounds %struct.complaints, %struct.complaints* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = icmp eq %struct.TYPE_2__* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load %struct.complain*, %struct.complain** %12, align 8
  %76 = getelementptr inbounds %struct.complain, %struct.complain* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @vwarning(i32 %77, i32 %78)
  br label %124

80:                                               ; preds = %69
  %81 = load %struct.complain*, %struct.complain** %12, align 8
  %82 = getelementptr inbounds %struct.complain, %struct.complain* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @xvasprintf(i8** %14, i32 %83, i32 %84)
  %86 = load i32, i32* @xfree, align 4
  %87 = load i8*, i8** %14, align 8
  %88 = call %struct.cleanup* @make_cleanup(i32 %86, i8* %87)
  store %struct.cleanup* %88, %struct.cleanup** %15, align 8
  %89 = call i32 @wrap_here(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 128
  br i1 %91, label %92, label %94

92:                                               ; preds = %80
  %93 = call i32 (...) @begin_line()
  br label %94

94:                                               ; preds = %92, %80
  %95 = load i32, i32* @gdb_stderr, align 4
  %96 = load %struct.complaints*, %struct.complaints** %11, align 8
  %97 = getelementptr inbounds %struct.complaints, %struct.complaints* %96, i32 0, i32 1
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load i32, i32* %13, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i8*, i8** %14, align 8
  %105 = load %struct.complaints*, %struct.complaints** %11, align 8
  %106 = getelementptr inbounds %struct.complaints, %struct.complaints* %105, i32 0, i32 1
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load i32, i32* %13, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @fprintf_filtered(i32 %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %103, i8* %104, i32 %112)
  %114 = load i32, i32* %13, align 4
  %115 = icmp eq i32 %114, 130
  br i1 %115, label %116, label %119

116:                                              ; preds = %94
  %117 = load i32, i32* @gdb_stderr, align 4
  %118 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %117)
  br label %121

119:                                              ; preds = %94
  %120 = call i32 @wrap_here(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %116
  %122 = load %struct.cleanup*, %struct.cleanup** %15, align 8
  %123 = call i32 @do_cleanups(%struct.cleanup* %122)
  br label %124

124:                                              ; preds = %121, %74
  br label %125

125:                                              ; preds = %124, %63
  br label %126

126:                                              ; preds = %125, %50
  %127 = load i32, i32* %13, align 4
  switch i32 %127, label %135 [
    i32 130, label %128
    i32 131, label %129
    i32 128, label %132
    i32 129, label %132
  ]

128:                                              ; preds = %126
  br label %135

129:                                              ; preds = %126
  %130 = load %struct.complaints*, %struct.complaints** %11, align 8
  %131 = getelementptr inbounds %struct.complaints, %struct.complaints* %130, i32 0, i32 0
  store i32 128, i32* %131, align 8
  br label %135

132:                                              ; preds = %126, %126
  %133 = load %struct.complaints*, %struct.complaints** %11, align 8
  %134 = getelementptr inbounds %struct.complaints, %struct.complaints* %133, i32 0, i32 0
  store i32 128, i32* %134, align 8
  br label %135

135:                                              ; preds = %126, %132, %129, %128
  %136 = load i32, i32* @gdb_stderr, align 4
  %137 = call i32 @gdb_flush(i32 %136)
  br label %138

138:                                              ; preds = %135, %36
  ret void
}

declare dso_local %struct.complaints* @get_complaints(%struct.complaints**) #1

declare dso_local %struct.complain* @find_complaint(%struct.complaints*, i8*, i32, i8*) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @internal_vwarning(i32*, i32, i32, i32) #1

declare dso_local i32 @warning_hook(i32, i32) #1

declare dso_local i32 @vwarning(i32, i32) #1

declare dso_local i32 @xvasprintf(i8**, i32, i32) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i8*) #1

declare dso_local i32 @wrap_here(i8*) #1

declare dso_local i32 @begin_line(...) #1

declare dso_local i32 @fprintf_filtered(i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @fputs_filtered(i8*, i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i32 @gdb_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
