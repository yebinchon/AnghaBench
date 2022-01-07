; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genmodes.c_make_complex_modes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genmodes.c_make_complex_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mode_data = type { i32, i8*, i8*, %struct.mode_data*, i32, %struct.mode_data* }

@MODE_RANDOM = common dso_local global i32 0, align 4
@modes = common dso_local global %struct.mode_data** null, align 8
@.str = private unnamed_addr constant [33 x i8] c"%s:%d:mode name \22%s\22 is too long\00", align 1
@MODE_FLOAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"%s:%d: float mode \22%s\22 has no 'F' or 'D'\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"C%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32)* @make_complex_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_complex_modes(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mode_data*, align 8
  %8 = alloca %struct.mode_data*, align 8
  %9 = alloca [8 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @complex_class(i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @MODE_RANDOM, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %118

19:                                               ; preds = %3
  %20 = load %struct.mode_data**, %struct.mode_data*** @modes, align 8
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.mode_data*, %struct.mode_data** %20, i64 %22
  %24 = load %struct.mode_data*, %struct.mode_data** %23, align 8
  store %struct.mode_data* %24, %struct.mode_data** %7, align 8
  br label %25

25:                                               ; preds = %114, %19
  %26 = load %struct.mode_data*, %struct.mode_data** %7, align 8
  %27 = icmp ne %struct.mode_data* %26, null
  br i1 %27, label %28, label %118

28:                                               ; preds = %25
  %29 = load %struct.mode_data*, %struct.mode_data** %7, align 8
  %30 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %114

34:                                               ; preds = %28
  %35 = load %struct.mode_data*, %struct.mode_data** %7, align 8
  %36 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = sext i32 %38 to i64
  %40 = icmp uge i64 %39, 8
  br i1 %40, label %41, label %52

41:                                               ; preds = %34
  %42 = load %struct.mode_data*, %struct.mode_data** %7, align 8
  %43 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.mode_data*, %struct.mode_data** %7, align 8
  %46 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.mode_data*, %struct.mode_data** %7, align 8
  %49 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %44, i8* %47, i8* %50)
  br label %114

52:                                               ; preds = %34
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @MODE_FLOAT, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %98

56:                                               ; preds = %52
  store i8* null, i8** %12, align 8
  %57 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %58 = load %struct.mode_data*, %struct.mode_data** %7, align 8
  %59 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @strncpy(i8* %57, i8* %60, i32 8)
  %62 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %63 = call i8* @strchr(i8* %62, i8 signext 70)
  store i8* %63, i8** %11, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %68 = call i8* @strchr(i8* %67, i8 signext 68)
  store i8* %68, i8** %12, align 8
  br label %69

69:                                               ; preds = %66, %56
  %70 = load i8*, i8** %11, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %86

72:                                               ; preds = %69
  %73 = load i8*, i8** %12, align 8
  %74 = icmp eq i8* %73, null
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load %struct.mode_data*, %struct.mode_data** %7, align 8
  %77 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.mode_data*, %struct.mode_data** %7, align 8
  %80 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.mode_data*, %struct.mode_data** %7, align 8
  %83 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %78, i8* %81, i8* %84)
  br label %114

86:                                               ; preds = %72, %69
  %87 = load i8*, i8** %11, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i8*, i8** %11, align 8
  store i8 67, i8* %90, align 1
  br label %97

91:                                               ; preds = %86
  %92 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %93 = load %struct.mode_data*, %struct.mode_data** %7, align 8
  %94 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @snprintf(i8* %92, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %95)
  br label %97

97:                                               ; preds = %91, %89
  br label %104

98:                                               ; preds = %52
  %99 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %100 = load %struct.mode_data*, %struct.mode_data** %7, align 8
  %101 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @snprintf(i8* %99, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %102)
  br label %104

104:                                              ; preds = %98, %97
  %105 = load i32, i32* %10, align 4
  %106 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %107 = call i32 @xstrdup(i8* %106)
  %108 = load i8*, i8** %5, align 8
  %109 = load i32, i32* %6, align 4
  %110 = call %struct.mode_data* @new_mode(i32 %105, i32 %107, i8* %108, i32 %109)
  store %struct.mode_data* %110, %struct.mode_data** %8, align 8
  %111 = load %struct.mode_data*, %struct.mode_data** %7, align 8
  %112 = load %struct.mode_data*, %struct.mode_data** %8, align 8
  %113 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %112, i32 0, i32 3
  store %struct.mode_data* %111, %struct.mode_data** %113, align 8
  br label %114

114:                                              ; preds = %104, %75, %41, %33
  %115 = load %struct.mode_data*, %struct.mode_data** %7, align 8
  %116 = getelementptr inbounds %struct.mode_data, %struct.mode_data* %115, i32 0, i32 5
  %117 = load %struct.mode_data*, %struct.mode_data** %116, align 8
  store %struct.mode_data* %117, %struct.mode_data** %7, align 8
  br label %25

118:                                              ; preds = %18, %25
  ret void
}

declare dso_local i32 @complex_class(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @error(i8*, i32, i8*, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local %struct.mode_data* @new_mode(i32, i32, i8*, i32) #1

declare dso_local i32 @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
