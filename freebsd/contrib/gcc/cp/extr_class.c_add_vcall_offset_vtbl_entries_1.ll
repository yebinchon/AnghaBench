; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_add_vcall_offset_vtbl_entries_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_add_vcall_offset_vtbl_entries_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.TYPE_4__*)* @add_vcall_offset_vtbl_entries_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_vcall_offset_vtbl_entries_1(i64 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %12 = call i64 @abi_version_at_least(i32 2)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %2
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @BINFO_TYPE(i64 %15)
  %17 = call i64 @TYPE_METHODS(i32 %16)
  store i64 %17, i64* %5, align 8
  br label %18

18:                                               ; preds = %31, %14
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @DECL_VINDEX(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* %3, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = call i32 @add_vcall_offset(i64 %26, i64 %27, %struct.TYPE_4__* %28)
  br label %30

30:                                               ; preds = %25, %21
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %5, align 8
  %33 = call i64 @TREE_CHAIN(i64 %32)
  store i64 %33, i64* %5, align 8
  br label %18

34:                                               ; preds = %18
  br label %112

35:                                               ; preds = %2
  %36 = load i64, i64* %3, align 8
  store i64 %36, i64* %9, align 8
  br label %37

37:                                               ; preds = %64, %35
  %38 = load i64, i64* %9, align 8
  %39 = call i64 @BINFO_INHERITANCE_CHAIN(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %37
  %42 = load i64, i64* %9, align 8
  %43 = call i64 @BINFO_VIRTUAL_P(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @gcc_assert(i32 %51)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %9, align 8
  br label %66

56:                                               ; preds = %41
  %57 = load i64, i64* %9, align 8
  %58 = call i64 @BINFO_INHERITANCE_CHAIN(i64 %57)
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %10, align 8
  %60 = call i64 @get_primary_binfo(i64 %59)
  %61 = load i64, i64* %9, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %66

64:                                               ; preds = %56
  %65 = load i64, i64* %10, align 8
  store i64 %65, i64* %9, align 8
  br label %37

66:                                               ; preds = %63, %45, %37
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load i64, i64* %9, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @original_binfo(i64 %72, i32 %75)
  store i64 %76, i64* %9, align 8
  br label %77

77:                                               ; preds = %71, %66
  %78 = load i64, i64* %3, align 8
  %79 = call i64 @BINFO_VIRTUALS(i64 %78)
  store i64 %79, i64* %7, align 8
  %80 = load i64, i64* %9, align 8
  %81 = call i64 @BINFO_VIRTUALS(i64 %80)
  store i64 %81, i64* %6, align 8
  %82 = load i64, i64* %3, align 8
  %83 = call i32 @BINFO_TYPE(i64 %82)
  %84 = call i64 @TYPE_BINFO(i32 %83)
  %85 = call i64 @BINFO_VIRTUALS(i64 %84)
  store i64 %85, i64* %8, align 8
  br label %86

86:                                               ; preds = %104, %77
  %87 = load i64, i64* %7, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %111

89:                                               ; preds = %86
  %90 = load i64, i64* %8, align 8
  %91 = call i64 @BV_FN(i64 %90)
  store i64 %91, i64* %11, align 8
  %92 = load i64, i64* %3, align 8
  %93 = call i32 @BINFO_TYPE(i64 %92)
  %94 = load i64, i64* %11, align 8
  %95 = call i32 @DECL_CONTEXT(i64 %94)
  %96 = call i32 @SAME_BINFO_TYPE_P(i32 %93, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %89
  br label %104

99:                                               ; preds = %89
  %100 = load i64, i64* %11, align 8
  %101 = load i64, i64* %3, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %103 = call i32 @add_vcall_offset(i64 %100, i64 %101, %struct.TYPE_4__* %102)
  br label %104

104:                                              ; preds = %99, %98
  %105 = load i64, i64* %7, align 8
  %106 = call i64 @TREE_CHAIN(i64 %105)
  store i64 %106, i64* %7, align 8
  %107 = load i64, i64* %6, align 8
  %108 = call i64 @TREE_CHAIN(i64 %107)
  store i64 %108, i64* %6, align 8
  %109 = load i64, i64* %8, align 8
  %110 = call i64 @TREE_CHAIN(i64 %109)
  store i64 %110, i64* %8, align 8
  br label %86

111:                                              ; preds = %86
  br label %112

112:                                              ; preds = %111, %34
  ret void
}

declare dso_local i64 @abi_version_at_least(i32) #1

declare dso_local i64 @TYPE_METHODS(i32) #1

declare dso_local i32 @BINFO_TYPE(i64) #1

declare dso_local i64 @DECL_VINDEX(i64) #1

declare dso_local i32 @add_vcall_offset(i64, i64, %struct.TYPE_4__*) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @BINFO_INHERITANCE_CHAIN(i64) #1

declare dso_local i64 @BINFO_VIRTUAL_P(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @get_primary_binfo(i64) #1

declare dso_local i64 @original_binfo(i64, i32) #1

declare dso_local i64 @BINFO_VIRTUALS(i64) #1

declare dso_local i64 @TYPE_BINFO(i32) #1

declare dso_local i64 @BV_FN(i64) #1

declare dso_local i32 @SAME_BINFO_TYPE_P(i32, i32) #1

declare dso_local i32 @DECL_CONTEXT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
