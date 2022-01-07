; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldctor.c_ldctor_add_set_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldctor.c_ldctor_add_set_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.set_info = type { i64, i64, %struct.set_element*, %struct.bfd_link_hash_entry*, %struct.set_info* }
%struct.set_element = type { i8*, %struct.set_element*, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.bfd_link_hash_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@sets = common dso_local global %struct.set_info* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"%P%X: Different relocs used in set %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"%P%X: Different object file formats composing set %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ldctor_add_set_entry(%struct.bfd_link_hash_entry* %0, i64 %1, i8* %2, %struct.TYPE_5__* %3, i32 %4) #0 {
  %6 = alloca %struct.bfd_link_hash_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.set_info*, align 8
  %12 = alloca %struct.set_element*, align 8
  %13 = alloca %struct.set_element**, align 8
  store %struct.bfd_link_hash_entry* %0, %struct.bfd_link_hash_entry** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.set_info*, %struct.set_info** @sets, align 8
  store %struct.set_info* %14, %struct.set_info** %11, align 8
  br label %15

15:                                               ; preds = %26, %5
  %16 = load %struct.set_info*, %struct.set_info** %11, align 8
  %17 = icmp ne %struct.set_info* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load %struct.set_info*, %struct.set_info** %11, align 8
  %20 = getelementptr inbounds %struct.set_info, %struct.set_info* %19, i32 0, i32 3
  %21 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %20, align 8
  %22 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %6, align 8
  %23 = icmp eq %struct.bfd_link_hash_entry* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %30

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.set_info*, %struct.set_info** %11, align 8
  %28 = getelementptr inbounds %struct.set_info, %struct.set_info* %27, i32 0, i32 4
  %29 = load %struct.set_info*, %struct.set_info** %28, align 8
  store %struct.set_info* %29, %struct.set_info** %11, align 8
  br label %15

30:                                               ; preds = %24, %15
  %31 = load %struct.set_info*, %struct.set_info** %11, align 8
  %32 = icmp eq %struct.set_info* %31, null
  br i1 %32, label %33, label %50

33:                                               ; preds = %30
  %34 = call i8* @xmalloc(i32 40)
  %35 = bitcast i8* %34 to %struct.set_info*
  store %struct.set_info* %35, %struct.set_info** %11, align 8
  %36 = load %struct.set_info*, %struct.set_info** @sets, align 8
  %37 = load %struct.set_info*, %struct.set_info** %11, align 8
  %38 = getelementptr inbounds %struct.set_info, %struct.set_info* %37, i32 0, i32 4
  store %struct.set_info* %36, %struct.set_info** %38, align 8
  %39 = load %struct.set_info*, %struct.set_info** %11, align 8
  store %struct.set_info* %39, %struct.set_info** @sets, align 8
  %40 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %6, align 8
  %41 = load %struct.set_info*, %struct.set_info** %11, align 8
  %42 = getelementptr inbounds %struct.set_info, %struct.set_info* %41, i32 0, i32 3
  store %struct.bfd_link_hash_entry* %40, %struct.bfd_link_hash_entry** %42, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.set_info*, %struct.set_info** %11, align 8
  %45 = getelementptr inbounds %struct.set_info, %struct.set_info* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.set_info*, %struct.set_info** %11, align 8
  %47 = getelementptr inbounds %struct.set_info, %struct.set_info* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.set_info*, %struct.set_info** %11, align 8
  %49 = getelementptr inbounds %struct.set_info, %struct.set_info* %48, i32 0, i32 2
  store %struct.set_element* null, %struct.set_element** %49, align 8
  br label %105

50:                                               ; preds = %30
  %51 = load %struct.set_info*, %struct.set_info** %11, align 8
  %52 = getelementptr inbounds %struct.set_info, %struct.set_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %6, align 8
  %59 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @einfo(i32 %57, i32 %61)
  br label %137

63:                                               ; preds = %50
  %64 = load %struct.set_info*, %struct.set_info** %11, align 8
  %65 = getelementptr inbounds %struct.set_info, %struct.set_info* %64, i32 0, i32 2
  %66 = load %struct.set_element*, %struct.set_element** %65, align 8
  %67 = icmp ne %struct.set_element* %66, null
  br i1 %67, label %68, label %104

68:                                               ; preds = %63
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %104

73:                                               ; preds = %68
  %74 = load %struct.set_info*, %struct.set_info** %11, align 8
  %75 = getelementptr inbounds %struct.set_info, %struct.set_info* %74, i32 0, i32 2
  %76 = load %struct.set_element*, %struct.set_element** %75, align 8
  %77 = getelementptr inbounds %struct.set_element, %struct.set_element* %76, i32 0, i32 3
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %104

82:                                               ; preds = %73
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @bfd_get_target(i32* %85)
  %87 = load %struct.set_info*, %struct.set_info** %11, align 8
  %88 = getelementptr inbounds %struct.set_info, %struct.set_info* %87, i32 0, i32 2
  %89 = load %struct.set_element*, %struct.set_element** %88, align 8
  %90 = getelementptr inbounds %struct.set_element, %struct.set_element* %89, i32 0, i32 3
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @bfd_get_target(i32* %93)
  %95 = call i64 @strcmp(i32 %86, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %82
  %98 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %99 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %6, align 8
  %100 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @einfo(i32 %98, i32 %102)
  br label %137

104:                                              ; preds = %82, %73, %68, %63
  br label %105

105:                                              ; preds = %104, %33
  %106 = call i8* @xmalloc(i32 32)
  %107 = bitcast i8* %106 to %struct.set_element*
  store %struct.set_element* %107, %struct.set_element** %12, align 8
  %108 = load %struct.set_element*, %struct.set_element** %12, align 8
  %109 = getelementptr inbounds %struct.set_element, %struct.set_element* %108, i32 0, i32 1
  store %struct.set_element* null, %struct.set_element** %109, align 8
  %110 = load i8*, i8** %8, align 8
  %111 = load %struct.set_element*, %struct.set_element** %12, align 8
  %112 = getelementptr inbounds %struct.set_element, %struct.set_element* %111, i32 0, i32 0
  store i8* %110, i8** %112, align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %114 = load %struct.set_element*, %struct.set_element** %12, align 8
  %115 = getelementptr inbounds %struct.set_element, %struct.set_element* %114, i32 0, i32 3
  store %struct.TYPE_5__* %113, %struct.TYPE_5__** %115, align 8
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.set_element*, %struct.set_element** %12, align 8
  %118 = getelementptr inbounds %struct.set_element, %struct.set_element* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  %119 = load %struct.set_info*, %struct.set_info** %11, align 8
  %120 = getelementptr inbounds %struct.set_info, %struct.set_info* %119, i32 0, i32 2
  store %struct.set_element** %120, %struct.set_element*** %13, align 8
  br label %121

121:                                              ; preds = %126, %105
  %122 = load %struct.set_element**, %struct.set_element*** %13, align 8
  %123 = load %struct.set_element*, %struct.set_element** %122, align 8
  %124 = icmp ne %struct.set_element* %123, null
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  br label %126

126:                                              ; preds = %125
  %127 = load %struct.set_element**, %struct.set_element*** %13, align 8
  %128 = load %struct.set_element*, %struct.set_element** %127, align 8
  %129 = getelementptr inbounds %struct.set_element, %struct.set_element* %128, i32 0, i32 1
  store %struct.set_element** %129, %struct.set_element*** %13, align 8
  br label %121

130:                                              ; preds = %121
  %131 = load %struct.set_element*, %struct.set_element** %12, align 8
  %132 = load %struct.set_element**, %struct.set_element*** %13, align 8
  store %struct.set_element* %131, %struct.set_element** %132, align 8
  %133 = load %struct.set_info*, %struct.set_info** %11, align 8
  %134 = getelementptr inbounds %struct.set_info, %struct.set_info* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, 1
  store i64 %136, i64* %134, align 8
  br label %137

137:                                              ; preds = %130, %97, %56
  ret void
}

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @einfo(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @bfd_get_target(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
