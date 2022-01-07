; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_dynamic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_dynamic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i64, i64, %struct.TYPE_9__, %struct.section* }
%struct.TYPE_9__ = type { i32 }
%struct.section = type { i64, i32, i64, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i64 }

@SHT_DYNAMIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"elf_getdata failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"gelf_getdyn failed: %s\00", align 1
@DT_NULL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"\0ADynamic section at offset 0x%jx\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c" contains %u entries:\0A\00", align 1
@ELFCLASS32 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"%5s%12s%28s\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"Tag\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Name/Value\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"%5s%20s%28s\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c" 0x%8.8jx\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c" 0x%16.16jx\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c" %-20s\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"\0AThere is no dynamic section in this file.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*)* @dump_dynamic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_dynamic(%struct.readelf* %0) #0 {
  %2 = alloca %struct.readelf*, align 8
  %3 = alloca %struct.TYPE_10__, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.section*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.readelf* %0, %struct.readelf** %2, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %145, %1
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = load %struct.readelf*, %struct.readelf** %2, align 8
  %16 = getelementptr inbounds %struct.readelf, %struct.readelf* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %148

19:                                               ; preds = %12
  %20 = load %struct.readelf*, %struct.readelf** %2, align 8
  %21 = getelementptr inbounds %struct.readelf, %struct.readelf* %20, i32 0, i32 3
  %22 = load %struct.section*, %struct.section** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.section, %struct.section* %22, i64 %24
  store %struct.section* %25, %struct.section** %5, align 8
  %26 = load %struct.section*, %struct.section** %5, align 8
  %27 = getelementptr inbounds %struct.section, %struct.section* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SHT_DYNAMIC, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  br label %145

32:                                               ; preds = %19
  %33 = call i32 (...) @elf_errno()
  %34 = load %struct.section*, %struct.section** %5, align 8
  %35 = getelementptr inbounds %struct.section, %struct.section* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.TYPE_11__* @elf_getdata(i32 %36, i32* null)
  store %struct.TYPE_11__* %37, %struct.TYPE_11__** %4, align 8
  %38 = icmp eq %struct.TYPE_11__* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = call i32 (...) @elf_errno()
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = call i32 @elf_errmsg(i32 -1)
  %45 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %43, %39
  br label %145

47:                                               ; preds = %32
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sle i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %145

53:                                               ; preds = %47
  store i32 1, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %54 = load %struct.section*, %struct.section** %5, align 8
  %55 = call i32 @get_ent_count(%struct.section* %54, i32* %10)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  br label %145

58:                                               ; preds = %53
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %80, %58
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %59
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call %struct.TYPE_10__* @gelf_getdyn(%struct.TYPE_11__* %64, i32 %65, %struct.TYPE_10__* %3)
  %67 = icmp ne %struct.TYPE_10__* %66, %3
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = call i32 @elf_errmsg(i32 -1)
  %70 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %80

71:                                               ; preds = %63
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @DT_NULL, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %83

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79, %68
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %59

83:                                               ; preds = %78, %59
  %84 = load %struct.section*, %struct.section** %5, align 8
  %85 = getelementptr inbounds %struct.section, %struct.section* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %11, align 4
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  %91 = load %struct.readelf*, %struct.readelf** %2, align 8
  %92 = getelementptr inbounds %struct.readelf, %struct.readelf* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @ELFCLASS32, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %83
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %100

98:                                               ; preds = %83
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %96
  store i32 0, i32* %9, align 4
  br label %101

101:                                              ; preds = %141, %100
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %144

105:                                              ; preds = %101
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call %struct.TYPE_10__* @gelf_getdyn(%struct.TYPE_11__* %106, i32 %107, %struct.TYPE_10__* %3)
  %109 = icmp ne %struct.TYPE_10__* %108, %3
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %141

111:                                              ; preds = %105
  %112 = load %struct.readelf*, %struct.readelf** %2, align 8
  %113 = getelementptr inbounds %struct.readelf, %struct.readelf* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @ELFCLASS32, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %120)
  br label %127

122:                                              ; preds = %111
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = trunc i64 %124 to i32
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %122, %117
  %128 = load %struct.readelf*, %struct.readelf** %2, align 8
  %129 = getelementptr inbounds %struct.readelf, %struct.readelf* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i8* @dt_type(i32 %131, i64 %133)
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* %134)
  %136 = load %struct.readelf*, %struct.readelf** %2, align 8
  %137 = load %struct.section*, %struct.section** %5, align 8
  %138 = getelementptr inbounds %struct.section, %struct.section* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @dump_dyn_val(%struct.readelf* %136, %struct.TYPE_10__* %3, i32 %139)
  br label %141

141:                                              ; preds = %127, %110
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %9, align 4
  br label %101

144:                                              ; preds = %101
  br label %145

145:                                              ; preds = %144, %57, %52, %46, %31
  %146 = load i32, i32* %7, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %7, align 4
  br label %12

148:                                              ; preds = %12
  %149 = load i32, i32* %8, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %148
  %152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0))
  br label %153

153:                                              ; preds = %151, %148
  ret void
}

declare dso_local i32 @elf_errno(...) #1

declare dso_local %struct.TYPE_11__* @elf_getdata(i32, i32*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @get_ent_count(%struct.section*, i32*) #1

declare dso_local %struct.TYPE_10__* @gelf_getdyn(%struct.TYPE_11__*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @dt_type(i32, i64) #1

declare dso_local i32 @dump_dyn_val(%struct.readelf*, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
