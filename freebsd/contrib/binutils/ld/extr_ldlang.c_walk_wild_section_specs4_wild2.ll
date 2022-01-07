; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_walk_wild_section_specs4_wild2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_walk_wild_section_specs4_wild2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.wildcard_list** }
%struct.wildcard_list = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_20__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.TYPE_19__*, i32, i8*)* @walk_wild_section_specs4_wild2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_wild_section_specs4_wild2(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.wildcard_list*, align 8
  %11 = alloca %struct.wildcard_list*, align 8
  %12 = alloca %struct.wildcard_list*, align 8
  %13 = alloca %struct.wildcard_list*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_20__*, align 8
  %16 = alloca %struct.TYPE_20__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load %struct.wildcard_list**, %struct.wildcard_list*** %20, align 8
  %22 = getelementptr inbounds %struct.wildcard_list*, %struct.wildcard_list** %21, i64 0
  %23 = load %struct.wildcard_list*, %struct.wildcard_list** %22, align 8
  store %struct.wildcard_list* %23, %struct.wildcard_list** %10, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load %struct.wildcard_list**, %struct.wildcard_list*** %25, align 8
  %27 = getelementptr inbounds %struct.wildcard_list*, %struct.wildcard_list** %26, i64 1
  %28 = load %struct.wildcard_list*, %struct.wildcard_list** %27, align 8
  store %struct.wildcard_list* %28, %struct.wildcard_list** %11, align 8
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load %struct.wildcard_list**, %struct.wildcard_list*** %30, align 8
  %32 = getelementptr inbounds %struct.wildcard_list*, %struct.wildcard_list** %31, i64 2
  %33 = load %struct.wildcard_list*, %struct.wildcard_list** %32, align 8
  store %struct.wildcard_list* %33, %struct.wildcard_list** %12, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load %struct.wildcard_list**, %struct.wildcard_list*** %35, align 8
  %37 = getelementptr inbounds %struct.wildcard_list*, %struct.wildcard_list** %36, i64 3
  %38 = load %struct.wildcard_list*, %struct.wildcard_list** %37, align 8
  store %struct.wildcard_list* %38, %struct.wildcard_list** %13, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %40 = load %struct.wildcard_list*, %struct.wildcard_list** %10, align 8
  %41 = call %struct.TYPE_20__* @find_section(%struct.TYPE_19__* %39, %struct.wildcard_list* %40, i32* %14)
  store %struct.TYPE_20__* %41, %struct.TYPE_20__** %15, align 8
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %4
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @walk_wild_section_general(%struct.TYPE_18__* %45, %struct.TYPE_19__* %46, i32 %47, i8* %48)
  br label %148

50:                                               ; preds = %4
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %52 = load %struct.wildcard_list*, %struct.wildcard_list** %11, align 8
  %53 = call %struct.TYPE_20__* @find_section(%struct.TYPE_19__* %51, %struct.wildcard_list* %52, i32* %14)
  store %struct.TYPE_20__* %53, %struct.TYPE_20__** %16, align 8
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @walk_wild_section_general(%struct.TYPE_18__* %57, %struct.TYPE_19__* %58, i32 %59, i8* %60)
  br label %148

62:                                               ; preds = %50
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %66, align 8
  store %struct.TYPE_20__* %67, %struct.TYPE_20__** %9, align 8
  br label %68

68:                                               ; preds = %144, %62
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %70 = icmp ne %struct.TYPE_20__* %69, null
  br i1 %70, label %71, label %148

71:                                               ; preds = %68
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %74 = icmp eq %struct.TYPE_20__* %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %79 = load %struct.wildcard_list*, %struct.wildcard_list** %10, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 @walk_wild_consider_section(%struct.TYPE_18__* %76, %struct.TYPE_19__* %77, %struct.TYPE_20__* %78, %struct.wildcard_list* %79, i32 %80, i8* %81)
  br label %143

83:                                               ; preds = %71
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %86 = icmp eq %struct.TYPE_20__* %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %91 = load %struct.wildcard_list*, %struct.wildcard_list** %11, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i8*, i8** %8, align 8
  %94 = call i32 @walk_wild_consider_section(%struct.TYPE_18__* %88, %struct.TYPE_19__* %89, %struct.TYPE_20__* %90, %struct.wildcard_list* %91, i32 %92, i8* %93)
  br label %142

95:                                               ; preds = %83
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %97, align 8
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %100 = call i8* @bfd_get_section_name(%struct.TYPE_16__* %98, %struct.TYPE_20__* %99)
  store i8* %100, i8** %17, align 8
  %101 = load %struct.wildcard_list*, %struct.wildcard_list** %12, align 8
  %102 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i8*, i8** %17, align 8
  %106 = call i32 @match_simple_wild(i32 %104, i8* %105)
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  store i32 %109, i32* %18, align 4
  %110 = load i32, i32* %18, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %95
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %116 = load %struct.wildcard_list*, %struct.wildcard_list** %12, align 8
  %117 = load i32, i32* %7, align 4
  %118 = load i8*, i8** %8, align 8
  %119 = call i32 @walk_wild_consider_section(%struct.TYPE_18__* %113, %struct.TYPE_19__* %114, %struct.TYPE_20__* %115, %struct.wildcard_list* %116, i32 %117, i8* %118)
  br label %141

120:                                              ; preds = %95
  %121 = load %struct.wildcard_list*, %struct.wildcard_list** %13, align 8
  %122 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i8*, i8** %17, align 8
  %126 = call i32 @match_simple_wild(i32 %124, i8* %125)
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  store i32 %129, i32* %18, align 4
  %130 = load i32, i32* %18, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %140, label %132

132:                                              ; preds = %120
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %136 = load %struct.wildcard_list*, %struct.wildcard_list** %13, align 8
  %137 = load i32, i32* %7, align 4
  %138 = load i8*, i8** %8, align 8
  %139 = call i32 @walk_wild_consider_section(%struct.TYPE_18__* %133, %struct.TYPE_19__* %134, %struct.TYPE_20__* %135, %struct.wildcard_list* %136, i32 %137, i8* %138)
  br label %140

140:                                              ; preds = %132, %120
  br label %141

141:                                              ; preds = %140, %112
  br label %142

142:                                              ; preds = %141, %87
  br label %143

143:                                              ; preds = %142, %75
  br label %144

144:                                              ; preds = %143
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %146, align 8
  store %struct.TYPE_20__* %147, %struct.TYPE_20__** %9, align 8
  br label %68

148:                                              ; preds = %44, %56, %68
  ret void
}

declare dso_local %struct.TYPE_20__* @find_section(%struct.TYPE_19__*, %struct.wildcard_list*, i32*) #1

declare dso_local i32 @walk_wild_section_general(%struct.TYPE_18__*, %struct.TYPE_19__*, i32, i8*) #1

declare dso_local i32 @walk_wild_consider_section(%struct.TYPE_18__*, %struct.TYPE_19__*, %struct.TYPE_20__*, %struct.wildcard_list*, i32, i8*) #1

declare dso_local i8* @bfd_get_section_name(%struct.TYPE_16__*, %struct.TYPE_20__*) #1

declare dso_local i32 @match_simple_wild(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
