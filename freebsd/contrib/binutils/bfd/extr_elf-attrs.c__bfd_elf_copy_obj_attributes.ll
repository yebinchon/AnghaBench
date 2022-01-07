; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf-attrs.c__bfd_elf_copy_obj_attributes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf-attrs.c__bfd_elf_copy_obj_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64*, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__, %struct.TYPE_5__* }

@OBJ_ATTR_FIRST = common dso_local global i32 0, align 4
@OBJ_ATTR_LAST = common dso_local global i32 0, align 4
@NUM_KNOWN_OBJ_ATTRIBUTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_bfd_elf_copy_obj_attributes(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32, i32* @OBJ_ATTR_FIRST, align 4
  store i32 %10, i32* %9, align 4
  br label %11

11:                                               ; preds = %125, %2
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @OBJ_ATTR_LAST, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %128

15:                                               ; preds = %11
  %16 = load i32*, i32** %3, align 8
  %17 = call %struct.TYPE_6__** @elf_known_obj_attributes(i32* %16)
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %17, i64 %19
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i64 4
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %5, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call %struct.TYPE_6__** @elf_known_obj_attributes(i32* %23)
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %24, i64 %26
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 4
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %6, align 8
  store i32 4, i32* %8, align 4
  br label %30

30:                                               ; preds = %68, %15
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @NUM_KNOWN_OBJ_ATTRIBUTES, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %71

34:                                               ; preds = %30
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = icmp ne i64* %47, null
  br i1 %48, label %49, label %63

49:                                               ; preds = %34
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load i32*, i32** %4, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = call i64* @_bfd_elf_attr_strdup(i32* %56, i64* %59)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  store i64* %60, i64** %62, align 8
  br label %63

63:                                               ; preds = %55, %49, %34
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 1
  store %struct.TYPE_6__* %65, %struct.TYPE_6__** %5, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 1
  store %struct.TYPE_6__* %67, %struct.TYPE_6__** %6, align 8
  br label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %30

71:                                               ; preds = %30
  %72 = load i32*, i32** %3, align 8
  %73 = call %struct.TYPE_5__** @elf_other_obj_attributes(i32* %72)
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %73, i64 %75
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  store %struct.TYPE_5__* %77, %struct.TYPE_5__** %7, align 8
  br label %78

78:                                               ; preds = %120, %71
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %80 = icmp ne %struct.TYPE_5__* %79, null
  br i1 %80, label %81, label %124

81:                                               ; preds = %78
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  store %struct.TYPE_6__* %83, %struct.TYPE_6__** %5, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  switch i32 %86, label %117 [
    i32 1, label %87
    i32 2, label %97
    i32 3, label %107
  ]

87:                                               ; preds = %81
  %88 = load i32*, i32** %4, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @bfd_elf_add_obj_attr_int(i32* %88, i32 %89, i32 %92, i32 %95)
  br label %119

97:                                               ; preds = %81
  %98 = load i32*, i32** %4, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i64*, i64** %104, align 8
  %106 = call i32 @bfd_elf_add_obj_attr_string(i32* %98, i32 %99, i32 %102, i64* %105)
  br label %119

107:                                              ; preds = %81
  %108 = load i32*, i32** %4, align 8
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i64*, i64** %114, align 8
  %116 = call i32 @bfd_elf_add_obj_attr_compat(i32* %108, i32 %109, i32 %112, i64* %115)
  br label %119

117:                                              ; preds = %81
  %118 = call i32 (...) @abort() #3
  unreachable

119:                                              ; preds = %107, %97, %87
  br label %120

120:                                              ; preds = %119
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  store %struct.TYPE_5__* %123, %struct.TYPE_5__** %7, align 8
  br label %78

124:                                              ; preds = %78
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %11

128:                                              ; preds = %11
  ret void
}

declare dso_local %struct.TYPE_6__** @elf_known_obj_attributes(i32*) #1

declare dso_local i64* @_bfd_elf_attr_strdup(i32*, i64*) #1

declare dso_local %struct.TYPE_5__** @elf_other_obj_attributes(i32*) #1

declare dso_local i32 @bfd_elf_add_obj_attr_int(i32*, i32, i32, i32) #1

declare dso_local i32 @bfd_elf_add_obj_attr_string(i32*, i32, i32, i64*) #1

declare dso_local i32 @bfd_elf_add_obj_attr_compat(i32*, i32, i32, i64*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
