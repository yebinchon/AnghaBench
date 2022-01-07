; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c_xcoff_link_create_extra_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c_xcoff_link_create_extra_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.bfd_link_info = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__* }

@FALSE = common dso_local global i32 0, align 4
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@SEC_IN_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c".loader\00", align 1
@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c".gl\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c".tc\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c".ds\00", align 1
@strip_all = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c".debug\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.bfd_link_info*)* @xcoff_link_create_extra_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xcoff_link_create_extra_sections(%struct.TYPE_9__* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %4, align 8
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %18 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %17, i32 0, i32 1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %156

26:                                               ; preds = %2
  %27 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %28 = call %struct.TYPE_11__* @xcoff_hash_table(%struct.bfd_link_info* %27)
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = icmp eq %struct.TYPE_10__* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %26
  %33 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %34 = load i32, i32* @SEC_IN_MEMORY, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %7, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call %struct.TYPE_10__* @bfd_make_section_anyway_with_flags(%struct.TYPE_9__* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %37)
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %6, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %40 = icmp eq %struct.TYPE_10__* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %158

42:                                               ; preds = %32
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %45 = call %struct.TYPE_11__* @xcoff_hash_table(%struct.bfd_link_info* %44)
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 4
  store %struct.TYPE_10__* %43, %struct.TYPE_10__** %46, align 8
  br label %47

47:                                               ; preds = %42, %26
  %48 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %49 = call %struct.TYPE_11__* @xcoff_hash_table(%struct.bfd_link_info* %48)
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = icmp eq %struct.TYPE_10__* %51, null
  br i1 %52, label %53, label %74

53:                                               ; preds = %47
  %54 = load i32, i32* @SEC_ALLOC, align 4
  %55 = load i32, i32* @SEC_LOAD, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @SEC_IN_MEMORY, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %9, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call %struct.TYPE_10__* @bfd_make_section_anyway_with_flags(%struct.TYPE_9__* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  store %struct.TYPE_10__* %63, %struct.TYPE_10__** %8, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %65 = icmp eq %struct.TYPE_10__* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %53
  br label %158

67:                                               ; preds = %53
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %69 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %70 = call %struct.TYPE_11__* @xcoff_hash_table(%struct.bfd_link_info* %69)
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 3
  store %struct.TYPE_10__* %68, %struct.TYPE_10__** %71, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  store i32 2, i32* %73, align 4
  br label %74

74:                                               ; preds = %67, %47
  %75 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %76 = call %struct.TYPE_11__* @xcoff_hash_table(%struct.bfd_link_info* %75)
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = icmp eq %struct.TYPE_10__* %78, null
  br i1 %79, label %80, label %101

80:                                               ; preds = %74
  %81 = load i32, i32* @SEC_ALLOC, align 4
  %82 = load i32, i32* @SEC_LOAD, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @SEC_IN_MEMORY, align 4
  %87 = or i32 %85, %86
  store i32 %87, i32* %11, align 4
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call %struct.TYPE_10__* @bfd_make_section_anyway_with_flags(%struct.TYPE_9__* %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  store %struct.TYPE_10__* %90, %struct.TYPE_10__** %10, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %92 = icmp eq %struct.TYPE_10__* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %80
  br label %158

94:                                               ; preds = %80
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %96 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %97 = call %struct.TYPE_11__* @xcoff_hash_table(%struct.bfd_link_info* %96)
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 2
  store %struct.TYPE_10__* %95, %struct.TYPE_10__** %98, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  store i32 2, i32* %100, align 4
  br label %101

101:                                              ; preds = %94, %74
  %102 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %103 = call %struct.TYPE_11__* @xcoff_hash_table(%struct.bfd_link_info* %102)
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = icmp eq %struct.TYPE_10__* %105, null
  br i1 %106, label %107, label %128

107:                                              ; preds = %101
  %108 = load i32, i32* @SEC_ALLOC, align 4
  %109 = load i32, i32* @SEC_LOAD, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @SEC_IN_MEMORY, align 4
  %114 = or i32 %112, %113
  store i32 %114, i32* %13, align 4
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %116 = load i32, i32* %13, align 4
  %117 = call %struct.TYPE_10__* @bfd_make_section_anyway_with_flags(%struct.TYPE_9__* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  store %struct.TYPE_10__* %117, %struct.TYPE_10__** %12, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %119 = icmp eq %struct.TYPE_10__* %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %107
  br label %158

121:                                              ; preds = %107
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %123 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %124 = call %struct.TYPE_11__* @xcoff_hash_table(%struct.bfd_link_info* %123)
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 1
  store %struct.TYPE_10__* %122, %struct.TYPE_10__** %125, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  store i32 2, i32* %127, align 4
  br label %128

128:                                              ; preds = %121, %101
  %129 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %130 = call %struct.TYPE_11__* @xcoff_hash_table(%struct.bfd_link_info* %129)
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = icmp eq %struct.TYPE_10__* %132, null
  br i1 %133, label %134, label %155

134:                                              ; preds = %128
  %135 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %136 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @strip_all, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %155

140:                                              ; preds = %134
  %141 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %142 = load i32, i32* @SEC_IN_MEMORY, align 4
  %143 = or i32 %141, %142
  store i32 %143, i32* %15, align 4
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %145 = load i32, i32* %15, align 4
  %146 = call %struct.TYPE_10__* @bfd_make_section_anyway_with_flags(%struct.TYPE_9__* %144, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %145)
  store %struct.TYPE_10__* %146, %struct.TYPE_10__** %14, align 8
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %148 = icmp eq %struct.TYPE_10__* %147, null
  br i1 %148, label %149, label %150

149:                                              ; preds = %140
  br label %158

150:                                              ; preds = %140
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %152 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %153 = call %struct.TYPE_11__* @xcoff_hash_table(%struct.bfd_link_info* %152)
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  store %struct.TYPE_10__* %151, %struct.TYPE_10__** %154, align 8
  br label %155

155:                                              ; preds = %150, %134, %128
  br label %156

156:                                              ; preds = %155, %2
  %157 = load i32, i32* @TRUE, align 4
  store i32 %157, i32* %5, align 4
  br label %158

158:                                              ; preds = %156, %149, %120, %93, %66, %41
  %159 = load i32, i32* %5, align 4
  ret i32 %159
}

declare dso_local %struct.TYPE_11__* @xcoff_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.TYPE_10__* @bfd_make_section_anyway_with_flags(%struct.TYPE_9__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
