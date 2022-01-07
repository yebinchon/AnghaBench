; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_dyn_val.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_dyn_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@DT_LOPROC = common dso_local global i32 0, align 4
@DT_HIPROC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c" 0x%jx\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c" %ju (bytes)\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" %ju\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c" Auxiliary library: [%s]\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c" Filter library: [%s]\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c" Shared library: [%s]\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c" Library soname: [%s]\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c" Library rpath: [%s]\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c" Library runpath: [%s]\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@dt_flags = common dso_local global i32 0, align 4
@dt_flags_1 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*, %struct.TYPE_8__*, i32)* @dump_dyn_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_dyn_val(%struct.readelf* %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca %struct.readelf*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.readelf* %0, %struct.readelf** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @DT_LOPROC, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %3
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DT_HIPROC, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %13
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 172
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 170
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.readelf*, %struct.readelf** %4, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = call i32 @dump_arch_dyn_val(%struct.readelf* %30, %struct.TYPE_8__* %31)
  br label %145

33:                                               ; preds = %24, %19, %13, %3
  store i8* null, i8** %7, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 172
  br i1 %37, label %63, label %38

38:                                               ; preds = %33
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 170
  br i1 %42, label %63, label %43

43:                                               ; preds = %38
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 155
  br i1 %47, label %63, label %48

48:                                               ; preds = %43
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 139
  br i1 %52, label %63, label %53

53:                                               ; preds = %48
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 141
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 140
  br i1 %62, label %63, label %71

63:                                               ; preds = %58, %53, %48, %43, %38, %33
  %64 = load %struct.readelf*, %struct.readelf** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @dyn_str(%struct.readelf* %64, i32 %65, i32 %69)
  store i8* %70, i8** %7, align 8
  br label %71

71:                                               ; preds = %63, %58
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %143 [
    i32 154, label %75
    i32 153, label %75
    i32 159, label %75
    i32 137, label %75
    i32 134, label %75
    i32 148, label %75
    i32 158, label %75
    i32 136, label %75
    i32 149, label %75
    i32 171, label %75
    i32 133, label %75
    i32 156, label %75
    i32 169, label %75
    i32 132, label %75
    i32 130, label %75
    i32 128, label %75
    i32 163, label %75
    i32 162, label %75
    i32 165, label %75
    i32 151, label %81
    i32 145, label %81
    i32 146, label %81
    i32 138, label %81
    i32 135, label %81
    i32 142, label %81
    i32 143, label %81
    i32 150, label %81
    i32 157, label %81
    i32 168, label %81
    i32 164, label %81
    i32 161, label %81
    i32 147, label %87
    i32 144, label %87
    i32 131, label %87
    i32 129, label %87
    i32 172, label %93
    i32 170, label %96
    i32 155, label %99
    i32 139, label %102
    i32 141, label %105
    i32 140, label %108
    i32 152, label %111
    i32 160, label %122
    i32 167, label %129
    i32 166, label %136
  ]

75:                                               ; preds = %71, %71, %71, %71, %71, %71, %71, %71, %71, %71, %71, %71, %71, %71, %71, %71, %71, %71, %71
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %79)
  br label %145

81:                                               ; preds = %71, %71, %71, %71, %71, %71, %71, %71, %71, %71, %71, %71
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  br label %145

87:                                               ; preds = %71, %71, %71, %71
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  br label %145

93:                                               ; preds = %71
  %94 = load i8*, i8** %7, align 8
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %94)
  br label %145

96:                                               ; preds = %71
  %97 = load i8*, i8** %7, align 8
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %97)
  br label %145

99:                                               ; preds = %71
  %100 = load i8*, i8** %7, align 8
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %100)
  br label %145

102:                                              ; preds = %71
  %103 = load i8*, i8** %7, align 8
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %103)
  br label %145

105:                                              ; preds = %71
  %106 = load i8*, i8** %7, align 8
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %106)
  br label %145

108:                                              ; preds = %71
  %109 = load i8*, i8** %7, align 8
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %109)
  br label %145

111:                                              ; preds = %71
  %112 = load %struct.readelf*, %struct.readelf** %4, align 8
  %113 = getelementptr inbounds %struct.readelf, %struct.readelf* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i8* @dt_type(i32 %115, i32 %119)
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %120)
  br label %145

122:                                              ; preds = %71
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i8* @timestamp(i32 %126)
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %127)
  br label %145

129:                                              ; preds = %71
  %130 = load i32, i32* @dt_flags, align 4
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @dump_flags(i32 %130, i32 %134)
  br label %145

136:                                              ; preds = %71
  %137 = load i32, i32* @dt_flags_1, align 4
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @dump_flags(i32 %137, i32 %141)
  br label %145

143:                                              ; preds = %71
  %144 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %145

145:                                              ; preds = %29, %143, %136, %129, %122, %111, %108, %105, %102, %99, %96, %93, %87, %81, %75
  ret void
}

declare dso_local i32 @dump_arch_dyn_val(%struct.readelf*, %struct.TYPE_8__*) #1

declare dso_local i8* @dyn_str(%struct.readelf*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @dt_type(i32, i32) #1

declare dso_local i8* @timestamp(i32) #1

declare dso_local i32 @dump_flags(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
