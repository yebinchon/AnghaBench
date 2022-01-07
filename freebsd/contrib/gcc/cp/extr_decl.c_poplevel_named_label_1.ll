; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_poplevel_named_label_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_poplevel_named_label_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.named_label_entry = type { i32, i32, i32, %struct.named_label_use_entry*, i64, %struct.cp_binding_level*, i32 }
%struct.named_label_use_entry = type { i32, i64, %struct.cp_binding_level*, %struct.named_label_use_entry* }
%struct.cp_binding_level = type { i32, i64, %struct.cp_binding_level* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*)* @poplevel_named_label_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poplevel_named_label_1(i8** %0, i8* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.named_label_entry*, align 8
  %6 = alloca %struct.cp_binding_level*, align 8
  %7 = alloca %struct.cp_binding_level*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.named_label_use_entry*, align 8
  store i8** %0, i8*** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8**, i8*** %3, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = bitcast i8* %11 to %struct.named_label_entry*
  store %struct.named_label_entry* %12, %struct.named_label_entry** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.cp_binding_level*
  store %struct.cp_binding_level* %14, %struct.cp_binding_level** %6, align 8
  %15 = load %struct.cp_binding_level*, %struct.cp_binding_level** %6, align 8
  %16 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %15, i32 0, i32 2
  %17 = load %struct.cp_binding_level*, %struct.cp_binding_level** %16, align 8
  store %struct.cp_binding_level* %17, %struct.cp_binding_level** %7, align 8
  %18 = load %struct.named_label_entry*, %struct.named_label_entry** %5, align 8
  %19 = getelementptr inbounds %struct.named_label_entry, %struct.named_label_entry* %18, i32 0, i32 5
  %20 = load %struct.cp_binding_level*, %struct.cp_binding_level** %19, align 8
  %21 = load %struct.cp_binding_level*, %struct.cp_binding_level** %6, align 8
  %22 = icmp eq %struct.cp_binding_level* %20, %21
  br i1 %22, label %23, label %69

23:                                               ; preds = %2
  %24 = load %struct.named_label_entry*, %struct.named_label_entry** %5, align 8
  %25 = getelementptr inbounds %struct.named_label_entry, %struct.named_label_entry* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %8, align 8
  br label %27

27:                                               ; preds = %43, %23
  %28 = load i64, i64* %8, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %27
  %31 = load i64, i64* %8, align 8
  %32 = call i64 @decl_jump_unsafe(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load i64, i64* %8, align 8
  %36 = load %struct.named_label_entry*, %struct.named_label_entry** %5, align 8
  %37 = getelementptr inbounds %struct.named_label_entry, %struct.named_label_entry* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @tree_cons(i32* null, i64 %35, i32 %38)
  %40 = load %struct.named_label_entry*, %struct.named_label_entry** %5, align 8
  %41 = getelementptr inbounds %struct.named_label_entry, %struct.named_label_entry* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %34, %30
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %8, align 8
  %45 = call i64 @TREE_CHAIN(i64 %44)
  store i64 %45, i64* %8, align 8
  br label %27

46:                                               ; preds = %27
  %47 = load %struct.cp_binding_level*, %struct.cp_binding_level** %7, align 8
  %48 = load %struct.named_label_entry*, %struct.named_label_entry** %5, align 8
  %49 = getelementptr inbounds %struct.named_label_entry, %struct.named_label_entry* %48, i32 0, i32 5
  store %struct.cp_binding_level* %47, %struct.cp_binding_level** %49, align 8
  %50 = load %struct.cp_binding_level*, %struct.cp_binding_level** %7, align 8
  %51 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.named_label_entry*, %struct.named_label_entry** %5, align 8
  %54 = getelementptr inbounds %struct.named_label_entry, %struct.named_label_entry* %53, i32 0, i32 4
  store i64 %52, i64* %54, align 8
  %55 = load %struct.cp_binding_level*, %struct.cp_binding_level** %6, align 8
  %56 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  switch i32 %57, label %67 [
    i32 128, label %58
    i32 130, label %61
    i32 129, label %64
  ]

58:                                               ; preds = %46
  %59 = load %struct.named_label_entry*, %struct.named_label_entry** %5, align 8
  %60 = getelementptr inbounds %struct.named_label_entry, %struct.named_label_entry* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  br label %68

61:                                               ; preds = %46
  %62 = load %struct.named_label_entry*, %struct.named_label_entry** %5, align 8
  %63 = getelementptr inbounds %struct.named_label_entry, %struct.named_label_entry* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  br label %68

64:                                               ; preds = %46
  %65 = load %struct.named_label_entry*, %struct.named_label_entry** %5, align 8
  %66 = getelementptr inbounds %struct.named_label_entry, %struct.named_label_entry* %65, i32 0, i32 2
  store i32 1, i32* %66, align 8
  br label %68

67:                                               ; preds = %46
  br label %68

68:                                               ; preds = %67, %64, %61, %58
  br label %111

69:                                               ; preds = %2
  %70 = load %struct.named_label_entry*, %struct.named_label_entry** %5, align 8
  %71 = getelementptr inbounds %struct.named_label_entry, %struct.named_label_entry* %70, i32 0, i32 3
  %72 = load %struct.named_label_use_entry*, %struct.named_label_use_entry** %71, align 8
  %73 = icmp ne %struct.named_label_use_entry* %72, null
  br i1 %73, label %74, label %110

74:                                               ; preds = %69
  %75 = load %struct.named_label_entry*, %struct.named_label_entry** %5, align 8
  %76 = getelementptr inbounds %struct.named_label_entry, %struct.named_label_entry* %75, i32 0, i32 3
  %77 = load %struct.named_label_use_entry*, %struct.named_label_use_entry** %76, align 8
  store %struct.named_label_use_entry* %77, %struct.named_label_use_entry** %9, align 8
  br label %78

78:                                               ; preds = %105, %74
  %79 = load %struct.named_label_use_entry*, %struct.named_label_use_entry** %9, align 8
  %80 = icmp ne %struct.named_label_use_entry* %79, null
  br i1 %80, label %81, label %109

81:                                               ; preds = %78
  %82 = load %struct.named_label_use_entry*, %struct.named_label_use_entry** %9, align 8
  %83 = getelementptr inbounds %struct.named_label_use_entry, %struct.named_label_use_entry* %82, i32 0, i32 2
  %84 = load %struct.cp_binding_level*, %struct.cp_binding_level** %83, align 8
  %85 = load %struct.cp_binding_level*, %struct.cp_binding_level** %6, align 8
  %86 = icmp eq %struct.cp_binding_level* %84, %85
  br i1 %86, label %87, label %104

87:                                               ; preds = %81
  %88 = load %struct.cp_binding_level*, %struct.cp_binding_level** %7, align 8
  %89 = load %struct.named_label_use_entry*, %struct.named_label_use_entry** %9, align 8
  %90 = getelementptr inbounds %struct.named_label_use_entry, %struct.named_label_use_entry* %89, i32 0, i32 2
  store %struct.cp_binding_level* %88, %struct.cp_binding_level** %90, align 8
  %91 = load %struct.cp_binding_level*, %struct.cp_binding_level** %7, align 8
  %92 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.named_label_use_entry*, %struct.named_label_use_entry** %9, align 8
  %95 = getelementptr inbounds %struct.named_label_use_entry, %struct.named_label_use_entry* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  %96 = load %struct.cp_binding_level*, %struct.cp_binding_level** %6, align 8
  %97 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %98, 129
  br i1 %99, label %100, label %103

100:                                              ; preds = %87
  %101 = load %struct.named_label_use_entry*, %struct.named_label_use_entry** %9, align 8
  %102 = getelementptr inbounds %struct.named_label_use_entry, %struct.named_label_use_entry* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  br label %103

103:                                              ; preds = %100, %87
  br label %104

104:                                              ; preds = %103, %81
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.named_label_use_entry*, %struct.named_label_use_entry** %9, align 8
  %107 = getelementptr inbounds %struct.named_label_use_entry, %struct.named_label_use_entry* %106, i32 0, i32 3
  %108 = load %struct.named_label_use_entry*, %struct.named_label_use_entry** %107, align 8
  store %struct.named_label_use_entry* %108, %struct.named_label_use_entry** %9, align 8
  br label %78

109:                                              ; preds = %78
  br label %110

110:                                              ; preds = %109, %69
  br label %111

111:                                              ; preds = %110, %68
  ret i32 1
}

declare dso_local i64 @decl_jump_unsafe(i64) #1

declare dso_local i32 @tree_cons(i32*, i64, i32) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
