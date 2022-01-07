; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-sra.c_lookup_element.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-sra.c_lookup_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sra_elt = type { i32, i32, %struct.sra_elt*, %struct.sra_elt*, %struct.sra_elt*, i8*, i32, i8*, %struct.sra_elt* }

@sra_map = common dso_local global i32 0, align 4
@NO_INSERT = common dso_local global i32 0, align 4
@INSERT = common dso_local global i32 0, align 4
@sra_obstack = common dso_local global i32 0, align 4
@PARM_DECL = common dso_local global i64 0, align 8
@needs_copy_in = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sra_elt* (%struct.sra_elt*, i8*, i8*, i32)* @lookup_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sra_elt* @lookup_element(%struct.sra_elt* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.sra_elt*, align 8
  %6 = alloca %struct.sra_elt*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sra_elt, align 8
  %11 = alloca %struct.sra_elt**, align 8
  %12 = alloca %struct.sra_elt*, align 8
  store %struct.sra_elt* %0, %struct.sra_elt** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.sra_elt*, %struct.sra_elt** %6, align 8
  %14 = icmp ne %struct.sra_elt* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %4
  %16 = load %struct.sra_elt*, %struct.sra_elt** %6, align 8
  %17 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.sra_elt*, %struct.sra_elt** %6, align 8
  %22 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %21, i32 0, i32 8
  %23 = load %struct.sra_elt*, %struct.sra_elt** %22, align 8
  br label %26

24:                                               ; preds = %15
  %25 = load %struct.sra_elt*, %struct.sra_elt** %6, align 8
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi %struct.sra_elt* [ %23, %20 ], [ %25, %24 ]
  %28 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %10, i32 0, i32 8
  store %struct.sra_elt* %27, %struct.sra_elt** %28, align 8
  br label %31

29:                                               ; preds = %4
  %30 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %10, i32 0, i32 8
  store %struct.sra_elt* null, %struct.sra_elt** %30, align 8
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %10, i32 0, i32 5
  store i8* %32, i8** %33, align 8
  %34 = load i32, i32* @sra_map, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i64 @htab_find_slot(i32 %34, %struct.sra_elt* %10, i32 %35)
  %37 = inttoptr i64 %36 to %struct.sra_elt**
  store %struct.sra_elt** %37, %struct.sra_elt*** %11, align 8
  %38 = load %struct.sra_elt**, %struct.sra_elt*** %11, align 8
  %39 = icmp ne %struct.sra_elt** %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %31
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @NO_INSERT, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store %struct.sra_elt* null, %struct.sra_elt** %5, align 8
  br label %116

45:                                               ; preds = %40, %31
  %46 = load %struct.sra_elt**, %struct.sra_elt*** %11, align 8
  %47 = load %struct.sra_elt*, %struct.sra_elt** %46, align 8
  store %struct.sra_elt* %47, %struct.sra_elt** %12, align 8
  %48 = load %struct.sra_elt*, %struct.sra_elt** %12, align 8
  %49 = icmp ne %struct.sra_elt* %48, null
  br i1 %49, label %114, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @INSERT, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %114

54:                                               ; preds = %50
  %55 = call %struct.sra_elt* @obstack_alloc(i32* @sra_obstack, i32 64)
  store %struct.sra_elt* %55, %struct.sra_elt** %12, align 8
  %56 = load %struct.sra_elt**, %struct.sra_elt*** %11, align 8
  store %struct.sra_elt* %55, %struct.sra_elt** %56, align 8
  %57 = load %struct.sra_elt*, %struct.sra_elt** %12, align 8
  %58 = call i32 @memset(%struct.sra_elt* %57, i32 0, i32 64)
  %59 = load %struct.sra_elt*, %struct.sra_elt** %6, align 8
  %60 = load %struct.sra_elt*, %struct.sra_elt** %12, align 8
  %61 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %60, i32 0, i32 8
  store %struct.sra_elt* %59, %struct.sra_elt** %61, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load %struct.sra_elt*, %struct.sra_elt** %12, align 8
  %64 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %63, i32 0, i32 5
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load %struct.sra_elt*, %struct.sra_elt** %12, align 8
  %67 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %66, i32 0, i32 7
  store i8* %65, i8** %67, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @is_sra_scalar_type(i8* %68)
  %70 = load %struct.sra_elt*, %struct.sra_elt** %12, align 8
  %71 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %70, i32 0, i32 6
  store i32 %69, i32* %71, align 8
  %72 = load %struct.sra_elt*, %struct.sra_elt** %6, align 8
  %73 = icmp ne %struct.sra_elt* %72, null
  br i1 %73, label %74, label %101

74:                                               ; preds = %54
  %75 = load %struct.sra_elt*, %struct.sra_elt** %12, align 8
  %76 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %75, i32 0, i32 5
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @IS_ELEMENT_FOR_GROUP(i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %74
  %81 = load %struct.sra_elt*, %struct.sra_elt** %12, align 8
  %82 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  %83 = load %struct.sra_elt*, %struct.sra_elt** %6, align 8
  %84 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %83, i32 0, i32 4
  %85 = load %struct.sra_elt*, %struct.sra_elt** %84, align 8
  %86 = load %struct.sra_elt*, %struct.sra_elt** %12, align 8
  %87 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %86, i32 0, i32 3
  store %struct.sra_elt* %85, %struct.sra_elt** %87, align 8
  %88 = load %struct.sra_elt*, %struct.sra_elt** %12, align 8
  %89 = load %struct.sra_elt*, %struct.sra_elt** %6, align 8
  %90 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %89, i32 0, i32 4
  store %struct.sra_elt* %88, %struct.sra_elt** %90, align 8
  br label %100

91:                                               ; preds = %74
  %92 = load %struct.sra_elt*, %struct.sra_elt** %6, align 8
  %93 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %92, i32 0, i32 2
  %94 = load %struct.sra_elt*, %struct.sra_elt** %93, align 8
  %95 = load %struct.sra_elt*, %struct.sra_elt** %12, align 8
  %96 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %95, i32 0, i32 3
  store %struct.sra_elt* %94, %struct.sra_elt** %96, align 8
  %97 = load %struct.sra_elt*, %struct.sra_elt** %12, align 8
  %98 = load %struct.sra_elt*, %struct.sra_elt** %6, align 8
  %99 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %98, i32 0, i32 2
  store %struct.sra_elt* %97, %struct.sra_elt** %99, align 8
  br label %100

100:                                              ; preds = %91, %80
  br label %101

101:                                              ; preds = %100, %54
  %102 = load i8*, i8** %7, align 8
  %103 = call i64 @TREE_CODE(i8* %102)
  %104 = load i64, i64* @PARM_DECL, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load %struct.sra_elt*, %struct.sra_elt** %12, align 8
  %108 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %107, i32 0, i32 1
  store i32 1, i32* %108, align 4
  %109 = load i32, i32* @needs_copy_in, align 4
  %110 = load i8*, i8** %7, align 8
  %111 = call i32 @DECL_UID(i8* %110)
  %112 = call i32 @bitmap_set_bit(i32 %109, i32 %111)
  br label %113

113:                                              ; preds = %106, %101
  br label %114

114:                                              ; preds = %113, %50, %45
  %115 = load %struct.sra_elt*, %struct.sra_elt** %12, align 8
  store %struct.sra_elt* %115, %struct.sra_elt** %5, align 8
  br label %116

116:                                              ; preds = %114, %44
  %117 = load %struct.sra_elt*, %struct.sra_elt** %5, align 8
  ret %struct.sra_elt* %117
}

declare dso_local i64 @htab_find_slot(i32, %struct.sra_elt*, i32) #1

declare dso_local %struct.sra_elt* @obstack_alloc(i32*, i32) #1

declare dso_local i32 @memset(%struct.sra_elt*, i32, i32) #1

declare dso_local i32 @is_sra_scalar_type(i8*) #1

declare dso_local i64 @IS_ELEMENT_FOR_GROUP(i8*) #1

declare dso_local i64 @TREE_CODE(i8*) #1

declare dso_local i32 @bitmap_set_bit(i32, i32) #1

declare dso_local i32 @DECL_UID(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
