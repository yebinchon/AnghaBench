; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_binary.c_binary_set_section_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_binary.c_binary_set_section_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64, i64, i64, %struct.TYPE_10__* }

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_NEVER_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"Warning: Writing section `%s' to huge (ie negative) file offset 0x%lx.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*, %struct.TYPE_10__*, i8*, i32, i64)* @binary_set_section_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @binary_set_section_contents(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load i64, i64* %11, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i64, i64* @TRUE, align 8
  store i64 %18, i64* %6, align 8
  br label %158

19:                                               ; preds = %5
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %131, label %24

24:                                               ; preds = %19
  %25 = load i64, i64* @FALSE, align 8
  store i64 %25, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %14, align 8
  br label %29

29:                                               ; preds = %70, %24
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %31 = icmp ne %struct.TYPE_10__* %30, null
  br i1 %31, label %32, label %74

32:                                               ; preds = %29
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %37 = load i32, i32* @SEC_LOAD, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @SEC_ALLOC, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @SEC_NEVER_LOAD, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %35, %42
  %44 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %45 = load i32, i32* @SEC_LOAD, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @SEC_ALLOC, align 4
  %48 = or i32 %46, %47
  %49 = icmp eq i32 %43, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %32
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %50
  %56 = load i64, i64* %12, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %13, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %58, %55
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %13, align 8
  %68 = load i64, i64* @TRUE, align 8
  store i64 %68, i64* %12, align 8
  br label %69

69:                                               ; preds = %64, %58, %50, %32
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  store %struct.TYPE_10__* %73, %struct.TYPE_10__** %14, align 8
  br label %29

74:                                               ; preds = %29
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  store %struct.TYPE_10__* %77, %struct.TYPE_10__** %14, align 8
  br label %78

78:                                               ; preds = %123, %74
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %80 = icmp ne %struct.TYPE_10__* %79, null
  br i1 %80, label %81, label %127

81:                                               ; preds = %78
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %13, align 8
  %86 = sub nsw i64 %84, %85
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 3
  store i64 %86, i64* %88, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %93 = load i32, i32* @SEC_ALLOC, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @SEC_NEVER_LOAD, align 4
  %96 = or i32 %94, %95
  %97 = and i32 %91, %96
  %98 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %99 = load i32, i32* @SEC_ALLOC, align 4
  %100 = or i32 %98, %99
  %101 = icmp ne i32 %97, %100
  br i1 %101, label %107, label %102

102:                                              ; preds = %81
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102, %81
  br label %123

108:                                              ; preds = %102
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %108
  %114 = call i32 @_(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %117 = call i32 @bfd_get_section_name(%struct.TYPE_9__* %115, %struct.TYPE_10__* %116)
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @_bfd_error_handler(i32 %114, i32 %117, i64 %120)
  br label %122

122:                                              ; preds = %113, %108
  br label %123

123:                                              ; preds = %122, %107
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 4
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  store %struct.TYPE_10__* %126, %struct.TYPE_10__** %14, align 8
  br label %78

127:                                              ; preds = %78
  %128 = load i64, i64* @TRUE, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  br label %131

131:                                              ; preds = %127, %19
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @SEC_LOAD, align 4
  %136 = load i32, i32* @SEC_ALLOC, align 4
  %137 = or i32 %135, %136
  %138 = and i32 %134, %137
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %131
  %141 = load i64, i64* @TRUE, align 8
  store i64 %141, i64* %6, align 8
  br label %158

142:                                              ; preds = %131
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @SEC_NEVER_LOAD, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %142
  %150 = load i64, i64* @TRUE, align 8
  store i64 %150, i64* %6, align 8
  br label %158

151:                                              ; preds = %142
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %154 = load i8*, i8** %9, align 8
  %155 = load i32, i32* %10, align 4
  %156 = load i64, i64* %11, align 8
  %157 = call i64 @_bfd_generic_set_section_contents(%struct.TYPE_9__* %152, %struct.TYPE_10__* %153, i8* %154, i32 %155, i64 %156)
  store i64 %157, i64* %6, align 8
  br label %158

158:                                              ; preds = %151, %149, %140, %17
  %159 = load i64, i64* %6, align 8
  ret i64 %159
}

declare dso_local i32 @_bfd_error_handler(i32, i32, i64) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_get_section_name(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i64 @_bfd_generic_set_section_contents(%struct.TYPE_9__*, %struct.TYPE_10__*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
