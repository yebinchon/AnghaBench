; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_et-forest.c_et_set_father.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_et-forest.c_et_set_father.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_node = type { %struct.et_node*, %struct.et_node*, %struct.et_node*, %struct.et_node*, %struct.et_occ*, %struct.et_occ* }
%struct.et_occ = type { i64, i64, i32, %struct.et_occ* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @et_set_father(%struct.et_node* %0, %struct.et_node* %1) #0 {
  %3 = alloca %struct.et_node*, align 8
  %4 = alloca %struct.et_node*, align 8
  %5 = alloca %struct.et_node*, align 8
  %6 = alloca %struct.et_node*, align 8
  %7 = alloca %struct.et_occ*, align 8
  %8 = alloca %struct.et_occ*, align 8
  %9 = alloca %struct.et_occ*, align 8
  %10 = alloca %struct.et_occ*, align 8
  store %struct.et_node* %0, %struct.et_node** %3, align 8
  store %struct.et_node* %1, %struct.et_node** %4, align 8
  %11 = load %struct.et_node*, %struct.et_node** %4, align 8
  %12 = call %struct.et_occ* @et_new_occ(%struct.et_node* %11)
  store %struct.et_occ* %12, %struct.et_occ** %9, align 8
  %13 = load %struct.et_node*, %struct.et_node** %4, align 8
  %14 = getelementptr inbounds %struct.et_node, %struct.et_node* %13, i32 0, i32 5
  %15 = load %struct.et_occ*, %struct.et_occ** %14, align 8
  store %struct.et_occ* %15, %struct.et_occ** %7, align 8
  %16 = load %struct.et_occ*, %struct.et_occ** %7, align 8
  %17 = call i32 @et_splay(%struct.et_occ* %16)
  %18 = load %struct.et_occ*, %struct.et_occ** %7, align 8
  %19 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %18, i32 0, i32 3
  %20 = load %struct.et_occ*, %struct.et_occ** %19, align 8
  store %struct.et_occ* %20, %struct.et_occ** %8, align 8
  %21 = load %struct.et_node*, %struct.et_node** %3, align 8
  %22 = getelementptr inbounds %struct.et_node, %struct.et_node* %21, i32 0, i32 5
  %23 = load %struct.et_occ*, %struct.et_occ** %22, align 8
  store %struct.et_occ* %23, %struct.et_occ** %10, align 8
  %24 = load %struct.et_occ*, %struct.et_occ** %10, align 8
  %25 = call i32 @et_splay(%struct.et_occ* %24)
  %26 = load %struct.et_occ*, %struct.et_occ** %9, align 8
  %27 = load %struct.et_occ*, %struct.et_occ** %8, align 8
  %28 = call i32 @set_prev(%struct.et_occ* %26, %struct.et_occ* %27)
  %29 = load %struct.et_occ*, %struct.et_occ** %9, align 8
  %30 = load %struct.et_occ*, %struct.et_occ** %10, align 8
  %31 = call i32 @set_next(%struct.et_occ* %29, %struct.et_occ* %30)
  %32 = load %struct.et_occ*, %struct.et_occ** %10, align 8
  %33 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %33, align 8
  %36 = load %struct.et_occ*, %struct.et_occ** %10, align 8
  %37 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %37, align 8
  %40 = load %struct.et_occ*, %struct.et_occ** %9, align 8
  %41 = call i32 @et_recomp_min(%struct.et_occ* %40)
  %42 = load %struct.et_occ*, %struct.et_occ** %7, align 8
  %43 = load %struct.et_occ*, %struct.et_occ** %9, align 8
  %44 = call i32 @set_prev(%struct.et_occ* %42, %struct.et_occ* %43)
  %45 = load %struct.et_occ*, %struct.et_occ** %9, align 8
  %46 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.et_occ*, %struct.et_occ** %7, align 8
  %49 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = load %struct.et_occ*, %struct.et_occ** %7, align 8
  %53 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %51, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %2
  %57 = load %struct.et_occ*, %struct.et_occ** %9, align 8
  %58 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.et_occ*, %struct.et_occ** %7, align 8
  %61 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %59, %62
  %64 = load %struct.et_occ*, %struct.et_occ** %7, align 8
  %65 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load %struct.et_occ*, %struct.et_occ** %9, align 8
  %67 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.et_occ*, %struct.et_occ** %7, align 8
  %70 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %56, %2
  %72 = load %struct.et_occ*, %struct.et_occ** %9, align 8
  %73 = load %struct.et_node*, %struct.et_node** %3, align 8
  %74 = getelementptr inbounds %struct.et_node, %struct.et_node* %73, i32 0, i32 4
  store %struct.et_occ* %72, %struct.et_occ** %74, align 8
  %75 = load %struct.et_node*, %struct.et_node** %4, align 8
  %76 = load %struct.et_node*, %struct.et_node** %3, align 8
  %77 = getelementptr inbounds %struct.et_node, %struct.et_node* %76, i32 0, i32 3
  store %struct.et_node* %75, %struct.et_node** %77, align 8
  %78 = load %struct.et_node*, %struct.et_node** %4, align 8
  %79 = getelementptr inbounds %struct.et_node, %struct.et_node* %78, i32 0, i32 0
  %80 = load %struct.et_node*, %struct.et_node** %79, align 8
  store %struct.et_node* %80, %struct.et_node** %6, align 8
  %81 = load %struct.et_node*, %struct.et_node** %6, align 8
  %82 = icmp ne %struct.et_node* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %71
  %84 = load %struct.et_node*, %struct.et_node** %6, align 8
  %85 = getelementptr inbounds %struct.et_node, %struct.et_node* %84, i32 0, i32 2
  %86 = load %struct.et_node*, %struct.et_node** %85, align 8
  store %struct.et_node* %86, %struct.et_node** %5, align 8
  br label %89

87:                                               ; preds = %71
  %88 = load %struct.et_node*, %struct.et_node** %3, align 8
  store %struct.et_node* %88, %struct.et_node** %6, align 8
  store %struct.et_node* %88, %struct.et_node** %5, align 8
  br label %89

89:                                               ; preds = %87, %83
  %90 = load %struct.et_node*, %struct.et_node** %3, align 8
  %91 = load %struct.et_node*, %struct.et_node** %5, align 8
  %92 = getelementptr inbounds %struct.et_node, %struct.et_node* %91, i32 0, i32 1
  store %struct.et_node* %90, %struct.et_node** %92, align 8
  %93 = load %struct.et_node*, %struct.et_node** %3, align 8
  %94 = load %struct.et_node*, %struct.et_node** %6, align 8
  %95 = getelementptr inbounds %struct.et_node, %struct.et_node* %94, i32 0, i32 2
  store %struct.et_node* %93, %struct.et_node** %95, align 8
  %96 = load %struct.et_node*, %struct.et_node** %5, align 8
  %97 = load %struct.et_node*, %struct.et_node** %3, align 8
  %98 = getelementptr inbounds %struct.et_node, %struct.et_node* %97, i32 0, i32 2
  store %struct.et_node* %96, %struct.et_node** %98, align 8
  %99 = load %struct.et_node*, %struct.et_node** %6, align 8
  %100 = load %struct.et_node*, %struct.et_node** %3, align 8
  %101 = getelementptr inbounds %struct.et_node, %struct.et_node* %100, i32 0, i32 1
  store %struct.et_node* %99, %struct.et_node** %101, align 8
  %102 = load %struct.et_node*, %struct.et_node** %3, align 8
  %103 = load %struct.et_node*, %struct.et_node** %4, align 8
  %104 = getelementptr inbounds %struct.et_node, %struct.et_node* %103, i32 0, i32 0
  store %struct.et_node* %102, %struct.et_node** %104, align 8
  ret void
}

declare dso_local %struct.et_occ* @et_new_occ(%struct.et_node*) #1

declare dso_local i32 @et_splay(%struct.et_occ*) #1

declare dso_local i32 @set_prev(%struct.et_occ*, %struct.et_occ*) #1

declare dso_local i32 @set_next(%struct.et_occ*, %struct.et_occ*) #1

declare dso_local i32 @et_recomp_min(%struct.et_occ*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
