; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_fixup_tdescs.c_fix_small_cpu_struct.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_fixup_tdescs.c_fix_small_cpu_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64, i8*, %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { %struct.TYPE_11__*, %struct.TYPE_9__*, i8*, i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"cpu_t\00", align 1
@TYPEDEF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@STRUCT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"cpu_cyclic\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"cpu_m\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"cpu_m_pad\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"CTFCONVERT_PERMISSIVE\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"last cpu_t member before cpu_m is %s; it must be cpu_m_pad.\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"machcpu\00", align 1
@FORWARD = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [39 x i8] c"Adding cpu_m machcpu %s to cpu struct\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"forward\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@NBBY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i64)* @fix_small_cpu_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fix_small_cpu_struct(%struct.TYPE_10__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = call %struct.TYPE_9__* @lookup_tdesc(%struct.TYPE_10__* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %5, align 8
  %14 = icmp ne %struct.TYPE_9__* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TYPEDEF, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %152

22:                                               ; preds = %15
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %6, align 8
  br label %29

26:                                               ; preds = %2
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = call %struct.TYPE_9__* @lookup_tdesc(%struct.TYPE_10__* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %6, align 8
  br label %29

29:                                               ; preds = %26, %22
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = icmp eq %struct.TYPE_9__* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %152

33:                                               ; preds = %29
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @streq(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @STRUCT, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39, %33
  br label %152

46:                                               ; preds = %39
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  store %struct.TYPE_11__* %49, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %9, align 8
  br label %50

50:                                               ; preds = %61, %46
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %52 = icmp ne %struct.TYPE_11__* %51, null
  br i1 %52, label %53, label %66

53:                                               ; preds = %50
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 1, i32* %11, align 4
  br label %60

60:                                               ; preds = %59, %53
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %62, %struct.TYPE_11__** %9, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  store %struct.TYPE_11__* %65, %struct.TYPE_11__** %8, align 8
  br label %50

66:                                               ; preds = %50
  %67 = load i32, i32* %11, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %66
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %71 = icmp eq %struct.TYPE_11__* %70, null
  br i1 %71, label %78, label %72

72:                                               ; preds = %69
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @strcmp(i8* %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72, %69, %66
  br label %152

79:                                               ; preds = %72
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @streq(i8* %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %79
  %86 = call i32* @getenv(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @terminate(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0), i8* %91)
  br label %93

93:                                               ; preds = %88, %85, %79
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %95 = call %struct.TYPE_9__* @lookup_tdesc(%struct.TYPE_10__* %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  store %struct.TYPE_9__* %95, %struct.TYPE_9__** %7, align 8
  %96 = icmp eq %struct.TYPE_9__* %95, null
  br i1 %96, label %97, label %112

97:                                               ; preds = %93
  %98 = call %struct.TYPE_9__* @xcalloc(i32 40)
  store %struct.TYPE_9__* %98, %struct.TYPE_9__** %7, align 8
  %99 = call i8* @xstrdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 2
  store i8* %99, i8** %101, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  %106 = sext i32 %104 to i64
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  %109 = load i64, i64* @FORWARD, align 8
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  br label %120

112:                                              ; preds = %93
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @STRUCT, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %152

119:                                              ; preds = %112
  br label %120

120:                                              ; preds = %119, %97
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @FORWARD, align 8
  %125 = icmp eq i64 %123, %124
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)
  %128 = call i32 @debug(i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i8* %127)
  %129 = call %struct.TYPE_11__* @xmalloc(i32 40)
  store %struct.TYPE_11__* %129, %struct.TYPE_11__** %10, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %4, align 8
  %134 = load i64, i64* @NBBY, align 8
  %135 = mul i64 %133, %134
  %136 = add i64 %132, %135
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 4
  store i64 %136, i64* %138, align 8
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 3
  store i64 0, i64* %140, align 8
  %141 = call i8* @xstrdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 2
  store i8* %141, i8** %143, align 8
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 1
  store %struct.TYPE_9__* %144, %struct.TYPE_9__** %146, align 8
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %148, align 8
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  store %struct.TYPE_11__* %149, %struct.TYPE_11__** %151, align 8
  br label %152

152:                                              ; preds = %120, %118, %78, %45, %32, %21
  ret void
}

declare dso_local %struct.TYPE_9__* @lookup_tdesc(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @streq(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @getenv(i8*) #1

declare dso_local i32 @terminate(i8*, i8*) #1

declare dso_local %struct.TYPE_9__* @xcalloc(i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @debug(i32, i8*, i8*) #1

declare dso_local %struct.TYPE_11__* @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
